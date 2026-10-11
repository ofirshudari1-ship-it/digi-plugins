# digi-seo-ultimate

Unified SEO + GEO/AEO capability plugin for Claude Code. One router skill, one lead agent, six specialists, no duplicated capability.
If your project has its own SEO owner agent, it leads and decides; this plugin supplies analysis, scripts, procedures and drafts. It never writes to a CMS.

## What it includes

| Part | Content |
|---|---|
| Router skill | `seo-geo-ultimate`: routing table, precedence rules, output contract, delegation map |
| Sub-skills | `dso-cluster`, `dso-sxo`, `dso-agentic`, `dso-content-brief`, `dso-competitor-pages`, `dso-backlinks`, `dso-visual`, `dso-ai-platforms`, `dso-monitor`, `dso-algo-watch`, `dso-keywords-il`, `dso-hebrew-content`, `dso-hebrew-search`, `dso-voice-video`, `dso-wix-seo`, `dso-client-report` |
| Agents | Lead `seo-ultimate`; specialists `dso-technical`, `dso-geo-schema`, `dso-content`, `dso-links`, `dso-local`, `dso-data` (analysis only: no Edit tool, no CMS tools) |
| `scripts/` | Audit scripts (robots, sitemap, canonical, redirects, security headers, PageSpeed/CrUX, schema, citability, entity, llms.txt, AI bot access, hreflang, images, local, links, drift, GSC/GA4, report generation) |
| `scripts/ext/` | Extension scripts: agent-readiness, Lighthouse Agentic, parasite risk, preload, free backlink sources (Moz, Bing, Common Crawl), Unlighthouse wrapper, screenshot capture, ledger |
| `references/` | 26 procedures (`procedures/`), domain references, report template, `parallel-audit.md`, `free-backlink-sources.md`, `local-extra/`, and `host-context.md` (generic Hebrew / Wix lessons) |
| `docs/SETUP-FREE-TOOLS.md` | Setup guide for free data sources |

## Built from

| Source | Used for |
|---|---|
| ultimate-seo-geo 1.22.1 | Engine: procedures, references, scripts, report pipeline |
| claude-seo 2.4.2 | Unique parts only: SXO, SERP-overlap clustering, agent-readiness, free backlink sources, competitor pages, content-brief method, parasite risk, preload check |
| geo-seo-claude (MIT) | Per-engine AI platform and brand-mention playbooks (rewritten into `dso-ai-platforms`) |
| seo-geo-claude-skills v9.9.12 (Apache-2.0) | Rank tracking, alerts, content refresh (rewritten into `dso-monitor`), `ledger.py` (reviewed copy) |
| Original | Israel keywords, Hebrew content spec, Hebrew/RTL search, voice and video, Wix SEO, algorithm watch, Hebrew client report |

Upstream licenses are preserved in `THIRD_PARTY_NOTICES.md` and `LICENSES-aaron-apache-2.0.txt`.

## Intentionally not included

Paid or key-bound MCP extensions (DataForSEO, Ahrefs, SE Ranking, Profound, Matomo), image generation, agency sales tooling, hooks, installers, tests and any credential or token. Scripts read the user's own configuration and environment variables.

## Install and use

```
claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
claude plugin install digi-seo-ultimate@digi-plugins
```

Then: `/digi-seo-ultimate:seo-geo-ultimate https://example.com audit`, or run the agent `digi-seo-ultimate:seo-ultimate`.
Python deps are in `requirements.txt`; some upstream scripts (Google API scripts, report generator) create a venv under `~/.config/ultimate-seo-geo` the first time they need extra packages. Review before running those on a shared machine.

## Free tools

| Tool | Notes |
|---|---|
| Google Search Console + GA4 | Provide your own credentials; see `docs/SETUP-FREE-TOOLS.md` section 1 |
| Bing Webmaster | `scripts/ext/bing_webmaster.py`, env `BING_WEBMASTER_API_KEY` |
| Unlighthouse | `npx` on demand, no key: `scripts/ext/unlighthouse_run.py` |
| Firecrawl MCP | Optional, needs your own key: `docs/optional/firecrawl.mcp.json.example` |
| Screenshots / mobile (`dso-visual`) | `scripts/ext/capture_screenshot.py` (Playwright) |
| Google Analytics MCP | Optional guide only |

## עברית

פלאגין SEO + GEO/AEO: סקיל ראוטר אחד, סוכן מוביל, שישה מומחים. מספק ניתוח, סקריפטים, נהלים וטיוטות בלבד; לא כותב ל-CMS. כולל סקילים ייעודיים לעברית, RTL ו-Wix.
