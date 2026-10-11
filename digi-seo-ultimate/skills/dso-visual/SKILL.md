---
name: dso-visual
description: >
  Screenshots and mobile/desktop visual checks of a page (above-the-fold, CTA visibility, layout breaks, RTL)
  with Playwright, free and keyless. Use for "how does it look on mobile", visual regression evidence for an
  SEO finding, or before/after proof. Captures and describes; never edits the site.
user-invocable: true
argument-hint: "<url> [mobile|tablet|laptop|desktop|all] [--full]"
license: MIT
---

# dso-visual - screenshots and mobile checks

Original, small skill. Reuses `scripts/ext/capture_screenshot.py` (adapted from claude-seo 2.4.2, MIT) which already uses the SSRF guard `url_safety`.

## Procedure

1. Pick the engine, first available wins:
   - Script (deterministic, saves PNG files): `python scripts/ext/capture_screenshot.py <url> -v mobile -o <dir>` (`--all` = 4 viewports, `--full` = full page). Needs `playwright` + Chromium (`pip install playwright && playwright install chromium`; already present on this machine).
   - MCP fallback: `mcp__playwright__browser_resize` + `browser_navigate` + `browser_take_screenshot`, or `chrome-devtools` (`emulate`, `take_screenshot`).
2. Output folder: the session scratchpad or `./screenshots/<date>/`. Do not overwrite older captures.
3. Open each PNG with Read and check, per viewport (375x812, 768x1024, 1366x768, 1920x1080):
   - H1 and primary CTA visible without scrolling; phone/WhatsApp button reachable on mobile.
   - RTL intact (text right-aligned, icons mirrored, no clipped Hebrew), no horizontal scroll, no overlapping sticky bars or cookie banner covering the CTA.
   - Hero image not oversized or blank (LCP suspect); tap targets not tiny.
4. Report as a table: viewport, finding, severity, evidence file. Performance numbers go to `dso-technical` / the performance owner; do not guess LCP from a picture.

## Rules

- Public URLs only. No logins, no form submission, no clicking consent banners on the owner's behalf.
- Findings only. Fixes go through the host the SEO owner / the performance owner.
- Windows console: the script forces UTF-8 output; if Chromium is missing, say so and give the install line, do not install silently.
