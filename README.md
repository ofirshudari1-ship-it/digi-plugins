# digi-plugins

Claude Code plugin marketplace with five plugins.

| Plugin | What it is |
|---|---|
| `digi-seo-ultimate` | Unified SEO + GEO/AEO plugin: router skill, lead agent, six analysis-only specialist agents, audit scripts, 26 procedures, Hebrew/RTL and Wix skills. Findings and drafts only; never writes to a CMS |
| `digi-ops-ultimate` | 13 domain router skills (content, design, social, ads, reputation/leads, dev toolchain, video, docs, automation/data, inbox, Wix, memory, MCP tools) plus an index skill |
| `hebrew-marketing-agents` | 14 generalized marketing agents for Israeli businesses: social media, LinkedIn, ads, reputation, CRO, UX/performance/accessibility (IS 5568), Israeli compliance (Privacy Amendment 13), design briefs, email, lead ops, analytics, competitor watch, directories, Wix apps. Drafts and findings only |
| `hebrew-copywriter` | Hebrew copywriting agent + style skill with before/after examples. Plain, persuasive, human-sounding Hebrew with correct RTL handling |
| `dev-upgrade-agents` | `system-upgrader`, `upgrade-evaluator`, `page-upgrader`, `tool-standards-audit` + the `system-upgrade` skill (detector script, 10-dimension scoring, RTL/responsive/WCAG references) |

Business context is never baked in: the marketing agents read it from your own project files (`CLAUDE.md` or a brand/config file). All agents are draft/findings oriented and do not send, publish, delete or spend money without explicit approval. MCP connections are optional; nothing requires a private connector.

## Install

```
claude plugin marketplace add ofirshudari1-ship-it/digi-plugins
claude plugin install digi-seo-ultimate@digi-plugins
claude plugin install digi-ops-ultimate@digi-plugins
claude plugin install hebrew-marketing-agents@digi-plugins
claude plugin install hebrew-copywriter@digi-plugins
claude plugin install dev-upgrade-agents@digi-plugins
```

Install only what you need. `hebrew-marketing-agents` delegates copy to `hebrew-copywriter` when both are installed; SEO/GEO work belongs to `digi-seo-ultimate` (no overlap by design).

## עברית

מרקטפלייס של פלאגינים ל-Claude Code עם חמישה פלאגינים:

- `digi-seo-ultimate` - פלאגין SEO + GEO/AEO: סקיל ראוטר, סוכן מוביל, שישה סוכני ניתוח, סקריפטי audit, 26 נהלים, וסקילים לעברית/RTL ול-Wix. מפיק ממצאים וטיוטות בלבד.
- `digi-ops-ultimate` - 13 סקילי ראוטר לתחומי עבודה (תוכן, עיצוב, סושיאל, פרסום, מוניטין, פיתוח, וידאו, מסמכים, אוטומציה, מייל, Wix, זיכרון, MCP) ועוד סקיל אינדקס.
- `hebrew-marketing-agents` - 14 סוכני שיווק דיגיטלי מוכללים לעסקים בישראל (סושיאל, לינקדאין, פרסום ממומן, מוניטין, CRO, UX ונגישות ת"י 5568, עמידה בדין הישראלי, בריפים לעיצוב, מייל, לידים, אנליטיקס, מתחרים, מאגרי עסקים, אפליקציות Wix). הקשר העסק נלקח מקבצי הפרויקט שלך.
- `hebrew-copywriter` - סוכן קופירייטינג בעברית וסקיל סגנון עם דוגמאות לפני/אחרי.
- `dev-upgrade-agents` - סוכני שדרוג מערכות ובדיקת סטנדרטים, וסקיל `system-upgrade`.

התקנה: ראו הפקודות למעלה.

## License

MIT, see `LICENSE`. Third-party components keep their own licenses (`digi-seo-ultimate/THIRD_PARTY_NOTICES.md`).
