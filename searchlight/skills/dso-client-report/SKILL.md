---
name: dso-client-report
description: >
  Business-owner SEO report in Hebrew (RTL): monthly or quarterly structure, plain-language KPIs, what was done / what changed / what is next, honest attribution. Use for "דוח SEO ללקוח", monthly summaries, or presenting audit results to a non-technical owner. Complements generate_report (technical HTML/PDF/XLSX).
user-invocable: true
argument-hint: "<domain> <period>"
license: MIT
---

# dso-client-report (original)

Technical report pipeline stays in `scripts/generate_report.py` and `references/report-template/`. This skill defines the owner-facing narrative and rules. Hebrew wording is finalized by the copywriter; the structure and numbers come from here.

## Structure (one page first, details after)

| Section | Content |
|---|---|
| 1. Bottom line | 3 sentences: did organic traffic and leads go up/flat/down, why, and the main next step |
| 2. Numbers | Table: organic clicks, impressions, avg position (GSC), leads from organic (Wix/CRM), key page rankings; this period vs previous vs same period last year; source tag per number |
| 3. What we did | Dated list of changes from the the SEO owner change log, one line each |
| 4. What it changed | Only effects with evidence and a time lag note (SEO effects take weeks); otherwise "too early" |
| 5. Wins and risks | Pages gaining/losing with reason; algorithm or seasonality context (`dso-algo-watch`) |
| 6. Next period | Max 5 actions ranked by impact over effort, owner, expected effort |
| 7. Decisions needed | What the owner must approve |

## Rules

- No metric without source and date range. Missing data is "no data", never an estimate.
- Separate correlation from cause; never promise rankings or timelines.
- Plain Hebrew, no jargon without a one-line explanation. Numbers formatted for Hebrew readers; shekel sign; dates in dd/mm/yyyy.
- Output formats: HTML with `<html lang="he" dir="rtl">` (Latin tokens in `<bdi>`), or Word via the project's RTL document rule. No mixed-direction tables.
- Include lead/revenue linkage when the CRM provides it; otherwise state the gap.
- Do not send anything. Show in-session; sending is the owner's decision.
