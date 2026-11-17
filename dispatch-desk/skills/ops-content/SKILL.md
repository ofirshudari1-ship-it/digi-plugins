---
name: ops-content
description: Router for Hebrew copy and content - one winner per content task. Use before writing any Hebrew text for a business, or when choosing between a copywriting agent, hebrew-copywriting, brand-voice and marketing content skills. ניסוח עברי, טקסט לאתר, בלוג, מייל, וואטסאפ, מודעה, תגובה לביקורת, קול מותג. Trigger on - נסח, תכתוב, טיוטה, קול מותג, tone of voice.
---

# ops-content - content and Hebrew copy

| Capability | Preferred | Complement |
|---|---|---|
| Hebrew copy (site, blog SEO+GEO, email, WhatsApp, post, ad, FAQ, review reply) | Your project's copywriting agent if it has one, else `anthropic-skills:hebrew-copywriting` | `marketing:content-creation` is English-only |
| Brand voice and enforcement | Written brand guidelines in the project + `brand-voice:enforce-voice` | `brand-voice:discover-brand` needs connected document sources |
| Email sequences | Copy agent drafts; structure from `marketing:email-sequence` | - |
| UI microcopy | Copy agent | `design:ux-copy` principles |
| Content calendar / strategy | `ops-social` + `ops-ads-measurement` | `small-business:content-strategy` |
| B2B outreach | `ops-social` (LinkedIn) | `sales:draft-outreach` |
| Support replies / KB | Copy agent | `customer-support:draft-response`, `kb-article` |

Rules
1. All Hebrew copy goes through one writer; other agents delegate instead of drafting themselves.
2. Do not publish customer-specific figures or internal business numbers in public posts.
3. Avoid an "AI voice": plain language, one style, no inflated promises, correct RTL.
