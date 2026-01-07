#!/usr/bin/env zsh
set -euo pipefail

# ============================================================
# FinOps ingest: rename + move pay statements + tax docs
#
# Default: DRY RUN
# Apply:   ./ingest_docs.zsh --apply
#
# Run from directory containing:
#   finance-operations/
#   PayStatementDownload/
#   TaxRelated/
# ============================================================

APPLY=0
if [[ "${1:-}" == "--apply" ]]; then
  APPLY=1
fi

ROOT_DIR="$(pwd)"
REPO_DIR="${ROOT_DIR}/finance-operations"

PAY_SRC="${ROOT_DIR}/PayStatementDownload"
TAX_SRC="${ROOT_DIR}/TaxRelated"

PAY_DEST_BASE="${REPO_DIR}/Personal/payroll/paystubs/phase2"
RETURNS_DEST_BASE="${REPO_DIR}/Personal/taxes/returns"

[[ -d "$REPO_DIR" ]] || { print -u2 "ERROR: repo dir not found: $REPO_DIR"; exit 1; }
[[ -d "$PAY_SRC"  ]] || { print -u2 "ERROR: PayStatementDownload not found: $PAY_SRC"; exit 1; }
[[ -d "$TAX_SRC"  ]] || { print -u2 "ERROR: TaxRelated not found: $TAX_SRC"; exit 1; }

do_mkdir_p() {
  local d="$1"
  if [[ -d "$d" ]]; then return 0; fi
  if (( APPLY )); then
    mkdir -p "$d"
  else
    print "DRYRUN: mkdir -p ${(q)d}"
  fi
}

do_mv() {
  local src="$1"
  local dest="$2"
  local dest_dir
  dest_dir="$(dirname "$dest")"
  do_mkdir_p "$dest_dir"

  if [[ -e "$dest" ]]; then
    print -u2 "SKIP (exists): $(basename "$src") -> $dest"
    return 0
  fi

  if (( APPLY )); then
    mv -n "$src" "$dest"
    print "MOVED: $(basename "$src") -> $dest"
  else
    print "DRYRUN: mv -n ${(q)src} ${(q)dest}"
  fi
}

print "\n== Pay statements =="

export PAY_SRC PAY_DEST_BASE
python3 - <<'PY' | while IFS=$'\t' read -r src dest; do
import os, pathlib, re

pay_src = pathlib.Path(os.environ["PAY_SRC"])
pay_dest_base = pathlib.Path(os.environ["PAY_DEST_BASE"])

pat = re.compile(r"^Pay Date (\d{4}-\d{2}-\d{2})\.pdf$")

for p in sorted(pay_src.glob("*.pdf")):
    m = pat.match(p.name)
    if not m:
        print(f"SKIP\t{p}")
        continue
    date = m.group(1)
    year = date[:4]
    dest = pay_dest_base / year / f"{date}-pay-statement.pdf"
    print(f"{p}\t{dest}")
PY
  if [[ "$src" == "SKIP" ]]; then
    print -u2 "SKIP (unmatched pay filename): $(basename "$dest")"
  else
    do_mv "$src" "$dest"
  fi
done

print "\n== Tax related =="

export TAX_SRC RETURNS_DEST_BASE
python3 - <<'PY' | while IFS=$'\t' read -r src dest; do
import os, pathlib, re, unicodedata

tax_src = pathlib.Path(os.environ["TAX_SRC"])
returns_base = pathlib.Path(os.environ["RETURNS_DEST_BASE"])

def norm(s: str) -> str:
    return unicodedata.normalize("NFKC", s)

w2_pat = re.compile(r"^(\d{4}) W2\.pdf$", re.IGNORECASE)
# Match "YYYY 1095-C.pdf" where dash might be hyphen-like unicode
c1095_pat = re.compile(r"^(\d{4}) 1095[\-\u2010\u2011\u2012\u2013\u2212]C\.pdf$", re.IGNORECASE)

for p in sorted(tax_src.glob("*.pdf")):
    n = norm(p.name)

    m = w2_pat.match(n)
    if m:
        year = m.group(1)
        dest = returns_base / year / f"{year}-phase2-w2.pdf"
        print(f"{p}\t{dest}")
        continue

    m = c1095_pat.match(n)
    if m:
        year = m.group(1)
        dest = returns_base / year / f"{year}-phase2-1095-c.pdf"
        print(f"{p}\t{dest}")
        continue

    print(f"SKIP\t{p}")
PY
  if [[ "$src" == "SKIP" ]]; then
    print -u2 "SKIP (unmatched tax filename): $(basename "$dest")"
  else
    do_mv "$src" "$dest"
  fi
done

print "\n== Done =="
if (( APPLY )); then
  print "Applied changes."
else
  print "Dry run only. Re-run with: ./ingest_docs.zsh --apply"
fi

