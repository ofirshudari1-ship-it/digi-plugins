---
name: ops-inbox-productivity
description: Router for email inbox, daily briefs, tasks and scheduling. Business mail goes to your project's email agent if you have one; Gmail/Calendar to the Google skills. מייל, אינבוקס, בריף בוקר, משימות, תזמון. Trigger on - מייל, אינבוקס, בריף, מה על השולחן, משימות.
---

# ops-inbox-productivity

| Capability | Preferred |
|---|---|
| Business mailbox triage, drafts, outreach | Your project's email agent, if any |
| Gmail / Calendar / Drive | `anthropic-skills:email-assistant`, `anthropic-skills:google-workspace`, Gmail + Calendar MCP |
| Morning brief (mail + calendar) | `anthropic-skills:morning` (alternatives: `productivity:start`, `enterprise-search:digest`) |
| Weekly summary / standup | `claude-mem:standup`, `claude-mem:weekly-digests` |
| Tasks | `productivity:task-management` |
| Scheduling | `anthropic-skills:schedule`, `scheduled-tasks` MCP |

Rule: default to showing drafts in the session. Send email only to recipients the user explicitly approves.
