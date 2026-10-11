---
name: ops-docs-office
description: Router for office documents - Word, Excel, PowerPoint, PDF, living docs and reports. Use to pick the single skill for a file format. מסמכים, וורד, אקסל, מצגת, PDF, דוח, חתימה. Trigger on - docx, xlsx, pptx, pdf, מסמך, דוח, טופס, חתימה.
---

# ops-docs-office

| Capability | Preferred |
|---|---|
| Word (including Hebrew RTL) | `anthropic-skills:docx` |
| Excel | `anthropic-skills:xlsx` |
| PowerPoint | `anthropic-skills:pptx` |
| PDF create/process | `anthropic-skills:pdf` |
| PDF view, annotate, fill, sign | `pdf-viewer:view-pdf`, `annotate`, `fill-form`, `sign` |
| Living shared document | `anthropic-skills:docs` |
| Drive / Sheets / Gmail | `anthropic-skills:google-workspace` |
| Interactive page | Artifact |
| Business reports | `ops-ads-measurement`, `small-business:report-builder`, `report-pack`, `business-pulse` |
| Process docs / runbooks | `operations:process-doc`, `runbook`, `status-report` |
