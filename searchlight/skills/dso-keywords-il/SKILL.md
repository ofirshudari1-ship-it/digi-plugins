---
name: dso-keywords-il
description: >
  Keyword research for Israel and Hebrew: sources and their limits, Hebrew query variants (prefixes, spelling, English and transliteration), city/area modifiers, volume sanity checks, SERP difficulty scoring, and mapping to pages. Use for "what do Israelis search for X", keyword lists for a Hebrew site, or local Israeli keyword plans.
user-invocable: true
argument-hint: "<topic or url> [city or area]"
license: MIT
---

# dso-keywords-il (original)

Complements `references/keyword-strategy.md`, `dso-cluster` and `dso-sxo`. Real volumes come only from a named tool; otherwise write "no data".

## 1. Sources, in trust order

| Source | Use | Limit |
|---|---|---|
| GSC queries (your own stored or exported data) | Real queries the site already gets; striking-distance (positions 8-20) | Only existing demand |
| DataForSEO (direct HTTP, language code `iw` for Google Ads endpoints, location Israel) | Volumes, related terms, many keywords per call | Costs money, batch; check plausibility (step 3) |
| Google autosuggest, People Also Ask, related searches (WebFetch/WebSearch) | Phrasing, questions, no volume | Not volume |
| Competitor titles and H1 (WebFetch) | Naming conventions in market | Not proof of demand |
| Facebook groups, forums, sales-call/WhatsApp questions from the owner | Real customer language | Anecdotal; mark as such |

## 2. Hebrew variant sweep (do before judging a keyword "low volume")

- Prefix forms: ה ו ב כ ל מ ש (and combinations) attached to the noun (e.g. "ב" + city or "ל" + service). Search engines usually merge them, tools often do not: sum or check main variants.
- Spelling: full (ktiv male) vs defective spelling, geresh/gershayim and quote forms, hyphen vs space, singular vs plural, masculine vs feminine.
- English and transliterated brand/product terms commonly typed in Latin letters or Hebrew letters (CRM / סי אר אם). Always test both.
- Local modifiers: city, neighborhood, "near me" phrasing (לידי / בקרבתי / באזור), Gush Dan, Sharon, Center, Jerusalem area, each by name.
- Intent words: price, how to, best, reviews, quote, free, course, compare, alternatives.

## 3. Volume sanity

Treat as data error until confirmed in GSC: millions for a local Hebrew term; identical volumes for many variants; volume far above the city's population logic. Israeli total search demand is small: prefer ranges and trends, rank by relevance and conversion intent, not raw volume.

## 4. SERP difficulty (0-100, fill only from fetched SERPs)

Weights: authority of top-10 domains 25%, links/authority of top pages 20%, content depth bar 20%, backlinks needed 20%, SERP stability 15%. State the input behind each part; if an input is unavailable, mark N/A and say the score is partial. Give separate advice for a new vs established site. In Hebrew SERPs many positions are held by forums, directories and news: note it (an opening).

## 5. Output

Table: `Keyword (he) | Variants | Intent | Volume + source | Difficulty | Current URL/position | Target page | Action`. Group into clusters via `dso-cluster`. Briefs via `dso-content-brief`; copy by the copywriter.
