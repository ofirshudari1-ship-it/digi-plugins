# Third-party notices

This plugin is a derivative compilation of MIT and Apache-2.0 projects (two main sources plus, from 1.1.0, smaller adaptations listed below). Copyright and license
notices are preserved here; the upstream author names also remain in the metadata of copied files.

| Source | Version | Author | License | What was taken |
|---|---|---|---|---|
| claude-seo | 2.4.2 | AgriciDaniel (https://github.com/AgriciDaniel/claude-seo) | MIT, Copyright (c) 2026 agricidaniel | Sub-skills cluster, sxo, agentic, content-brief, competitor-pages, backlinks (adapted); `scripts/ext/*` (adapted import shim); `references/free-backlink-sources.md`, `references/local-extra/*`; agent role definitions (rewritten) |
| ultimate-seo-geo | 1.22.1 | Myk Pono (https://github.com/mykpono/ultimate-seo-geo) | MIT (declared in plugin.json and README of upstream; no LICENSE file shipped in the package) | `scripts/*.py` (unchanged), `references/**` (unchanged), routing table of the router skill (rewritten) |

| geo-seo-claude | commit 989cae0 | Zubair Trabzada (https://github.com/zubair-trabzada/geo-seo-claude) | MIT, Copyright (c) 2026 Zubair Trabzada | Ideas of `geo-platform-optimizer` and `geo-brand-mentions`, rewritten into `skills/dso-ai-platforms` |
| seo-geo-claude-skills | tag v9.9.12 | Aaron He Zhu (https://github.com/aaron-he-zhu/seo-geo-claude-skills) | Apache-2.0, Copyright 2024 Aaron He Zhu (full text: `LICENSES-aaron-apache-2.0.txt`) | `scripts/ext/ledger.py` (copied; default store folder and header comment changed); concepts of rank-tracker, alert-manager, content-refresher, serp-analysis rewritten into `dso-monitor` and `dso-keywords-il` |
| SearchFit SEO | 1.0.0 (ced1a99 / HEAD c324a2e) | SearchFit.ai (https://github.com/searchfit/searchfit-seo) | MIT, Copyright (c) 2026 SearchFit.ai | Reviewed, nothing copied |
| claude-seo-kit | f8a074f | FreeAutomation-Tech (https://github.com/FreeAutomation-Tech/claude-seo-kit) | MIT, Copyright (c) 2026 FreeAutomation-Tech | Reviewed, nothing copied |

Seven skills added in 1.1.0 (`dso-keywords-il`, `dso-hebrew-content`, `dso-hebrew-search`, `dso-voice-video`, `dso-wix-seo`, `dso-algo-watch`, `dso-client-report`) are original to this plugin (MIT, ofirshudari1-ship-it).

MIT License text (applies to the MIT sources):

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above
copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.
