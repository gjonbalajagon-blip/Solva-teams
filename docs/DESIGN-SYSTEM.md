# Design System

The visual language of the Solva Teams site. All values live as CSS custom properties in each page's `:root`.

---

## Guiding principle

**Premium but simple.** Generous whitespace, calm layout, restrained motion. Clear beats clever. When unsure, remove rather than add. The owner explicitly prefers the simpler look — do not re-introduce heavy effects or cinematic intros.

---

## Colour (from the logo)

| Token | Hex | Use |
|---|---|---|
| `--navy` | `#03082F` | Dark backgrounds, deep bands, primary text on light |
| `--navy-2` | `#0A1447` | Deep panels/gradients |
| `--blue` | `#233DFF` | **Solva Blue** — CTAs, accents, links |
| `--blue-d` | `#1731D7` | Button gradient end |
| `--node` / `--blue-l` | `#4471F9` / `#8796FF` | Secondary blue accents on dark |
| `--ink` | `#0B1226` | Body text |
| `--slate` | `#5A6478` | Muted/secondary text |
| `--mist` | `#F4F6FC` | Light section background |
| `--paper` | `#FFFFFF` | Base background |
| `--line` | `#E2E7F2` | Hairlines/borders |

These are sampled from the official logo. If the `04_BRAND` guide specifies different exact values, update the tokens here — everything else follows.

---

## Typography

Currently loaded from Google Fonts:

- **Display / headings:** `Schibsted Grotesk` (600–800)
- **Body / UI:** `Hanken Grotesk` (400–700)

Both cover German (umlauts, ß). The **logo wordmark** uses its own geometric letterforms (it's an image, not web text) — the web fonts don't need to match it.

> Note: `04_BRAND` may mandate specific typefaces. Until then these are the chosen pair. To change: swap the one Google Fonts `<link>` and the `--display` / `--sans` tokens.

---

## Logo usage

- `assets/logo-full-light.png` — navy wordmark, for **light** backgrounds.
- `assets/logo-full-dark.png` — **reversed** (white "SOLVA" + blue "TEAMS"), for **dark** backgrounds.
- The navy logo is invisible on dark navy — always use the reversed one there. This was the whole point of generating the reversed variant.
- Nav sits over light sections → navy logo. Footer is dark → reversed logo.
- Favicon = the S-mark on a rounded navy tile (`assets/favicon-*.png`).

---

## Components

- **Buttons** — pill shape, blue gradient (`--blue`→`--blue-d`), subtle lift on hover. One primary CTA per screen: *"Book a call"*. Ghost variant (outline) for the secondary action only.
- **Cards** — white, hairline border, soft shadow, gentle lift on hover. Optional 1px gradient border on hover for emphasis.
- **Trust strip** — three items (backup power / Swiss German / GDPR) with small line SVG icons.
- **Process steps** — numbered cards; step 3 *"Select — together"* is the highlighted key card (client makes the final hiring choice — Valent's point).
- **Statement band** — dark, centred: *"Retention is the product."*
- **Guarantees** — three cards (downtime / language / the team that stays).
- **Contact form** — inline, dark section; client-side validation with per-field errors and a success state.

Icons are **bespoke inline SVG** (stroke style), not an icon font. No emoji.

---

## Motion

Restrained and **optional** — the site must be fully readable with motion off.

- Progressive enhancement: content is visible by default; a `js` class (added by a tiny inline script) enables the hidden→reveal animation. **If JS doesn't run, everything still shows.** (This fixed content being invisible in the iPhone Files preview.)
- Reveal-on-scroll via `IntersectionObserver`, once per element, gentle.
- `prefers-reduced-motion` is respected — all animation is disabled for users who ask for that.
- Keep it subtle. No parallax stacks, no auto-playing spectacle. (An earlier richer version was dialled back on request.)

---

## Accessibility

- Colour contrast: white/`--blue-l` on navy, `--ink` on light — all readable.
- Visible focus outlines (`:focus-visible`).
- Real labels on form fields; honest, descriptive `alt` text on images.
- Mobile menu is keyboard-reachable; `aria-expanded` toggles.
