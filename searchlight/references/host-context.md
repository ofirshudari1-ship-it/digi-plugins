# Host context: Hebrew / Wix sites

Read when the target is a Hebrew-language site or a Wix site. These are general lessons; verify each against the live site. Nothing here is a credential.

## Hard constraints that change how findings are written

| Constraint | Consequence for this plugin |
|---|---|
| The plugin never writes to the CMS | Output drafts and manual steps; the host project's SEO owner applies changes via the CMS API after logging them |
| Wix API cannot edit H1/H2 body, in-page alt, slugs, menus, internal links in body, sitemap | Emit these as exact manual steps (screen, clicks), not as "fixed" |
| Wix item SEO tags: the `tags` array is replaced in full | Any meta/tag draft must contain the full existing tag set plus the change |
| Site-level tags hold Google/Bing/Facebook verification | Never propose removing or overwriting site SEO tags without listing them |
| A slug change needs a 301 in the same moment | Never recommend a slug change without the redirect row |
| `canonical` pointing to another URL is not automatically a bug | Old slugs of renamed posts correctly canonicalize to the current URL. Check the target is the post's current address before flagging |
| Tracker/DB "open issues" go stale | Re-fetch the live URL before reporting; stale findings are often false positives |
| Wix SSR output is cached about 10 minutes and rate-limits dense polling | Verify edits against the API response first, live HTML later, and space requests |
| Legal pages (privacy, terms, accessibility statement) | Read-only for SEO work; route to your compliance owner |

## Data-source reality (do not assume tools work)

| Source | Guidance |
|---|---|
| Ahrefs, Semrush (via connectors) | May be unavailable or unauthenticated, especially inside subagents. Do not rely on them; use the free backlink sources in `dso-backlinks` |
| Keyword-volume APIs (for example DataForSEO) | Use your own credentials from your own secrets store, never from this plugin. Batch many keywords per call. For Hebrew, the Google Ads language code in some APIs is `iw`, not `he` |
| GSC / GA4 | Prefer data your project already collects; use this plugin's `gsc_*` / `ga4_*` scripts for ad-hoc exports |
| Core Web Vitals | Mobile LCP is a frequent problem on heavy Wix pages; send performance findings to your performance owner with LCP sub-part evidence |

## Useful MCP servers for SEO work

| Server | Use |
|---|---|
| `chrome-devtools` | Performance traces, LCP sub-parts, console/network |
| `playwright` | Rendered-HTML checks, JS rendering |
| context7, gitmcp | Documentation lookup |
| Wix MCP | Site data and analytics (writes only through your SEO owner) |

## Hebrew / RTL specifics

- Report HTML: `<html lang="he" dir="rtl">`, keep Latin tokens (URLs, code, brand names) inside `<bdi>` or `dir="ltr"` spans.
- Title and description length are pixel-based; a practical working range is title 30-60 chars, description 70-155 chars.
- Hebrew keyword volume tools: check the language code per tool; treat implausible volumes (millions for local terms) as data errors until confirmed in GSC.
- Follow the site owner's spelling rules for brand and product terms consistently across titles, body, excerpts and SEO tags. Do not change slugs to fix spelling.
- Brand words with real volume are often internal brands or partners (for example CRM vendor names), not competitors.

## Write-safety rules

Cap the number of changes per run; homepage title/H1/description changes need explicit approval; never delete pages or images; never buy links, link farms or PBNs; use only the owner's own accounts and test data in any browser step; no posting or sending on the owner's behalf.
