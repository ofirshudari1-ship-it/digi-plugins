<p align="center"><img src="assets/banner.svg" alt="Claude Code Plugin Atelier"></p>

# Claude Code Plugin Atelier

**Five free plugins that give Claude Code ready-made experts for SEO, marketing, Hebrew writing, tool routing and software upgrades.** Built for small businesses and freelancers, tested on real Israeli sites. MIT licensed.

[עברית](README.he.md)

## Why install
| Without a plugin | With it |
|---|---|
| You write a long prompt every time ("audit my site, check schema, check AI crawlers...") | One sentence. The plugin already knows the checklist |
| Claude guesses which tool to use | A router picks one tool per job |
| Hebrew copy sounds like a translation | A style guide for natural, RTL-safe Hebrew |
| An agent might publish or send things | Everything is **draft and findings only**. Nothing is sent, posted, deleted or paid for without your approval |

No account, no API key and no private connector is required to start. Optional connectors make results richer (see each table).

## The plugins
| Plugin | What it does in plain words | Works with (optional) | Try saying |
|---|---|---|---|
| **[Searchlight](searchlight/README.md)** | Checks why a site does not rank on Google or show up in ChatGPT, Gemini and Perplexity, and lists fixes by severity. One lead agent and six specialists: technical, content, links, local, data, AI/schema | Google Search Console, GA4, Lighthouse, PageSpeed, Ahrefs, Semrush, Wix | "Audit example.com and rank the fixes by severity" |
| **[Dispatch Desk](dispatch-desk/README.md)** | A switchboard. Tells Claude which tool or skill should handle a job (content, design, social, ads, reviews, video, documents, automation, email, Wix) | Make, Zapier, Canva, Figma, Gmail, WhatsApp, Wix, Composio | "Which tool should handle a weekly report?" |
| **[Shuk Crew](shuk-crew/README.md)** | 14 marketing helpers for Israeli businesses: social posts, LinkedIn, ads, review replies, conversion, accessibility (IS 5568), privacy law (Amendment 13), leads, email triage, competitors, directories | Facebook, Instagram, LinkedIn, Google Business Profile, GA4, Gmail, Make, Wix | "Run the reputation agent on our Google reviews" |
| **[Inkwell](inkwell/README.md)** | Writes Hebrew that sounds human: landing pages, blog posts, emails, WhatsApp, ads, review replies. Avoids AI-sounding filler | WhatsApp, Gmail, social networks (drafts only) | "Write a landing page headline set in Hebrew" |
| **[Forge](forge/README.md)** | Upgrades an existing app or page: scans it, plans sprints, fixes RTL, mobile, accessibility and speed, then a second agent scores the result skeptically | Playwright, Lighthouse | "Upgrade this Electron app end to end" |

## Install (2 minutes)
```bash
claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
```
```bash
claude plugin install searchlight@digi-plugins
```
Replace `searchlight` with `dispatch-desk`, `shuk-crew`, `inkwell` or `forge`.

## Good to know
- **Plugins** bundle skills, agents and scripts. **Skills** are step-by-step playbooks Claude follows. **Agents** are helpers that work on their own and send back a report.
- Safe by design: read-only by default, approval before any outward action.
- Findings are only as good as the data. If a source (for example Search Console) is not connected, the plugin says so and does not invent numbers.
- Found a problem or want a feature? Open an issue.

## License
MIT. Free for personal and commercial use.
