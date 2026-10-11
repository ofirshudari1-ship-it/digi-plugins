---
name: ops-router
description: Index of the domain routers in digi-ops-ultimate. Use when unsure which skill/agent owns a request outside SEO (content, design, social, ads, reputation, dev, video, docs, automation, inbox, Wix, memory, MCP). נקודת כניסה אחת - מנתב לתחום. Trigger on - איזה סוכן, מי אחראי על, איפה זה, מפת סוכנים.
---

# ops-router - who leads each domain

Iron rule: one lead per capability. These routers do not duplicate agents; they point to the preferred skill and say what not to run alongside it. Project-specific agents, when present, are the entry point in their domain.

| Request | Skill | Preferred |
|---|---|---|
| Hebrew copy, text, email, ads, review replies | `ops-content` | copywriting agent or `hebrew-copywriting` |
| Image, banner, branding, Canva/Figma | `ops-design` | design agent, then `local-designer` |
| Facebook, Instagram, LinkedIn | `ops-social` | social agent |
| Paid ads, performance report, campaign plan | `ops-ads-measurement` | ads/analytics agents |
| Reviews, GBP, leads, CRM, competitors, CRO, directories, compliance | `ops-reputation-leads` | matching project agents |
| Plan, review, commit, security, release, upgrade | `ops-dev-toolchain` | `compound-engineering`, `claude-security` |
| Video, motion, captions | `ops-video` | `hyperframes` |
| Word/Excel/PPT/PDF, reports | `ops-docs-office` | `anthropic-skills:docx/xlsx/pptx/pdf` |
| Make, Composio, Supabase, SQL, data, charts | `ops-automation-data` | `make-monitor`, `dataviz` |
| Mail, morning brief, tasks, scheduling | `ops-inbox-productivity` | email agent, `morning` |
| Wix site, apps, accessibility, performance | `ops-web-wix` | site agents, `wix:*` |
| Memory, history, handoff | `ops-memory-knowledge` | `claude-mem` |
| Which MCP server, auth, duplicate connectors | `ops-mcp-tools` | per table in that skill |
| SEO / GEO / schema / site audit | (not here) | `digi-seo-ultimate` |
