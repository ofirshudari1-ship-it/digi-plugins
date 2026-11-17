---
name: ops-video
description: Entry point for video, motion graphics, captions and slideshow work. Always starts at the hyperframes skill; this router only says which child skill follows. וידאו, מוישן, כתוביות, סרטון, סלייד שואו. Trigger on - סרטון, וידאו, אנימציה, motion, כתוביות, ריל.
---

# ops-video

Mandatory entry point: `hyperframes`. The skills below complement each other and are installed separately.

| Request | Skill |
|---|---|
| Short design-led piece (up to 30 s, no narration) | `motion-graphics` |
| Long / narrated / multi-scene | `general-video`, `faceless-explainer` |
| Music to video | `music-to-video` |
| PR to video | `pr-to-video` |
| Product launch | `product-launch-video` |
| Captions / talking head | `embedded-captions`, `talking-head-recut` |
| Slideshow video | `slideshow` (file decks: `ops-docs-office`) |
| Media (BGM, SFX, image, voice) | `media-use` |
| Figma to motion | `figma` |
| Remotion to HyperFrames | `remotion-to-hyperframes` |
| Framework sub-skills | `hyperframes-core`, `-animation`, `-audio`, `-cli`, `-creative`, `-keyframes`, `-registry`, `-studio` |
