# dev-upgrade-agents

Agents for upgrading existing software, with the skill they rely on.

| Component | Role |
|---|---|
| `system-upgrader` | Scans a system (web, Electron, Chrome extension), plans sprints with measurable contracts, executes with a commit per sprint and before/after screenshots |
| `upgrade-evaluator` | Independent, skeptical read-only evaluator: verifies each contract and scores 10 dimensions with evidence. Run it after every `system-upgrader` run |
| `page-upgrader` | Upgrades a single page or module (domain research, UX/mobile/desktop, missing features) |
| `tool-standards-audit` | Audits one tool against your standards document and reports evidence-based findings |
| skill `system-upgrade` | Orchestration, `scripts/detect.py` deterministic detector, 10-dimension `scoring.md`, references for Hebrew RTL, responsive, WCAG 2.2 / IS 5568, design quality, UX flows, settings and AI |

The detector needs Python 3. A browser MCP tool (Playwright, Chrome DevTools or similar) enables live checks; without one, live-dependent dimensions are marked unverified instead of guessed. Agents work on a dedicated git branch, commit per sprint, and never force-push.

## עברית

סוכנים לשדרוג מערכות קיימות מקצה לקצה (RTL, מובייל/דסקטופ, נגישות, UX), מעריך עצמאי וסקפטי, שדרוג עמוד בודד, וביקורת כלי מול מסמך סטנדרטים. כולל הסקיל `system-upgrade`.
