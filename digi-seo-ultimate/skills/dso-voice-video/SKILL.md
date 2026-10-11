---
name: dso-voice-video
description: >
  Voice-search and video/YouTube SEO: conversational and question-led pages for voice and assistants, and YouTube/video optimization (titles, chapters, Hebrew captions, VideoObject schema, thumbnails, embedding on site pages). Use for "optimize for voice search", "YouTube SEO", "video schema". Drafts and checks only.
user-invocable: true
argument-hint: "<url or video url> [voice|video]"
license: MIT
---

# dso-voice-video (original)

## Voice / conversational search

1. Voice answers come from the same index as text answers: a page that already ranks and answers directly is the target. No separate "voice SEO" tricks.
2. Build from question queries (`dso-keywords-il`, PAA): H2 as the spoken question, 1-2 sentence answer (roughly 25-50 words) directly under it, then detail.
3. Local intent dominates voice ("near me" style, opening hours, phone): complete GBP, consistent NAP, `LocalBusiness` schema with hours, `speakable` is optional and low-value, do not prioritize.
4. Measure: GSC queries that are full questions, long-tail share, snippet ownership. Volume data for voice does not exist: say so.

## Video / YouTube SEO

| Item | Rule |
|---|---|
| Title | Main Hebrew phrase early, under about 60 chars visible, curiosity without clickbait |
| Description | First 2 lines carry the answer and the site link; chapters (timestamps starting 0:00, at least 3); related links |
| Captions | Upload a proofread Hebrew subtitle file (auto-captions are unreliable in Hebrew); transcript also on the site page |
| Thumbnail | Readable on mobile, Hebrew text large, face or object, consistent branding |
| Playlists and channel | Topic playlists, channel description with keywords and link, pinned CTA comment |
| On-site | Embed on the page that targets the same query; `VideoObject` JSON-LD (name, description, thumbnailUrl, uploadDate, duration, contentUrl or embedUrl) matching the visible video; video sitemap if many |
| Measurement | YouTube Studio (impressions, CTR, retention) and GSC "Videos" appearance; AI engines (Gemini, AI Overviews) cite YouTube, see `dso-ai-platforms` |

Rules: no fake views, no purchased engagement, no keyword-stuffed tags. Producing video belongs to `ops-video` / `social-media-agent`; Hebrew script and description copy to the copywriter.

## Output

Table `ID | Asset/URL | Gap | Fix | Owner | Verify-live`; schema drafts go to the AI-visibility owner for deployment.
