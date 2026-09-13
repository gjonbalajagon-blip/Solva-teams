# Decisions

Key choices on the site, and why. Newest at the top.

---

### Keep it simple, use our own wording
The owner prefers a clean, restrained version over a heavily animated one, but with the more concrete, honest copy we wrote. Direction going forward: **simple layout + strong wording.** Remove effects before adding them.

### Progressive enhancement (content visible without JS)
Content was disappearing when the file was saved and previewed on iPhone (the Files "Quick Look" preview doesn't run JavaScript, so the reveal animation never fired). **Fix:** content is now visible by default; JavaScript only *adds* the animation. Nothing depends on JS to be readable.

### Assets inlined into the HTML
The logo and photos are embedded as base64 so a single saved `.html` renders fully everywhere, including offline. Costs ~290 KB per page — acceptable for a two-image site. If more images are added later, switch to external optimised files.

### Reversed (white) logo for dark backgrounds
The supplied logo has navy text, which is invisible on our dark navy sections. We generated a **reversed** version (white "SOLVA" + blue "TEAMS") and use it on dark backgrounds; the navy version on light. Favicons are the S-mark on a navy tile.

### Real brand colours from the logo
Sampled the exact hex from the logo: navy `#03082F`, Solva Blue `#233DFF`, node `#4471F9`. Replaced the earlier placeholder blue. All colour flows from tokens for easy rebrand.

### Photography is illustrative, and labelled as such
Stock (Unsplash-licensed, free for commercial use) is used as placeholder imagery, clearly marked *"illustrative — not the Solva team"* in `alt` text and a footer note. Keeps us honest; replace with real team photos when available.

### Honest experience wording
Dropped the "12 years of BPO experience" phrasing (it rounded up and leaned entirely on Rrezon). About now reads *"over a decade running support floors"* — accurate to Rrezon's background. Agon's lack of BPO experience is never hidden. Confirm exact figures with Rrezon.

### English default, German at /de/
Two independent files, same design, translated text, linked by `hreflang`. Any design change must be applied to both.

### Static HTML, no framework
No React/build step. Reasons: the owner needs to focus on the business, not tooling; a brochure/light-product site doesn't need a framework; it's trivial to host and edit; and it's easy for Claude Code to work on one file at a time. Add complexity only when a real product feature (e.g. a live bench) forces it.

### Working contact form with a hosted endpoint
The form validates on the client and posts to a hosted form service (Formspree placeholder — to be replaced) so submissions actually arrive, without us running a backend. A Google Form is an acceptable zero-cost fallback.

### Dedicated-team model over placement fees
Positioning and copy centre on *renting a managed team*, billed per active FTE, not one-off recruitment. Market research confirmed the premium end sells **retention** and **dedicated teams** — hence "The team that stays."

### Reliability messaging front and centre
Backup power + redundant internet, and tested standard/Swiss German, are stated up front. This directly answers the objection that sank an earlier Kosovo attempt (downtime) and matches what CoreX/Patrick cares about most.
