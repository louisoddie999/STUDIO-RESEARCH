# AI Image Generators — State of the Art (2026-04-19)

Citation discipline: every pricing and version claim maps to a URL below. [UNVERIFIED] = could not confirm from primary source.

## Generator matrix

| Generator | Version | Provider | Price/image (USD) | Strengths | Weaknesses | Best for |
|---|---|---|---|---|---|---|
| Gemini 3.1 Flash Image (Nano Banana 2) | preview, launched 2026-02-26 | Google DeepMind | $0.067 at 1K, $0.101 at 2K, $0.151 at 4K (batch = 50% off) [1][2] | Legible in-image text, 5-character consistency, 14-object fidelity, 2K/4K upscale, web-search grounding | SynthID watermark on every output; preview status; no free API tier [1] | Product + portrait + text-in-image + editorial |
| Flux 2 Pro | flux-2-pro (8 reference images) | Black Forest Labs / Replicate | [UNVERIFIED per-image on Replicate page] [3] | Photographic realism benchmark 2026; 200-word prompt adherence; multi-ref compositing | Slow vs Flash; no official text-layout spec | Photoreal product + lifestyle |
| Flux Kontext Pro/Max | flux-kontext-pro / -max | Black Forest Labs | [UNVERIFIED per-image] [3][4] | Instruction-based surgical edits; preserves non-edited regions; logo/packaging iteration | Not a from-scratch generator | Img2img, packaging swaps, scene changes |
| Midjourney | V8 Alpha (2026-03-17); V7 stable | Midjourney | Sub only: $10/$30/$60/$120 mo [5] | Style coherence, --sref style library, moodboards, stealth mode | No public API; GPU-hour billing; commercial rev cap on Basic/Standard [5] | Illustration, editorial mood, creative direction |
| Ideogram 3.0 | 3.0 (+ V3 Turbo) | Ideogram | Quality $0.09, Turbo $0.03 API; web $0.009/img on sub [6] | Best-in-class legible text in images, typographic logos/posters | Weaker at photoreal faces vs Flux/Gemini | Logos, posters, text-heavy marketing |
| GPT Image 1.5 | gpt-image-1.5 (current); gpt-image-1 legacy | OpenAI | Low $0.009, Med ~$0.05, High ~$0.09 at 1024² [7] | Prompt reasoning, multimodal edits, clean API | Heavier safety filters; lower photoreal than Flux 2 | Lifestyle, concept, mixed-media |
| Seedream 4.5 | 4.5 (Dec 2025); 5.0 planned Feb 2026 [UNVERIFIED launched] | ByteDance | $0.04/image (OpenRouter, fal); $0.027 Seedream v4 (WaveSpeed) [8][9] | Native 4K, ~1.8s render, strong legible text, no watermark [9] | Limited Western-market docs; China-based provider | Product shots at scale, e-com bulk |
| DALL-E 3 / DALL-E 2 | deprecated 2026 | OpenAI | DALL-E 3 $0.04–$0.12; DALL-E 2 $0.02 [7] | Wide integration | Officially deprecated per OpenAI catalog [7] | Legacy only |

## Img2img / reference-image ranking (preserve packaging, change scene)

1. **Flux Kontext Pro/Max** — instruction-based editing, surgically preserves untouched regions; designed for "swap logo, keep scene" and inverse [4][10].
2. **Flux 2 Pro / Flex** — 8–10 reference image slots for compositional control [3].
3. **Gemini 3.1 Flash Image** — 14-object fidelity across edits; good for localization/scene swaps [1].
4. **Seedream 4.5** — strong structural coherence across edits [9].
5. **Midjourney V7/V8** — --sref (style) + Omni Reference (was --cref); weaker at strict preservation [5][11].

Strength range for "preserve packaging, change scene": Kontext uses instruction prompts (not 0-1 strength slider) — describe what to preserve. For ComfyUI/Replicate img2img sliders, 0.55–0.75 denoise typically keeps product geometry while re-lighting scene [UNVERIFIED exact sweet spot per provider].

## Text-in-image ranking

1. **Ideogram 3.0** — purpose-built for legible typography; the reference standard [6].
2. **Seedream 4.5** — "exceptional text rendering, accurate legible typography" [9].
3. **Gemini 3.1 Flash Image** — "render legible text directly into images" with font/size control [1].
4. **Flux 2 Pro / Flux 1.1 Pro Ultra** — solid but occasional glitch on long strings [3].
5. **Midjourney V8** — "dramatically improved text rendering" vs V7, still trails Ideogram [5].
6. **GPT Image 1.5** — improving, not a leader.

## Prompt syntax cheatsheet

- **Midjourney V7/V8**: `--ar 16:9 --s 250 --sref <code> --sv 6 --cref <url>` (use Omni Reference in V7+), `--q 4` = 4× GPU, `--hd` = 2K native V8. No negative prompts natively (use `--no`) [11][5].
- **Flux (Replicate/BFL)**: natural language; `aspect_ratio`, `prompt_strength` (0–1 for img2img), `guidance`, `num_inference_steps`. No `--` flags. No true negative prompt in flagship; Kontext uses instruction verbs ("change X", "keep Y") [4][10].
- **Gemini 3.1 Flash Image**: JSON request; `aspect_ratio` (square/portrait/landscape/16:9), optional resolution target (1K/2K/4K). Reference images as inline parts. No negative prompt [1].
- **Ideogram**: `magic_prompt`, `style_type`, `aspect_ratio`, `negative_prompt` supported; `character_reference_image` billed at premium rate [6].
- **GPT Image 1.5**: OpenAI SDK; `size` (1024², 1536², 1024×1536), `quality` (low/medium/high), `background`, input mask for edits [7].
- **Seedream 4.5**: prompt + `aspect_ratio` + optional reference; via OpenRouter/fal/Replicate [8][9].

## Gotchas

- **SynthID** is embedded in every Gemini output and survives most re-saves; not removable legitimately [12]. C2PA metadata is easier to strip but is adopted by Midjourney, DALL-E, Sora [12].
- **DALL-E 2/3 deprecated** in OpenAI catalog as of March 2026 — migrate to gpt-image-1.5 [7].
- **Midjourney rev cap**: $1M+ annual revenue requires Pro or Mega plan for commercial use [5].
- **Ideogram API** costs 6–7× web subscription per image — buy credits via sub for volume [6].
- **Seedream** docs in English remain thin; pricing varies $0.027–$0.04 across providers [8][9].
- **Content filters**: GPT Image 1.5 strictest on people/brands; Flux 2 and Seedream most permissive [13].
- **Flux 2 Klein 9B/4B** = distilled/fast variants, quality < Pro/Max [3].
- **Gemini image preview** status means API surface can change without notice [1].

## Sources

1. https://deepmind.google/models/gemini-image/flash/ — DeepMind Nano Banana 2 / Gemini 3.1 Flash Image spec page
2. https://blog.laozhang.ai/en/posts/gemini-3-1-flash-image-preview — 1K/2K/4K official pricing breakdown
3. https://replicate.com/black-forest-labs — Flux 2 Max/Pro/Flex/Dev/Klein + Flux 1.1 Pro Ultra + Kontext Pro/Max/Dev model list
4. https://bfl.ai/models/flux-kontext — Kontext instruction-edit model page
5. https://docs.midjourney.com/hc/en-us/articles/27870484040333-Comparing-Midjourney-Plans — plans/tiers
6. https://docs.ideogram.ai/plans-and-pricing/ideogram-api — API tier pricing
7. https://openai.com/api/pricing/ via https://costgoat.com/pricing/openai-images — GPT Image 1.5 / 1 / DALL-E 3 pricing
8. https://openrouter.ai/bytedance-seed/seedream-4.5 — Seedream 4.5 $0.04/image
9. https://wavespeed.ai/blog/posts/seedream-4-5-complete-guide-2026/ — features, 4K, text rendering
10. https://docs.bfl.ai/guides/prompting_guide_kontext_i2i — Kontext img2img prompting
11. https://docs.midjourney.com/hc/en-us/articles/32859204029709-Parameter-List — V7 parameter list
12. https://arxiv.org/html/2510.09263v1 + https://blog.google/technology/ai/google-gen-ai-content-transparency-c2pa/ — SynthID scale + C2PA adoption
13. https://wavespeed.ai/blog/posts/best-ai-image-generators-2026/ — product photography benchmark summary
