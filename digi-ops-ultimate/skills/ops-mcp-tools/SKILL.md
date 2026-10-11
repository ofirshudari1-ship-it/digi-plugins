---
name: ops-mcp-tools
description: Router for MCP servers - which server for which task, who wins on overlap, and which need manual auth. Use when choosing between browsers (playwright / chrome-devtools / claude-in-chrome / computer-use), Gmail/Calendar/Drive, Figma/Canva, Make/Supabase, research/crawl tools, or when a tool says "needs authentication". שרתי MCP, חיבור, אימות, איזה כלי. Trigger on - MCP, מחבר, connector, needs authentication, איזה שרת.
---

# ops-mcp-tools

No keys or secrets belong here. OAuth is completed manually by the user: `/mcp` in the session for plugin/project servers, or the claude.ai connectors settings for claude.ai servers.

## Who wins on overlap

| Task | Preferred | Complement / note |
|---|---|---|
| Browser UI testing | `playwright` | `chrome-devtools` for performance traces, console, network |
| Logged-in browser session | `claude-in-chrome` | - |
| Desktop app without API or browser | `computer-use` | Last resort |
| Files and terminal | Built-in tools | `desktop-commander` optional |
| Mail / calendar / drive | Gmail, Google Calendar, Drive connectors | Microsoft 365 as alternative; avoid duplicate connectors for the same service |
| Design | Canva for editing, Figma for code/design | - |
| Web research with citations | Tavily | Firecrawl for site crawling and JS pages; WebSearch for one-off checks |
| Error monitoring | Sentry | - |
| Automation | Make for existing scenarios, Composio for broad SaaS | One Composio connection only |
| Database | Supabase | - |
| Knowledge | claude-mem, context7, Claude Docs, pdf-viewer | - |
| Site performance | `chrome-devtools` + PageSpeed/CrUX scripts from `digi-seo-ultimate` | - |

## Rules
- Do not send messages or emails, publish content, or spend credits in loops without explicit approval.
- Prefer read-only calls first; write actions (updating issues, sending, creating automations, removing records) only on request.
- If a server fails to connect, treat it as a connection failure, not as a missing capability, and tell the user.
- Servers that need authentication are unavailable until the user authenticates them.
