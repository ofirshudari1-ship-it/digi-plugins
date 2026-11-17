---
name: ops-design
description: Router for design and asset production - local generation first, Canva/Figma only where they add value. Use for images, banners, social graphics, brand checks, charts and design-system work. עיצוב, באנר, תמונה, לוגו, מיתוג, Canva, Figma, גרף. Trigger on - תעצב, באנר, פוסט גרפי, brand check, dataviz.
---

# ops-design - design and assets

| Capability | Preferred | Notes |
|---|---|---|
| Static marketing asset (post, banner, OG image, compression) | Your project's design agent, then `local-designer` (local, free) if installed | Avoid paid generation unless the owner approves |
| Brand identity (color/font/logo) | Brand files in the project | Read-only brand lookups from design tools are fine |
| Edit existing design, resize for social, bulk create | `canva:edit-design`, `canva:resize-for-social-media`, `canva:bulk-create` | - |
| Brand compliance check | `canva:brand-check` | `marketing:brand-review` as a checklist |
| Design critique and accessibility | `design:design-critique`, `design:accessibility-review` | - |
| Design system / handoff | `design:design-system`, `design:design-handoff` | - |
| Figma to/from code | `figma:*` | - |
| Charts, KPIs, dashboards | `dataviz` (read before any chart) | `data:create-viz` |
| Artifact pages | `artifact-design`, `artifact-diagramming` | - |

Rules: no automatic paid spend; prefer editing real brand assets over generating from scratch.
