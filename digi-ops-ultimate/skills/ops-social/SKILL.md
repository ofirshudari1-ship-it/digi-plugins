---
name: ops-social
description: Router for social media - Facebook/Instagram and LinkedIn. Use for posts, stories, reels, content calendar, LinkedIn articles and outreach. סושיאל, פייסבוק, אינסטגרם, לינקדאין, פוסט, סטורי, ריל, יומן תוכן. Trigger on - תפרסם, פוסט, סטורי, ריל, לינקדאין.
---

# ops-social

| Capability | Preferred | Notes |
|---|---|---|
| FB/IG posts, stories, reels, calendar | Your social agent if any, else `small-business:social-content-engine` | - |
| LinkedIn posts, articles, outreach | `linkedin-content` (if installed), else `sales:draft-outreach` | - |
| Copy | `ops-content` | - |
| Visual asset | `ops-design` | - |
| Actual publishing | `postiz:postiz` or a logged-in browser session | Draft or schedule first |

Rules
- Never publish without explicit approval per post.
- Organic only: decline boost/promote prompts unless the owner asks.
- Respect the business's publishing days and posting cadence.
