---
name: dso-hebrew-content
description: >
  Hebrew SEO content method: a writing spec and QA checklist for Hebrew pages and articles (titles, descriptions, headings, answer blocks, FAQ, E-E-A-T, AI-text tells in Hebrew). Produces the brief and the review of a draft; the actual Hebrew copy is written by the copywriter. Use for "write an SEO article in Hebrew", reviewing Hebrew drafts before publishing.
user-invocable: true
argument-hint: "<target query> [draft file or url]"
license: MIT
---

# dso-hebrew-content (original)

Role split: this skill defines the spec and checks a draft. the copywriter (or the `hebrew-copywriting` skill) writes. the SEO owner publishes.

## 1. Spec to hand to the copywriter

| Item | Rule |
|---|---|
| Title | 30-60 chars (project working range), main phrase near the start, benefit or hook, brand last, no stuffing |
| Meta description | 70-155 chars, answers the query, ends with a reason to click, no quotes that cut it |
| H1 | One, natural Hebrew phrase of the main query, differs from the title wording |
| Opening | First 2 sentences answer the query directly (citable by AI and snippet) |
| H2/H3 | Real questions and subtopics from `dso-keywords-il` and PAA, in natural Hebrew |
| Body | Short paragraphs, concrete facts supplied by the owner (prices, steps, laws with source), no invented numbers or clients |
| FAQ | 4-8 genuine questions with 1-3 sentence answers; schema only after text parity (`faq_parity`) |
| E-E-A-T | Named author with credentials, real experience, update date, sources linked, business address and phone |
| Internal links | 2-5 contextual links, descriptive Hebrew anchors (not "click here"), points to money page |
| Spelling rule | Follow the site owner's spelling rules for brand and product terms (see `host-context.md`) |

## 2. QA of a Hebrew draft

1. Machine checks: `content_quality`, `readability` (Latin-oriented: use as rough only), `duplicate_content`, `meta_lengths_checker`.
2. AI-text tells in Hebrew: stacked abstract nouns, repeated "בעולם של היום" style openers, symmetrical triple lists everywhere, translated-English syntax, over-formal register, empty summaries. See `ai-generated-content-artifacts.md` for the general list.
3. Keyword use: main phrase in title, H1, opening, one H2, naturally inflected (with prefixes); no exact-repeat stuffing.
4. Facts: every number, law and price traced to the owner or a source; otherwise flag.
5. RTL hygiene: Latin words, numbers and punctuation do not break direction; no mixed-direction tables; quotes and parentheses correct.
6. Intent fit: page type matches the SERP (`dso-sxo`).

## 3. Output

Review table `ID | Severity | Location | Issue | Suggested fix direction | Owner`. Do not rewrite the text; return directions and let the copywriter revise.
