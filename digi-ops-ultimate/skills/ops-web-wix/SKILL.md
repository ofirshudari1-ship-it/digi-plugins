---
name: ops-web-wix
description: Router for a Wix site and its health - installed apps audit, performance, accessibility, compliance, Wix API/docs. Your project's site agents stay the entry point. אתר Wix, אפליקציות, ביצועים, נגישות, Wix API. Trigger on - Wix, אתר, אפליקציות מותקנות, LCP, נגישות.
---

# ops-web-wix

| Capability | Preferred | Complement |
|---|---|---|
| Installed apps / embeds audit | Your site-apps agent if any | - |
| Performance, mobile, accessibility | Your UX/perf agent if any | `design:accessibility-review` |
| Local-law compliance | Your compliance agent if any | - |
| Conversion | Your CRO agent if any | - |
| Wix API / docs / site management | `wix:wix-manage`, `wix:wix-docs`, Wix MCP | - |
| Headless / replatforming | `wix:wix-headless`, `wix:wix-replatform` | Only if the site is headless or migrating |
| SEO | `digi-seo-ultimate` | - |

If two Wix MCP servers are connected, use whichever returns a result and note which one.
