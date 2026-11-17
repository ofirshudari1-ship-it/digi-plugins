---
name: dso-hebrew-search
description: >
  Planning search and technical setup for Hebrew/RTL sites: how Hebrew queries behave, URL slug policy (Hebrew vs Latin), encoding, lang/dir, hreflang for he/en, structured data in Hebrew, RTL rendering checks, and on-site search. Use when planning a Hebrew site structure or diagnosing Hebrew-specific indexing, snippet or display problems.
user-invocable: true
argument-hint: "<url or site plan>"
license: MIT
---

# dso-hebrew-search (original)

## Search behavior to plan for

- Hebrew has rich inflection and attached prefixes; Google handles most, so cover the main variants naturally in body copy rather than per-variant pages (see `dso-keywords-il`).
- Queries are often short, mixed Hebrew/English, and typed on mobile; test every priority query on a mobile device profile (`dso-visual`).
- Many Hebrew SERPs include forums, Facebook, YouTube, directories and local packs: map the SERP before choosing a page type (`dso-sxo`).
- Google, Bing and AI engines treat Hebrew less consistently: verify snippets, titles and citations by actually searching.

## Technical checklist (each item verified on the live URL)

| Check | Pass condition | Tool |
|---|---|---|
| `<html lang="he" dir="rtl">` | Present on Hebrew pages; English pages `lang="en" dir="ltr"` | `parse_html` |
| Encoding | UTF-8 declared, no mojibake in title/meta/OG | `fetch_page` |
| Slugs | One policy. Hebrew slugs are valid (shown percent-encoded when copied); Latin/transliterated slugs are easier to share. Never change an existing slug without a 301 in the same moment | `redirect_checker` |
| Canonical and sitemap URLs | Same encoding form as the served URL, no mixed encoded/decoded duplicates | `canonical_checker`, `sitemap_checker` |
| Title/description display | Not truncated oddly; pixel width, not only characters (working range title 30-60, description 70-155) | `meta_lengths_checker` |
| Open Graph and social | Hebrew text renders in preview; image text not clipped | `social_meta` |
| hreflang | If an English version exists: `he` and `en` self-referencing, reciprocal, `x-default`; site is Hebrew-only today so none is needed | `hreflang_checker` |
| Structured data | `inLanguage` he-IL, `addressCountry` IL, Hebrew `name`/`description`, `sameAs` consistent | `validate_schema` |
| Numbers, dates, currency | ISO date in markup, shekel `ILS` in markup, visible format consistent | manual |
| RTL layout | No broken bullets, sticky bars, tables, icons or forms on mobile | `dso-visual` |
| On-site search | Handles prefixes and spelling variants; zero-result queries logged and turned into content | manual / analytics |

## Output

Table `ID | Severity | URL | Evidence | Fix | Owner | Verify-live`. Execution on Wix goes through the SEO owner; see `dso-wix-seo`.
