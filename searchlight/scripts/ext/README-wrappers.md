# ext wrappers (free tools)

| Script | Purpose | Key needed |
|---|---|---|
| `unlighthouse_run.py <url> [--device mobile] [--max-routes 50]` | Multi-page Lighthouse via `npx` (pinned `unlighthouse@0.13.5`, first run downloads it into the npx cache, no global install) | none |
| `capture_screenshot.py <url> -v mobile [--all] [--full] -o <dir>` | Playwright screenshots | none |
| `bing_webmaster.py {links,counts,compare} <url>` | Bing Webmaster inbound-link data | env `BING_WEBMASTER_API_KEY` |
