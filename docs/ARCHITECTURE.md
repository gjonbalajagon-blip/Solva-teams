# Architecture

How the Solva Teams site is built.

---

## Stack

- **Plain HTML + CSS + a small amount of vanilla JavaScript.**
- **No framework** (no React, no Vue), **no build step**, **no npm dependencies** for the site itself.
- Every page is a single self-contained `.html` file that opens directly in a browser.

This is deliberate. See `DECISIONS.md`.

---

## File structure

```
solva-teams/
├─ index.html          # English homepage (default, served at /)
├─ de/
│  └─ index.html       # German homepage (served at /de/)
├─ assets/
│  ├─ logo-full-light.png   # navy logo, for light backgrounds
│  ├─ logo-full-dark.png    # reversed white+blue logo, for dark backgrounds
│  ├─ icon.png / icon-dark.png
│  ├─ favicon-32.png / -180.png / -192.png / -512.png
│  ├─ hero-team.jpg         # illustrative (stock)
│  └─ about-work.jpg        # illustrative (stock)
├─ README.md
├─ CLAUDE.md
└─ docs/
   ├─ ARCHITECTURE.md
   ├─ DESIGN-SYSTEM.md
   ├─ DECISIONS.md
   ├─ PROGRESS.md
   └─ STATUS.md
```

Privacy pages (to be added before launch): `/privacy/` (EN) and `/de/datenschutz/` (DE).

---

## Page anatomy

Each homepage is one file containing, in order:

1. `<head>` — title, meta description, `theme-color`, canonical + `hreflang` (en / de / x-default), Open Graph tags, favicon links, Google Fonts link, one small inline `<script>` that adds a `js` class, then all CSS in one `<style>` block.
2. Fixed **nav** (logo, links, one CTA "Book a call", EN/DE switch, mobile menu).
3. **Sections**: hero → trust strip → what we do → how we work → statement ("Retention is the product") → guarantees → about → contact (form) → footer.
4. One `<script>` at the end for nav, reveal-on-scroll, the contact form, and the year.

CSS uses **custom properties** (design tokens) declared in `:root` — see `DESIGN-SYSTEM.md`. All colours and fonts flow from those tokens, so a rebrand is a few token edits.

---

## Languages

- English is the default at `/`. German is a full copy at `/de/`.
- The two pages are **independent files** with the **same CSS and structure** but translated text.
- `hreflang` tags link them for search engines. The nav/footer language switch links `/` ↔ `/de/`.
- **Rule:** any structural or design change must be applied to *both* files. Only the visible text differs.

---

## Assets are inlined

The logo and the two photos are embedded directly in the HTML as base64 (data URIs), so a single saved `.html` file always renders fully — even opened offline or previewed on a phone. Favicons are referenced by path (`/assets/...`) and need the `assets/` folder present on the host.

Trade-off: pages are ~290 KB each. Acceptable. If we add more images, switch to external optimised files and lazy-load.

---

## Hosting

Any static host works (no server code): e.g. Netlify, Cloudflare Pages, GitHub Pages, or plain shared hosting. Upload the folder as-is. Point `solvateams.com` at it; `/de/` resolves automatically from the folder.

Email/DNS (domain, Google Workspace, SPF/DKIM/DMARC) is managed separately in GoDaddy — see the WEB & TECH reference, not this repo.

---

## Where the architecture is heading

The site will grow from brochure into **product** with two small interactive flows:

- **Applicant intake** — a form that captures CV + role/wage preferences + a short German self-assessment, writing to a simple store (start with a hosted form → a spreadsheet/Airtable "bench"). No backend of our own at first.
- **Employer pilot request** — a form to request a paid single-agent pilot, and later a gated "see the bench" view of anonymised, graded profiles.

Keep these as **static pages + a hosted form/store** for as long as possible. Only add a real backend when a signed pilot forces it. Don't over-engineer ahead of the first client.
