# 💳 Billing, Credit Cards & Autopay Control Panel

_Last updated: 2025-12-22_

This document is the authoritative source of truth for all recurring bills, credit cards, and autopay configurations.  
Primary goals: zero missed payments, minimal manual intervention, clear audit trail.

---

## 🏦 Primary Pay-From Hub

**Institution:** Fidelity Investments, partnering with UMB Bank  
**Account Type:** Checking  
**Routing:** …5681  
**Account Reference:** …1515  

**Used for:**
- Payroll direct deposit
- Credit card autopay
- Utilities and services
- Rent (pending verification)

---

## 🔍 Quick Status & Next Actions

### Credit Cards

| Account | Autopay | Pay From (Last 4) | Bank | Draft Date | Status | Next Action |
|---|---:|---|---|---|---|---|
| Barclays View | ✅ | 1515 | Fidelity | 8 days before due | ⚠️ Alert | Call support |
| PNC Visa Card      | ⚠️ | 1515 | Fidelity | TBD | ⚠️ Pending | Finish verification |
| Exxon Mobil (Citi) | ⚠️ | 1515 | Fidelity | TBD | ⚠️ Pending | Finish verification |
| NASA FCU Visa      | ⚠️ | 1515 | Fidelity | TBD | ⚠️ Pending | Finish verification |
| Amex Platinum | ✅ | 1515 | Fidelity | 15 days post-close | ✅ OK | None |
| CapitalOne Quicksilver One 6062 | ✅ | 1515 | Fidelity | 14th | ✅ OK | None |
| CapitalOne Quicksilver | ✅ | 1515 | Fidelity | 8th | ✅ OK | None |8th | ✅ OK | None |
| Discover | ✅ | 1515 | Fidelity | 10th | ✅ OK | None |
| Synchrony Amazon Store | ✅ | 1515 | Fidelity | 28th | ✅ OK | None |
| Apple Card | ✅ | 1515 | Fidelity | 23rd | ✅ OK | None |

### Monthly Bills

| Account | Autopay | Pay From (Last 4) | Bank | Draft Date | Status | Next Action |
|---|---:|---|---|---|---|---|
| Jasper Rent (Bilt) | ⚠️ | 1515 | Fidelity | TBD | ⚠️ Pending | Finish verification |
| Verizon Fios | ✅ | 1515 | Fidelity | 8th | ✅ OK | None |
| Dominion Energy | ✅ | 1515 | Fidelity | Due date | ✅ OK | Monitor first bill |
| Xfinity Mobile | ✅ | Amex 6008 | American Express | 1st | ✅ OK | None |
| State Farm (Auto + Renters) | ✅ | Amex 6008 | American Express | 1st | ✅ OK | None |


---

## 🧭 Action Queue

- [ ] Jasper Rent — finish micro-deposit verification, enable autopay
- [ ] Exxon Mobil — finish verification, confirm autopay behavior
- [ ] PNC — confirm Fidelity CMA trial deposits
- [ ] Capital One QuicksilverOne — verify autopay is active and linked to Fidelity
- [ ] Barclays — resolve security alert, restore full access

---

# 📘 Account Details

---

## Fidelity Investments (Pay-From Hub)

**Bank Name to Provide Billers:** Fidelity Investments partnering with UMB Bank  
**Account Type:** Checking  

**Notes:**
- Not a bank, UMB handles processing
- Direct debit not supported for retirement or advisory accounts

---

## Xfinity Mobile

**Site:** https://xfinity.com  
**Account #:** 1009600798  
**Phone:** (831) 332-2529  
**Email:** tracycsmith@gmail.com  

### Billing
- Monthly: $64.16
- Cycle: 13th–12th

### Payment
- Autopay: Yes
- Pay with: Amex …6008
- Draft: 1st (posts 2nd–3rd)

**Status:** ✅ Stable

---

## State Farm Insurance

**Payment Plan:** 1099-0002-07  

**Policies:**
- 2021 Acura RDX Sport WG (Auto)
- Renters, 1028 S Walter Reed Dr Apt 731

### Payment
- Autopay: Yes
- Pay with: Amex …6008
- Due: 1st of month

### Amount Breakdown (Reconciled)
- Auto insurance: **$101.88**
- Service fees + renters portion included
- Total plan amount displayed elsewhere: $120.25

**Status:** ✅ Reconciled, no action

---

## PNC Visa

- Current balance: $0
- Autopay: Not active (no balance)
- Status: Waiting on Micro Verification

---

## Jasper (Rent & Maintenance)

**Maintenance Portal:** https://portal.risebuildings.com  
**Payments:** https://biltrewards.com  

**Property:** 1028 S Walter Reed Dr, Arlington, VA  
**Lease:** Apr 10, 2025 – Mar 9, 2026  
**Monthly Rent:** $2,767  

### Payment
- Autopay: Off
- Reason: Awaiting account verification

**Status:** ⚠️ Pending verification

---

## Exxon Mobil (Citi Retail Services)

**Site:** https://citiretailservices.citibankonline.com  
**Account:** …3199  

### Payment
- Direct bank draft
- Linked to Fidelity CMA …1515
- Verification started: 2025-12-21

**Status:** ⚠️ Pending

---

## Discover

### Autopay
- Amount: Statement balance
- Pay from: Fidelity CMA …1515
- Draft: 10th of every month
- Next: Jan 10, 2026

**Status:** ✅ OK

---

## Capital One — Quicksilver (…6767)

### Autopay
- Amount: Statement balance
- Pay from: Fidelity CMA …1515
- Draft: 8th monthly
- First payment: Jan 8, 2026

**Status:** ✅ OK

---

## Capital One — QuicksilverOne (…6062)

- Annual fee: $39
- Balance: $0
- Due date: 14th

### Autopay
- Setup flow completed
- Pay-from needs verification

**Status:** ⚠️ Verify autopay activation

---

## Barclays View Mastercard (…1097)

**Site:** https://cards.barclaycardus.com  

### Autopay
- Statement balance
- Pay from: Fidelity CMA …1515
- Draft: 8 days before due
- Effective: Jan 24, 2026

### Alert
- Security hold active
- Customer Service: 1-866-603-7217

**Status:** ⚠️ Resolve alert

---

## American Express Platinum (…6008)

### Autopay
- Amount: Statement balance
- Pay from: Fidelity CMA …1515
- Draft: 15 days after statement close
- First: Dec 30, 2025

**Status:** ✅ OK

---

## Verizon Fios 2 Gig

**Account #:** 558-045-250-0001  

### Payment
- Pay from: Fidelity CMA …1515
- Draft: 8th monthly
- Monthly: $124.99
- Includes Apple One Individual

**Status:** ✅ OK

---

## Dominion Energy

**Account #:** 004400383990  

### Autopay
- Pay from: Fidelity CMA …1515
- Draft: On due date
- Enrollment date: Dec 22, 2025
- Confirmation: 122448810

**Status:** ✅ Monitor first autopay bill

---

## Synchrony — Amazon Store Card

### Autopay
- Amount: Statement balance
- Pay from: Fidelity CMA …1515
- Draft: 28th monthly
- Next: Dec 28, 2025

**Status:** ✅ OK

---

## Apple Card

### Autopay
- Enabled
- Pay from: Fidelity CMA …1515
- Draft: 23rd of month
- Old pay-from accounts removed

**Status:** ✅ OK

---

## NASA FCU

- Visa credit limit: $21,000
- Current balance: $0
- Savings: minimal balance

**Status:** ✅ No action

---

## Other Accounts (Tracked, No Autopay)

- Optum Bank HSA
- Betterment (checking and savings closing)
- 401(k) via ADP
- Venmo
- Ally Invest (Acct 39099195)

---

## Review Policy

- Review quarterly
- Review after any bank or card change
- No account without autopay unless intentionally documented
