---
name: dso-monitor
description: >
  Ongoing SEO monitoring: rank/impression snapshots with measured deltas (local ledger), alert thresholds and response plan, and content-decay detection with a refresh-vs-rewrite decision and republish-date rules. Use for "track rankings", "set SEO alerts", "which pages decayed", "refresh old posts". Read-only; stores snapshots only in a local folder.
user-invocable: true
argument-hint: "<domain> [rank | alerts | decay]"
license: MIT
---

# dso-monitor

Adapted (rewritten) from seo-geo-claude-skills v9.9.12 `rank-tracker`, `alert-manager`, `content-refresher` (Apache-2.0, aaron-he-zhu). `scripts/ext/ledger.py` is a reviewed copy of that repo's stdlib-only `ledger.py` (local files, no network).

## A. Rank / impression snapshots

1. Data source order: project GSC data (your stored GSC data), then `gsc_query` export, then user-provided positions. No paid rank tool is assumed; DataForSEO only if the owner approves the cost.
2. Record a snapshot: `python "${CLAUDE_PLUGIN_ROOT}/scripts/ext/ledger.py" --store data/dso-ledger record <domain> --source rank --data "<json of query to avg position>"`. Then `diff` and `trend --field <query>`. Hebrew queries work as JSON keys.
3. Label every number Measured / User-provided / Estimated. The first run is the baseline; never invent a "previous" value.
4. A delta is week-scale and confounded: compare against a control set (untouched queries/pages) and against the same weeks last year (Israeli holiday seasonality, see `dso-algo-watch`).

## B. Alert thresholds (start values; tune to the site's own volatility)

| Metric | Warning | Critical | Check |
|---|---|---|---|
| Organic clicks (GSC) | -15% WoW | -30% WoW | weekly |
| Query avg position | drop over 3 | drop over 5 or leaves page 1 | weekly |
| Indexed pages | -5% | -20% | weekly |
| New 404/5xx | over 10/day | over 50/day | weekly |
| CWV (CrUX) | Needs Improvement | Poor | monthly |
| Referring domains lost | over 5%/week | over 15%/week | monthly |
| AI citation for key prompts | any key prompt lost | over 20% of prompts | monthly |

Alerts here are a written playbook plus a suggestion to schedule the check (the owner approves); this skill does not create schedules itself.

## C. Content decay and refresh

1. Candidates: pages with falling clicks (GSC, last 90 days vs prior 90), stale dates/prices/laws, broken links, SERP changed (run `dso-sxo`).
2. Decide: refresh in place if intent still matches and under about half of the content is stale; rewrite if premise or intent changed (brief via `dso-content-brief`).
3. Republish-date rule: about 50%+ new substance -> new published date; 20-50% -> "last updated" date; under 20% -> keep original date. Never change dates without a real change.
4. After the change: update schema `dateModified`, confirm sitemap lastmod, request indexing manually, re-measure at 4-6 weeks.

## Output

`ID | Page/Query | Metric | Before | After | Delta | Source tag | Action | Owner`. Hebrew copy -> the copywriter; applying -> the SEO owner.
