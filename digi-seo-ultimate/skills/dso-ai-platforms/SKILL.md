---
name: dso-ai-platforms
description: >
  Per-engine AI-search playbook: separate checklists and 0-100 rubrics for Google AI Overviews, ChatGPT search, Perplexity, Gemini and Bing Copilot, plus a brand-mention (off-site entity) pass. Use when the generic GEO audit is done and the question is "which engine do we win or lose on, and what exactly to change for it". Analysis and drafts only.
user-invocable: true
argument-hint: "<url> [aio|chatgpt|perplexity|gemini|copilot|all]"
license: MIT
---

# dso-ai-platforms

Adapted (rewritten, shortened) from geo-seo-claude `geo-platform-optimizer` and `geo-brand-mentions` (MIT, Zubair Trabzada). The general GEO audit stays in `seo-geo-ultimate` (procedure 03, `ai-search-geo.md`); this skill only adds the per-engine layer.

## Rules

- Percentages quoted by the source (for example "92% of AIO citations are top-10", "Reddit 46.7%") are third-party vendor claims, unverified here. Use them as hypotheses and label any number you did not measure `Vendor claim`.
- Measure before scoring: run `citation_sampling`, `ai_bot_access`, `citability_checker`, `entity_checker` first. A rubric point needs evidence (URL or screenshot).
- Hebrew market: AI engines answer Hebrew queries from thinner source pools. Test the real Hebrew prompts (and English variants) per engine, record cited domains, repeat on 3 different days.

## Per-engine checklist (score each 0-100: 10 criteria, equal weight unless evidence says otherwise)

| Engine | What to check (evidence) | Typical fix |
|---|---|---|
| Google AI Overviews | Page already ranks top 10 for the query (GSC); question H2/H3 with a 1-2 sentence direct answer under it; tables/lists for comparisons; visible publish + updated dates; author byline; page within 3 clicks of home | Restructure answer blocks, add table, dates, byline |
| ChatGPT search | Bing indexing of key pages (Bing Webmaster, `site:` on Bing); `OAI-SearchBot` not blocked; entity consistency (Wikipedia/Wikidata if notable, LinkedIn, directories); one long canonical page per topic rather than thin variants | Bing Webmaster + IndexNow, allow bot, unify entity facts |
| Perplexity | `PerplexityBot` allowed; fresh dated content; original data or case numbers; community/forum/YouTube presence (Facebook groups and Israeli forums for Hebrew); standalone quotable paragraphs | Publish original data, refresh dates honestly, earn real mentions (never fake posts) |
| Gemini | Google Business Profile complete; Knowledge Panel; YouTube content with chapters and Hebrew captions; Schema.org consistent with page; Google-ecosystem presence | GBP, YouTube chapters, schema parity |
| Bing Copilot | Bing Webmaster verified, sitemap, IndexNow; meta descriptions written; Bing Places; LinkedIn company page | IndexNow, meta descriptions, Bing Places |

## Brand-mention pass (off-site entity)

1. List where the brand is named without a link (forums, Facebook groups, YouTube, press, directories, review sites). Source: WebSearch for the exact brand string in Hebrew and English, plus GSC branded queries.
2. Compare name/address/phone/description across found profiles; list conflicts.
3. Report only real, existing mentions. Never propose fake accounts, astroturfing or paid mention schemes.

## Output

Table: `Engine | Score | Evidence | Top 3 gaps | Fix | Owner | Verify-live`. Schema or llms.txt deployment goes to the AI-visibility owner; Hebrew copy to the copywriter.
