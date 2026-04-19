# AI Image Slop Patterns — Research Brief (2026-04-19)

Citation discipline: every claim below is cited. Unsourced items marked [UNVERIFIED].

## 2026 slop patterns (visual tells)

- **Porcelain/waxy skin** — AI smooths pores, hairs, blemishes into a mannequin finish ([AIFaceSwap](https://www.aifaceswap.art/blog/ultimate-guide-spotting-ai-generated-images-ai-image-generator-tells)).
- **Garbled text** — background signs, books, t-shirts render as gibberish that looks like language from afar ([AIFaceSwap](https://www.aifaceswap.art/blog/ultimate-guide-spotting-ai-generated-images-ai-image-generator-tells)); inconsistent fonts, kerning, sizing.
- **Hands/fingers** — six fingers, odd angles, unnatural grip still fails in 2026 ([AIorNot.us](https://aiornot.us/articles/why-ai-hands-still-look-weird-and-how-to-spot-them.php)).
- **Glossy/waxy patches + repeating patterns** — diffusion leaves faint tiling in corners and flat areas, plus slight pixel blurring in unexpected zones ([Leon Furze](https://leonfurze.com/2026/01/19/can-you-spot-an-ai-generated-image/)).
- **VAE spectral shift** — FLUX.1 and SDXL leave a pervasive reconstruction signature across even "unedited" regions ([arXiv 2602.00192](https://arxiv.org/abs/2602.00192)).
- **AI "sheen"** — oversaturated colors, excessive glow, synthetic plastic cast ([ZeroSkillAI](https://zeroskillai.com/advanced-negative-prompt-guide-weights-embeddings/)).
- [UNVERIFIED] Symmetric earrings that don't match, fused hair edges, floating props, catchlights mismatched to light direction — widely repeated in practitioner lore, no single citable study found today.

## Category-specific slop

- **Product** — plastic-looking packaging, too-clean mockup sheen [UNVERIFIED as a published finding; practitioner consensus].
- **Portrait** — porcelain skin, uncanny eyes, too-perfect teeth ([Kellogg Insight via Interesting Engineering list](https://interestingengineering.com/lists/10-ways-spot-ai-generated-images)).
- **Lifestyle** — frozen fake smiles and broken hand poses ([AIorNot.us](https://aiornot.us/articles/why-ai-hands-still-look-weird-and-how-to-spot-them.php)).
- **Food** — plastic sheen and impossibly clean plating [UNVERIFIED].

## Positive realism markers

- Visible skin pores, tiny hairs, micro-blemishes ([LetsEnhance 2026 guide](https://letsenhance.io/blog/all/enhance-portraits-guide/)).
- Consistent shadow direction; catchlights aligned with key light.
- Imperfect kerning on real signage; legible text holds up zoomed in.
- True depth-of-field falloff driven by aperture physics, film grain, minor motion blur ([AVB prompt guide](https://aivideobootcamp.com/blog/photorealistic-ai-prompts-guide-2026/)).

## How to prompt OUT of slop

- Name a camera body, lens, aperture, film stock, and lighting ("shot on 85mm, f/1.8, cinematic rim light") ([AVB](https://aivideobootcamp.com/blog/photorealistic-ai-prompts-guide-2026/); [ArtSmart](https://artsmart.ai/blog/ai-image-prompts-photorealistic/)).
- Negative prompts: `deformed eyes, extra fingers, mutated hands, blurry, cartoon, 3d render, illustration, oversaturated, plastic texture` ([pxz.ai](https://pxz.ai/blog/best-negative-prompts-for-realistic-ai-images); [ZeroSkillAI](https://zeroskillai.com/advanced-negative-prompt-guide-weights-embeddings/)).
- Keep negatives shorter than your main prompt — longer negatives fight the model ([ZeroSkillAI](https://zeroskillai.com/advanced-negative-prompt-guide-weights-embeddings/)).

## Post-gen audit checklist (10 checks)

1. Count fingers and toes; check grip realism.
2. Zoom every piece of text — legible or gibberish?
3. Skin pore texture present, not waxy.
4. Catchlights match key light direction.
5. Shadows cast consistent direction and softness.
6. Earrings/jewelry paired and symmetrical.
7. Hair edges separate cleanly from background (no fusion).
8. Check corners/flat areas for tiled noise.
9. Depth-of-field falloff feels physical, not cut-out.
10. Run through [Hive Moderation](https://hivemoderation.com/ai-generated-content-detection) (94% acc.) or [Illuminarty](https://ddiy.co/ai-image-detection-tools/) (91% acc., heatmap + model-ID) before shipping.

Note: by Jan 2026 the average viewer can no longer reliably spot AI vs real ([Leon Furze](https://leonfurze.com/2026/01/19/can-you-spot-an-ai-generated-image/)) — ship through a detector, not vibes.
