---
name: ops-dev-toolchain
description: Router for the development toolchain - planning, review, commit, debug, security, release, upgrade, testing. One winner per step among compound-engineering, claude-mem, claude-security and project skills. תכנון, code review, commit, אבטחה, שחרור, שדרוג מערכת, בדיקות. Trigger on - תכנן, review, commit, secrets, release, שדרג, בדוק אבטחה.
---

# ops-dev-toolchain

| Step | Preferred | Complement |
|---|---|---|
| Brainstorm | `compound-engineering:ce-brainstorm` | `ce-ideate` for broad ideas |
| Plan | `ce-plan` | `ce-strategy` for direction |
| Execute | `ce-work` (`lfg` for a full run) | - |
| Debug | `ce-debug` | - |
| Review | `ce-code-review` | `/code-review` for a quick pass; `ce-doc-review` for documents |
| Simplify | `ce-simplify-code` | built-in `/simplify` |
| Commit / PR | `ce-commit`, `ce-commit-push-pr`, `ce-resolve-pr-feedback` | - |
| PR babysitting | `ce-babysit-pr` | - |
| Worktrees | `ce-worktree` | - |
| Browser tests | `playwright` MCP | `ce-test-browser` |
| Security before commit/release | `/security-review` | a secrets-scan skill if you have one |
| Full audit / pen-test | `security-audit` | `claude-security:scan` |
| Release | a release-checklist skill if you have one | - |
| Handoff | `ce-handoff`, `claude-mem:handoff` | - |
| Create a skill/plugin | `anthropic-skills:skill-creator`, `plugin-authoring` | - |
| Document a solution | `ce-compound`, `ce-compound-refresh` | - |

Maintenance helpers: `claude-code-setup:claude-automation-recommender` (read-only recommendations), `claude-md-management:revise-claude-md` and `claude-md-improver` (write only after approval).
