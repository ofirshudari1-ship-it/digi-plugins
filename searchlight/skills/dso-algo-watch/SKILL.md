---
name: dso-algo-watch
description: >
  Search algorithm and AI-search update monitoring: where to read official update status, how to separate an update from seasonality or a site change, and what to do (and not do) during a rollout. Includes Israeli seasonality. Use for "was there a Google update", "traffic dropped, is it the algorithm".
user-invocable: true
argument-hint: "<domain> [date-range]"
license: MIT
---

# dso-algo-watch (original)

## Sources (primary first; fetch live, never rely on memory)

1. Google Search Status Dashboard (status.search.google.com): official ranking-update list with start/end dates.
2. Google Search Central blog and documentation changelog.
3. Bing Webmaster blog; OpenAI and Perplexity crawler docs for bot-name changes.
4. Secondary (rumor-grade, label as such): community volatility trackers. Never cite one as proof.

## Procedure

1. Get the drop window from GSC (clicks/impressions by day, 16 months, compare same weekdays). Use `index_coverage_diff` and `drift_monitor compare` for site-side changes.
2. Rule out, in order: (a) own change in that window (deploy, plugin, redirect, robots, template; use the change log kept by the SEO owner); (b) tracking break (GA4/consent change); (c) seasonality; (d) indexing/crawl problem; (e) manual action (GSC Security and Manual actions); only then (f) algorithm.
3. Match the window to an official update date range. Match by pattern: which URLs lost, which gained, what the winners share (page type, depth, freshness, authorship). One pattern across many pages suggests algorithmic; a few random pages suggest a local issue.
4. Israeli seasonality to check before blaming an update: Shabbat/Friday dips (B2B), Tishrei holidays (Rosh Hashana through Simchat Torah), Pesach, summer vacation, school-year start, war or election periods. Compare with the same Hebrew-calendar period last year, not only the same Gregorian dates.
5. During a rollout (until the status page says complete): no mass edits of titles, content or redirects; log observations only. After completion wait about 1-2 weeks, compare with a pre-update baseline, then decide.

## Output

Table: `Window | Evidence | Alternatives ruled out (how) | Update match (official URL) | Confidence | Recommended action`. Never claim an update caused a drop without steps 2-3. Never invent update names or dates.
