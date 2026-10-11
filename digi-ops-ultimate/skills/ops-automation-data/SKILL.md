---
name: ops-automation-data
description: Router for automation platforms (Make, Composio, Supabase, autosheet) and data analysis (SQL, charts, dashboards, validation). Use for scenario monitoring/specs, SQL, data exploration and visualization. אוטומציה, Make, תרחיש, SQL, דאטה, דשבורד, גרף. Trigger on - Make, תרחיש, סופרבייס, SQL, נתונים, דשבורד.
---

# ops-automation-data - automation and data

| Capability | Preferred | Complement |
|---|---|---|
| Monitor existing Make scenarios | `make-monitor` (if installed) | Make MCP `executions_list` |
| Spec a new scenario | `make-scenario-spec` (if installed) | Make MCP |
| Broad SaaS connections | One Composio connection | Avoid duplicate Composio connections |
| Database | Supabase MCP | - |
| Automated spreadsheets | `autosheet` | `anthropic-skills:xlsx` |
| SQL | `data:write-query` for the task | `data:sql-queries` for background knowledge; do not run both together |
| Exploration, statistics, validation | `data:explore-data`, `data:analyze`, `data:statistical-analysis`, `data:validate-data` | `data:data-context-extractor` |
| Charts | `dataviz` | `data:create-viz` |
| Dashboards | Artifact + `dataviz` | `data:build-dashboard` |
| Scheduling | `schedule`, `loop` | - |

Before marking an automation scenario healthy, verify against its live execution history, not only its configuration.
