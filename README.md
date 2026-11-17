<p align="center"><img src="assets/banner.svg" alt="Claude Code Plugin Atelier"></p>

# Claude Code Plugin Atelier

A marketplace of five Claude Code plugins for SEO, marketing, copywriting, operations routing and software upgrades. Every plugin is draft-and-findings oriented: nothing is sent, published, deleted or paid for without your approval. No private connector is required.

## The plugins

| Logo | Plugin | What it does | Typical prompt |
|---|---|---|---|
| <img src="searchlight/assets/logo.svg" width="48"> | **[Searchlight](searchlight/README.md)** | Unified SEO + GEO/AEO toolkit: one router skill, a lead agent, six specialist agents (technical, content, links, local, data, GEO/schema), audit scripts, 26 procedures. Findings and drafts only. | "Audit example.com and rank the fixes by severity" |
| <img src="dispatch-desk/assets/logo.svg" width="48"> | **[Dispatch Desk](dispatch-desk/README.md)** | 13 domain routers (content, design, social, ads, reputation, dev toolchain, video, docs, automation, inbox, Wix, memory, MCP tools) plus an index. One winner per capability, so Claude picks the right tool first time. | "Which tool should handle a weekly report?" |
| <img src="shuk-crew/assets/logo.svg" width="48"> | **[Shuk Crew](shuk-crew/README.md)** | 14 marketing agents for Israeli businesses: social, LinkedIn, ads, reputation, CRO, UX and accessibility (IS 5568), privacy compliance, design briefs, email, lead ops, analytics, competitor watch, directories, Wix apps. | "Run the reputation agent on our Google reviews" |
| <img src="inkwell/assets/logo.svg" width="48"> | **[Inkwell](inkwell/README.md)** | Hebrew copywriting agent with a style skill and before/after examples. Plain, persuasive, human-sounding Hebrew with correct RTL handling. | "Write a landing page headline set in Hebrew" |
| <img src="forge/assets/logo.svg" width="48"> | **[Forge](forge/README.md)** | Upgrade agents: system-upgrader, upgrade-evaluator, page-upgrader and tool-standards-audit, plus the `system-upgrade` skill (detector script, 10-dimension scoring, RTL, responsive and WCAG references). | "Upgrade this Electron app end to end" |

## Install

```bash
claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
```

Then install only what you need:

```bash
claude plugin install searchlight@digi-plugins
claude plugin install dispatch-desk@digi-plugins
claude plugin install shuk-crew@digi-plugins
claude plugin install inkwell@digi-plugins
claude plugin install forge@digi-plugins
```

## How it works

1. **Skills** load into your current chat when you type `/name` or your request matches their trigger.
2. **Agents** are delegated sub-sessions with their own tools. They work alone and return a report.
3. **Routers** (Dispatch Desk, Searchlight) decide which skill or agent should take a task, so overlap never happens.
4. Business context is never baked in. Agents read it from your own `CLAUDE.md` or a brand/config file.

Shuk Crew hands copy to Inkwell when both are installed. SEO and GEO work belongs to Searchlight only.

## Previous names

| Old name | New name |
|---|---|
| digi-seo-ultimate | searchlight |
| digi-ops-ultimate | dispatch-desk |
| hebrew-marketing-agents | shuk-crew |
| hebrew-copywriter | inkwell |
| dev-upgrade-agents | forge |

## License

MIT
