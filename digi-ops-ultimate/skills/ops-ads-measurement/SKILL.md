---
name: ops-ads-measurement
description: Router for paid ads, campaign planning and cross-channel performance reporting. Use for Google Ads/Meta Ads plans, budgets, campaign briefs, KPI reports and weekly marketing cadence. פרסום ממומן, קמפיין, תקציב, ROAS, דוח ביצועים. Trigger on - קמפיין, מודעה ממומנת, דוח ביצועים, איזה ערוץ משתלם.
---

# ops-ads-measurement - ads and measurement

Rule: one owner per capability. If your project defines its own ads or analytics agent, it leads; otherwise use the generic skills below.

| Capability | Preferred | Notes |
|---|---|---|
| Paid keyword research, campaign structure, ad drafts, budget | Your project's ads agent, else `marketing:campaign-plan` | Plans only; no API calls that spend money |
| Campaign brief | `marketing:campaign-plan` skeleton: goal, audience, channels, timeline, KPIs | - |
| Cross-channel report and trends | Your analytics agent, else `marketing:performance-report` structure: executive summary, trends, recommendations | Needs connected data sources |
| Weekly cadence | `small-business:marketing-monday`, `small-business:growth-pulse` | - |
| Data analysis / SQL | `ops-automation-data` | - |
| Product/app tracking plans | `product-tracking-skills:*` | Product analytics, not marketing |

Hard rule: never launch a campaign or spend budget without explicit approval from the account owner.
