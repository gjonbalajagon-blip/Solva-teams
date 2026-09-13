# Progress

A running log of what's been done. Newest at the top.

---

## Website

- [x] English homepage built (`index.html`) — hero, trust strip, what we do, how we work, statement, guarantees, about, contact, footer.
- [x] German homepage built (`de/index.html`) — full translation, same design, `hreflang` wired.
- [x] Real brand colours applied from the logo (navy `#03082F`, Solva Blue `#233DFF`).
- [x] Reversed white logo generated for dark backgrounds; navy logo for light.
- [x] Favicon set generated (32 / 180 / 192 / 512, S-mark on navy tile).
- [x] Contact form with client-side validation + success state (endpoint is a placeholder).
- [x] Valent's process step added — "Select — together" (client makes the final hiring choice).
- [x] Honest copy pass — dropped the "12 years BPO" claim; imagery labelled illustrative.
- [x] Progressive enhancement fix — content visible without JavaScript (was breaking in iPhone preview).
- [x] Assets inlined so a single saved file renders fully offline.

## Email / DNS (tracked in the WEB & TECH reference, not this repo)

- [x] Domains registered (solvateams.com, solvateams.de).
- [x] Google Workspace email live (hello@ / agon@), SPF + DMARC configured.
- [x] DKIM fixed — removed a duplicate/stale record; single valid key published.
- [ ] Email warm-up in progress; move DMARC `p=none` → `p=quarantine` after ~4 weeks.

## Project docs

- [x] README, CLAUDE.md, and `docs/` set created.

---

## Next up

See `STATUS.md` for the current checklist and the product roadmap.
