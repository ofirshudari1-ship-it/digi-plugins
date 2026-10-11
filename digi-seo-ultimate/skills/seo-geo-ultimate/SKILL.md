---
name: seo-geo-ultimate
description: Unified SEO + GEO/AEO router. Audits, plans and produces fix-ready findings for technical SEO, Core Web Vitals, schema/JSON-LD, E-E-A-T and content quality, AI-search citability (ChatGPT, Perplexity, AI Overviews), local, backlinks, hreflang, images, sitemap/crawl/indexation, migration, drift monitoring, programmatic and e-commerce SEO, and client reports. Use for any SEO/GEO audit, "why did traffic drop", schema or meta generation, or AI-visibility question on a site. Outputs findings and drafts only; the host project's SEO owner decides and applies changes.
user-invocable: true
argument-hint: "<url> [audit | plan | fix <topic> | geo | schema | local | links | drift | report]"
---

# SEO + GEO Ultimate (router)

One entry point for all SEO/GEO work. It routes to procedures, scripts and sub-skills bundled in this plugin.
Merged from claude-seo 2.4.2 and ultimate-seo-geo 1.22.1 (plus unique parts of geo-seo-claude and seo-geo-claude-skills v9.9.12, and original Hebrew/Wix/monitoring skills in 1.1.0) with duplicates removed.

## 0. Precedence and role (read first)

1. **The host project's SEO owner leads.** If the project has an the SEO owner (or any SEO owner), this plugin supplies capabilities
   and findings; the owner decides priorities and performs every write. This plugin never writes to a CMS, never edits live pages.
2. **Evidence or silence.** Every finding carries URL, measurement, and a verify-live flag. A stale tracker or old crawl is not evidence:
   re-fetch the live URL before recommending a change (see `references/host-context.md` for lessons already paid for).
3. **Hebrew/RTL to the client, English in plugin files.** Plugin files, script output and internal notes are English. Everything handed to
   the business owner (summaries, reports, action lists) is Hebrew with correct RTL (`dir="rtl"` in HTML reports, no mixed-direction tables).
   Hebrew copy itself (titles, descriptions, body, FAQ, CTA) is written by the host's copywriting agent, never invented here.
4. **No secrets.** Never copy, print or store API keys/tokens. Scripts read credentials from the user's own config/env only.
5. **Own site vs competitor.** Own site (user confirms): full scored audit, `/100` health score allowed. External site: surface crawl only
   (homepage + up to 20 pages), no health score, label "External Observation Only".

## 1. Path convention

Procedure and reference files were written for the upstream layout and mention `scripts/x.py` and `references/y.md`.
Resolve them against `${CLAUDE_PLUGIN_ROOT}/`. Run scripts as `python "${CLAUDE_PLUGIN_ROOT}/scripts/<name>.py" ...`.
`scripts/ext/` holds the claude-seo-derived scripts (agentic readiness, free backlink sources, parasite risk, preload) and `ledger.py` (local snapshot deltas); they have their own
`url_safety.py` and a credential-free `google_auth.py` shim, so run them by path as well (`scripts/ext/<name>.py`).
Python deps: `requirements.txt` (core: requests, beautifulsoup4, lxml). Do not install anything without the user's approval.

## 2. Routing (read only what the task needs)

Progressive disclosure: load at most 3 files from `references/` per response, except a full audit.

| Goal | Read | Run |
|---|---|---|
| Full scored audit | `references/procedures/02-full-site-audit.md`, `audit-script-matrix.md`, `thinking-framework.md` | `generate_report.py <url>` |
| Plan / roadmap | `procedures/16-strategy-roadmap.md` (run audit first if none exists) | none |
| Technical, crawl, index, CWV | `procedures/04-technical-seo.md`, `procedures/11-crawl-indexation.md`, `technical-checklist.md` | `robots_checker`, `sitemap_checker`, `canonical_checker`, `redirect_checker`, `security_headers`, `pagespeed`, `crux_history` |
| GEO / AI citations | `procedures/03-geo-ai-search.md`, `ai-search-geo.md`, `entity-optimization.md` | `ai_bot_access`, `citability_checker`, `entity_checker`, `llms_txt_checker`, `citation_sampling` |
| Agent-readiness (Lighthouse Agentic, WebMCP, ai-catalog) | skill `dso-agentic` | `ext/agentic_check`, `ext/lighthouse_agentic` |
| Schema / JSON-LD | `procedures/05-schema-structured-data.md`, `schema-types.md` | `jsonld`, `validate_schema`, `faq_parity` |
| Content, E-E-A-T, pruning, AI-text artifacts | `procedures/06-content-eeat-and-pruning.md`, `eeat-framework.md`, `ai-generated-content-artifacts.md` | `content_quality`, `readability`, `article_seo`, `duplicate_content` |
| Keywords, clusters, AEO | `procedures/07-keywords-clusters-aeo.md`, `keyword-strategy.md`; skills `dso-cluster`, `dso-content-brief` | `topic_cluster`, `content_brief` |
| Intent / SERP mismatch (ranks but no clicks, page-type wrong) | skill `dso-sxo` | `render_page`, `parse_html` |
| Competitors, comparison/alternatives pages | `procedures/08-competitor-analysis.md`; skill `dso-competitor-pages` | none |
| Backlinks, link profile, toxic links | skill `dso-backlinks`, `link-building.md`, `backlink-quality.md`, `free-backlink-sources.md`, `cite-domain-rating.md` | `link_profile`, `backlink_analyzer`, `ext/commoncrawl_graph`, `ext/moz_api`, `ext/bing_webmaster`, `ext/parasite_risk` |
| Internal links, site structure, navigation | `procedures/09-link-building-internal.md`, `procedures/26-site-structure-content-types.md`, `page-types.md` | `internal_links`, `site_graph`, `navigation_checker`, `site_architecture`, `broken_links` |
| Local / Maps | `procedures/12-local-seo.md`, `procedures/25-maps-intelligence.md`, `local-seo.md`, `local-extra/*` | `local_signals_checker`, `maps_checker` |
| Images | `procedures/13-image-seo.md`, `image-seo.md` | `image_checker` |
| Hreflang / international | `procedures/14-international-hreflang.md`, `international-seo.md` | `hreflang_checker` |
| Programmatic / templated pages | `procedures/15-programmatic-seo.md`, `programmatic-seo.md` | `programmatic_seo_auditor` |
| E-commerce | `procedures/24-ecommerce-seo.md` | `ecommerce_schema`, `validate_schema` |
| Migration / redirects | `procedures/20-site-migration.md`, `site-migration.md` | `redirect_checker` |
| Drift / change tracking | `procedures/22-drift-monitoring.md` | `drift_monitor` (baseline then compare) |
| Analytics, GSC, GA4, traffic drop | `procedures/10-analytics-reporting.md`, `analytics-reporting.md` | `google_api_tier`, `gsc_query`, `gsc_insights`, `ga4_report`, `index_coverage_diff` |
| Client report (HTML/PDF/XLSX) | `references/report-template/report-template.md` | `generate_report`, `render_report`, `report_lint` |
| Per-engine AI search (AIO, ChatGPT, Perplexity, Gemini, Copilot), brand mentions | skill `dso-ai-platforms` | `citation_sampling`, `ai_bot_access` |
| Hebrew/Israel keyword research, SERP difficulty | skill `dso-keywords-il` | none |
| Hebrew content spec and draft QA | skill `dso-hebrew-content` | `content_quality`, `meta_lengths_checker` |
| Hebrew/RTL search planning and technical setup | skill `dso-hebrew-search` | `parse_html`, `hreflang_checker` |
| Voice search, YouTube/video SEO | skill `dso-voice-video` | none |
| Wix-specific limits, paths and checks | skill `dso-wix-seo` (and `references/host-context.md`) | `fetch_page`, `render_page` |
| Rank snapshots, alerts, content decay and refresh | skill `dso-monitor` | `ext/ledger` |
| Algorithm update or traffic drop vs seasonality | skill `dso-algo-watch` | `drift_monitor`, `index_coverage_diff` |
| Hebrew owner-facing SEO report | skill `dso-client-report` | `generate_report` |
| Myths, quality gates, hard rules | `procedures/18-myths.md`, `procedures/19-quality-gates-hard-rules.md` | none |

Full procedure index: `references/procedures/README.md`. Script catalogue: `references/procedures/21-script-toolbox.md`.

## 3. Modes

- **Audit** -> scored findings: Finding / Evidence / Impact / Fix / Confidence / Falsifiability (template in procedure 02).
- **Plan** -> phased, page-specific actions with effort and expected outcome (procedure 16).
- **Fix draft** -> concrete drafts: meta tags, JSON-LD, redirect map, briefs, hreflang. Every draft ends with a verification step.
  Drafts are handed to the host owner; this plugin does not apply them.

Default for "audit this site": Audit -> Plan, stop before any change. Do not run a full audit for Google Ads/PPC-only, social-only,
GA4/GTM-setup-only, or explicitly narrow requests ("only robots + sitemap").

## 4. Delegation (host agents, when present)

| Need | Hand off to |
|---|---|
| Final decision, CMS write, change log | the SEO owner |
| Hebrew copy of any kind | the copywriter |
| Schema deployment, llms.txt, AI-mention tracking | the AI-visibility owner |
| Real-user performance, accessibility, security hygiene | the performance owner |
| Conversion paths, forms, CTA | the CRO owner |
| GBP, reviews, review replies | the reputation owner |
| Directory/citation listings | the directory owner |
| Ongoing competitor site tracking | the competitor-tracking owner |
| Cross-channel reporting | the analytics owner |
| Cookie consent, privacy/accessibility statements | the compliance owner |

Specialist agents bundled here (analysis only, parallelizable, see `references/parallel-audit.md`):
`dso-technical`, `dso-geo-schema`, `dso-content`, `dso-links`, `dso-local`, `dso-data`. The lead agent is `seo-ultimate`.

## 5. Output contract

Return a table, not prose: `ID | Severity | Page/URL | Evidence (number + source) | Fix | Owner | Verify-live | Confidence`.
Close with: done / proposed / blocked (and why) / manual-only, then the next three actions ranked by impact over effort.
Missing data is an open question, never a finding. Never invent metrics, volumes, prices or client numbers.
