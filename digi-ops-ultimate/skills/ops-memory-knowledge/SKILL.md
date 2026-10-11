---
name: ops-memory-knowledge
description: Router for memory, history and knowledge retrieval across claude-mem, auto-memory, handoff and enterprise-search. זיכרון, היסטוריה, מה עשינו, handoff, ידע. Trigger on - זוכר, בפעם הקודמת, היסטוריה, handoff, memory.
---

# ops-memory-knowledge

| Need | Preferred | Complement |
|---|---|---|
| "What did we do / decide" | `claude-mem:mem-search`, `timeline-report` | MCP `mem_search`, `smart_search` |
| Stable facts about the user and projects | auto-memory (`MEMORY.md`) | `productivity:memory-management` |
| Clean up / merge memory | `anthropic-skills:consolidate-memory` | `import-memory` |
| Handoff between sessions | a `HANDOFF.md` in the project root | `ce-handoff`, `claude-mem:handoff` |
| Understand code | `claude-mem:smart-explore`, `learn-codebase`, `pathfinder` | - |
| Organization-wide knowledge | `enterprise-search:*` | Needs connected sources |
| Local notes / Obsidian | `desktop-commander:obsidian-vault`, `knowledge-base` | - |
| Agent cost | `claude-mem:agent-cost-report` | - |
