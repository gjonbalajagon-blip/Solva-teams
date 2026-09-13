# Status

Where the project is right now, what's left before launch, and where it's heading.

---

## Current state

The **website is built** (EN + DE) and looks the way we want. It is **not live yet** — a handful of real-world items must be filled in first. It's a brochure today; the plan is to grow it into a light product.

---

## Launch checklist (before the site goes public)

- [ ] **Contact-form endpoint** — replace the `YOUR_FORM_ID` placeholder with a real Formspree ID (or repoint to a Google Form). Test that a submission actually arrives.
- [ ] **Registration number** — add the ARBK number in the footer once the company is registered.
- [ ] **Privacy policy** — publish live pages at `/privacy/` (EN) and `/de/datenschutz/` (DE). **Required under GDPR** before any form or CV collection goes public.
- [ ] **German review** — have a native speaker read `de/index.html`.
- [ ] **Experience wording** — confirm the "over a decade running support floors" line with Rrezon so it's exact and honest.
- [ ] **Assets on host** — upload the `assets/` folder to the site root (favicons are referenced by path). Or ask to inline the favicons too.
- [ ] **Real photos** — eventually replace the illustrative stock with real team/office photos, and update the alt text.

---

## Two things that matter most (from the business plan)

1. **The candidate bench.** Whoever offers a ready, language-tested worker first wins. Building and keeping a vetted bench *is* the competitive advantage. ~5 profiles exist; target 10–15+.
2. **The runway.** Nobody is hired, and no client contract is signed, until the money and the anchor client are in place. Keep spend near zero until a signed order.

---

## Product roadmap (small steps, in order)

Start small. Don't build ahead of the first signed pilot.

### Step 1 — Applicant flow (fills the bench)
A page/form: upload CV, choose role + wage preference + hours, and take a **short German self-assessment**. Joins the bench.
- Honest framing: *"Get on the shortlist — we'll contact you when a matching role opens."* **Never promise a job.**
- Store: start with a hosted form → a spreadsheet / Airtable "bench". No custom backend yet.
- GDPR: consent checkbox + live privacy page are prerequisites.

### Step 2 — Employer flow (lands the first client)
A page/form to request a **paid single-agent pilot** (one agent, one month, then keep or walk). This is how we get the first signature — it removes the buyer's downtime fear.
- Later: a gated *"see the bench"* view of **anonymised, graded** profiles (e.g. "CH-DE, C1, 4 yrs telco support, available in 2 weeks") to prove the bench is real and create urgency.

### Step 3 — Make the guarantees contractual
Turn the three site guarantees into contract terms: uptime (backup power + second line), language (wrong level in first two weeks = free replacement), retention (early leaver = we backfill and re-train at our cost).

### Step 4 — Reserved-bench retainer (aimed at CoreX)
A small monthly fee to hold N pre-vetted candidates on standby. Monetises the bench before a placement, locks in the "first offer", and helps the month-3 cash gap.

---

## Not now (deliberately parked)

- No custom backend until a signed pilot needs one.
- No fabricated stats/logos on the site (no clients yet — stay honest).
- No paid ads until the privacy page is live and the applicant flow works.
- No leaving SIGAL (Agon) until: a signed anchor client, a signed shareholders agreement with vesting, and 12 months of funded runway including salary.
