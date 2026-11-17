---
name: dso-wix-seo
description: >
  Wix-specific SEO knowledge: what Wix controls, what the API can and cannot change, how to verify Wix output, common Wix SEO problems and the exact manual step for each. Use for any finding on a Wix site (classic editor, Studio, Velo, Blog) before proposing a fix. Analysis only; execution is SEO owner.
user-invocable: true
argument-hint: "<url> [topic]"
license: MIT
---

# dso-wix-seo (original)

Read first: `references/host-context.md` (general Hebrew/Wix lessons). This skill expands on them. Anything marked "verify" must be checked in the live Wix dashboard or API response before it is stated as fact; Wix changes features often.

## Where things live (dashboard path, verify names)

| Task | Where | API possible? |
|---|---|---|
| Page title, description, OG, noindex, canonical, slug | Page menu > SEO basics / Advanced SEO | Item SEO tags via API (the `tags` array is replaced in full: send the whole set) |
| Site-level verification tags (Google/Bing/Facebook) | SEO tools > Site verification / Custom meta tags | Do not remove or overwrite |
| Structured data | Page SEO > Structured data, or Custom code | Draft JSON-LD, owner applies |
| Redirects (301) | SEO tools > URL redirect manager | Required in the same moment as any slug change |
| robots.txt | SEO tools > Robots.txt editor | Manual |
| Sitemap | Auto-generated `/sitemap.xml` (index of sub-sitemaps) | Not editable; check what it lists |
| H1/H2 in body, in-page alt, internal body links, menus | Editor | No: emit as manual steps |
| Blog posts: SEO tags, categories, tags | Blog manager | Partial |
| Dynamic pages (Velo/CMS) | Page SEO panel with dynamic fields; `wix-seo` API in page code | Needs code review |
| Multilingual hreflang | Wix Multilingual | Automatic; verify output |

## Checks on the live site

1. Rendered vs source: fetch HTML (`fetch_page`) and rendered (`render_page`); Velo-injected content and lazy content must appear in rendered HTML.
2. One H1 per page (Wix text styles can create two); heading order.
3. Duplicate/indexable thin pages: tag pages, category pages, blog archive, "-2" slugs, `?lang` variants, old slugs; confirm noindex or canonical intent.
4. Canonical pointing elsewhere is not automatically a bug (renamed posts); check the target is the current address.
5. Performance: heavy initial HTML, many apps/embeds, unoptimized hero images; hand to the performance owner with LCP evidence. Wix SSR output caches about 10 minutes.
6. Installed apps injecting scripts or duplicate banners: `wix-apps-agent`.
7. Wix Analytics (MCP) is the traffic source; GA4 not required.

## Limits to state in findings

No server access, no `.htaccess`, no custom response headers (security headers are mostly Wix-controlled), limited control over URL structure prefixes (`/post/`, `/blog/`), no direct sitemap editing. When a requirement cannot be met on Wix, say so and give the nearest workable alternative; a platform change is an option only to be raised, never a default.

## Output

`ID | Severity | URL | Evidence | Exact Wix step or API note | Owner | Verify-live`. Max 10 changes per run by the owner's rule; homepage title/H1/description needs explicit approval.
