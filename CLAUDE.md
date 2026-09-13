# CLAUDE.md

Context and rules for working on this project. Read before making changes.

---

## The company

**Solva Teams sh.p.k.** — Prishtina, Kosovo. We build and run dedicated **German-speaking** customer-support and back-office teams from Kosovo for European companies and international BPOs.

**Model:** *we* employ the agents. The client buys a service, not a person, billed monthly per active full-time agent (FTE). We carry employment, infrastructure and operational risk. We do **not** do one-off placement fees.

**Brand idea:** *The team that stays.* Retention is the product.

**Founders:** Agon (CEO, ops/sales/site), Rrezon (talent & quality, 10+ yrs Kosovo call centres), Valent (chairman/BD, the CoreX connection).

---

## This repo

Static website. Plain HTML + CSS + tiny vanilla JS. No framework, no build step.

- `index.html` — English (default)
- `de/index.html` — German (`/de/`)
- `assets/` — logo, favicons, images

---

## Design intent (important)

The owner prefers the **simple, clean** version — generous space, calm layout, few effects. Keep it **premium but restrained**. When in doubt, remove, don't add. Do **not** re-introduce heavy motion, cinematic intros, or clutter.

Wording matters: the copy is deliberate and honest. Don't make it vaguer or more "markety". Keep sentences concrete.

---

## Hard rules (never break)

- **Never promise a job** to an applicant before a role exists. On applicant-facing copy, say *"we'll contact you when a matching role opens"* — never *"you will get a job/call."*
- **Never quote a salary** as if it were a client's offer — only as our own market estimate.
- **Honesty on experience:** Agon has **no BPO experience** and this is disclosed openly, never hidden. Team experience claims lean on Rrezon (call centres) and must stay accurate. Current site wording is *"over a decade running support floors"* — keep it exact, confirm figures with Rrezon.
- **Imagery is licensed stock**, **not** the real Solva team. The site carries no caption or label saying so — don't add one back. Never write copy that claims or implies these are Solva's own people, office, or clients; keep alt text neutral and descriptive.
- **The ARBK registration number never appears on the site** — not in the footer, not in the privacy pages, nowhere.
- **GDPR:** anything that collects personal data (CVs, the contact form) needs consent and a live privacy policy before it goes public.
- **Spend nothing** on paid tools/ads until there's a signed order or a clear reason.

---

## Brand tokens (from the logo)

- Navy `#03082F` · Solva Blue `#233DFF` · Node blue `#4471F9`
- Logo: use the **reversed (white) version on dark backgrounds**, the navy version on light. Both are in `assets/`.

Full detail in `docs/DESIGN-SYSTEM.md`.

---

## How to help me

- One change at a time. Show me the diff, wait for approval.
- Prefer editing existing files over rewriting them.
- Keep both language pages in sync — a change to `index.html` usually needs the same change in `de/index.html` (German copy, not English).
- Don't add dependencies or a build system without asking.
- After a change, tell me in one line what to check in the browser.

---

## Where this is going

The site becomes the **product**, in small steps:
1. **Applicant flow** — free German assessment → join the bench (fills our candidate pool; *no job promised*).
2. **Employer flow** — see the (anonymised) bench → start a **paid single-agent pilot** (lands the first client, de-risks the buyer).

Everything else waits until the first signed pilot. Detail in `docs/STATUS.md`.
