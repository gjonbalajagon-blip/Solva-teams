# Solva Teams — Website

Marketing site (and soon, product front-end) for **Solva Teams sh.p.k.**, Prishtina, Kosovo.
We build and run dedicated **German-speaking** customer-support and back-office teams from Kosovo for European companies and BPOs.

**Brand idea:** *The team that stays.* Retention is the product.

---

## What this repo is

A **static website** — plain HTML, CSS and a little vanilla JavaScript. No framework, no build step. You can open any `.html` file directly in a browser.

- `index.html` — English homepage (default)
- `de/index.html` — German homepage (`/de/`)
- `assets/` — logo variants, favicons, images

The two pages share the same design. English is the default; German lives under `/de/`.

---

## How to work on it

1. Open this folder in **Claude Code** (`cd` into it, run `claude`).
2. Ask for one change at a time, and be specific (e.g. *"in `index.html`, swap the hero image, don't touch anything else"*).
3. Review the change, approve it, then open the file in a browser to check.

There is nothing to install or compile. Editing an `.html` file and refreshing the browser is the whole loop.

---

## Before it goes live

See [`docs/STATUS.md`](docs/STATUS.md) for the launch checklist. The short version:
the contact-form endpoint, the ARBK registration number, the privacy pages, a native-German review, and confirming the experience wording with Rrezon.

---

## The bigger plan

This site starts as a brochure but becomes the **product**: a place where applicants get a free German assessment and join the bench, and where employers can see that bench and start a paid single-agent pilot. See [`docs/ROADMAP.md`](docs/STATUS.md) direction inside `STATUS.md` and `ARCHITECTURE.md`.

---

## Docs

| File | What's in it |
|---|---|
| [`CLAUDE.md`](CLAUDE.md) | Context + rules for Claude Code. Read this first. |
| [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) | How the site is built and structured |
| [`docs/DESIGN-SYSTEM.md`](docs/DESIGN-SYSTEM.md) | Brand colours, fonts, components, motion |
| [`docs/DECISIONS.md`](docs/DECISIONS.md) | Key decisions and why we made them |
| [`docs/PROGRESS.md`](docs/PROGRESS.md) | Log of what's been done |
| [`docs/STATUS.md`](docs/STATUS.md) | Where we are now + what's next |
