---
name: ops-reputation-leads
description: Router for reputation, lead flow, CRM health, competitor watch, CRO, directories and local legal compliance. Use for Google reviews, form-to-CRM issues, competitor changes, conversion, directory listing, privacy/cookie law. מוניטין, ביקורות, לידים, CRM, מתחרים, המרות, דירקטוריות. Trigger on - ביקורת, ליד, CRM, מתחרה, המרה, קוקיז.
---

# ops-reputation-leads

| Capability | Preferred | Notes |
|---|---|---|
| Google Business Profile and reviews | Your reputation agent if any, else `small-business:review-reputation` | - |
| Lead pipeline: form to CRM, response time | Your lead-ops agent if any, else `small-business:speed-to-lead`, `lead-triage` | Pick one; they overlap |
| Competitor monitoring | Your competitor-watch agent if any | One template: `marketing:competitive-brief` |
| Conversion: forms, CTAs, funnel | Your CRO agent if any | - |
| Directory listings / backlinks | Directory agent if any | Boundary: GBP belongs to reputation work, not SEO |
| Local-law compliance (privacy, cookies, accessibility) | Your compliance agent if any | `legal:compliance-check` is US-oriented |
| Generic pipeline/deals | `sales:*`, `small-business:crm-autopilot` | Only when a matching CRM is connected |
| Support | `customer-support:*` | - |

Hand-offs: copy through `ops-content`; assets through `ops-design`.
