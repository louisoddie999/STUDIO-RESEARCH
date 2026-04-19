# Portrait Domain Stress Report — Studio Cavalry
**Date:** April 19, 2026  
**Testing Scope:** Portrait generation across 6 current generators; failure mode analysis; dark skin accuracy; African features; legal/ethical considerations.

---

## TL;DR
- **Portrait leader (2026):** Flux 2 Max > Gemini 3.1 Flash Image > GPT-4o > Ideogram 3
- **Critical failure modes:** 6 fingers, melted eyes, porcelain/plastic skin, wrong catchlight direction, hair texture generic, skin undertone mismatch on dark subjects, clothing folds defying gravity, asymmetric accessories
- **Dark skin accuracy:** Gemini 3.1 Flash demonstrates strongest real-world dark skin rendering in official examples; Flux 2 leads on photorealism but limited public dark skin benchmarks [UNVERIFIED]
- **African hair (4C/4B):** AI struggles with coil density, shrinkage simulation, zig-zag structure definition — no AI currently replicates 4C accurately [UNVERIFIED]
- **Cavalry subset:** studio-orchestrator → studio-race (Flux 2 Max candidate) → reality-engine → color-palette-lock → studio-slop-check (portrait tier) → creative-auditor
- **Legal:** TAKE IT DOWN Act (May 2025) makes non-consensual intimate AI portraits a federal crime; first conviction April 2026; all platforms must remove on notice within 12 months

---

## 1. Portrait Failure Modes — Comprehensive Taxonomy

### Skin & Complexion
- **Porcelain/plastic texture:** Over-smoothing, loss of pore definition, especially on close-ups
- **Skin undertone mismatch:** Deep skin tones rendered with orange/gray cast instead of warm undertone; light skin over-cool
- **Asymmetric skin tone:** Face, hands, neck rendered at different saturation levels
- **Missing micro-details:** No milia, no texture variation, no natural freckle/mole distribution on dark skin

### Eyes & Gaze
- **Melted/droopy eyes:** Inner corner dissolves into cheek; asymmetric eyelids
- **Wrong catchlight direction:** Light sources don't align with scene lighting; dead/flat eyes result
- **Missing iris/pupil definition:** Glazed appearance; no specular highlight on iris
- **Stare vs. gaze:** AI defaults to direct stare; candid gaze direction fails

### Hand Anatomy
- **6 fingers / fused digits:** Most common hand error; extra thumb or missing pinky
- **Impossible wrist angles:** Wrist bends 180°; palm rotates backwards
- **Skin tone mismatch:** Hands rendered 2-3 shades lighter/darker than face
- **Thumb/index asymmetry:** One hand correct, other flipped or distorted

### Hair (Especially 4C/4B Failure)
- **Generic wavy texture:** AI defaults to loose waves, not coils
- **Shrinkage not simulated:** Natural 4C shrunk length not shown; rendered as long, flowing
- **Zig-zag pattern missing:** 4B's sharp Z-bends rendered as soft waves
- **Density collapse:** Coils rendered spaced-out; missing dense volume of real 4C
- **Ethnicity-inconsistent hair:** Dark skin + European hair textures or vice versa

### Facial Symmetry & Structure
- **Asymmetric earrings:** Both ears different sizes; one earring floats or melts
- **Jaw/chin asymmetry:** One side of face wider; unnatural bite line
- **Eyebrow mismatch:** Different thickness, angle, or color per brow
- **Nose bridge distortion:** Nostril asymmetry; bridge too sharp or too flat for ethnicity

### Clothing & Folds
- **Gravity-defiant folds:** Fabric creases run vertically when fabric is draped horizontally
- **Seams dissolving:** Armholes, collar, or waistband lack definition; blend into skin
- **Button/zipper hallucination:** Extra buttons; zippers that don't connect; floating hardware

### Contextual Issues
- **AI-generic smile:** Stock photo smile; lack of micro-expression variation
- **Catchlight mismatch:** Scene has one light source; eyes show light from 3 directions
- **Background blur inconsistent:** Depth-of-field doesn't match aperture/lens choice
- **Emotional disconnect:** Neutral face + intense eye contact = uncanny

---

## 2. Per-Generator Portrait Performance Matrix (2026)

### Flux 2 Max ($0.25/image)
**Strengths:**
- Photorealistic skin texture; micro-pore definition visible
- Best at rendering natural shadow/highlight transitions on skin
- Strong catchlight directionality; eyes read as lit
- Excellent fabric realism and fold mechanics

**Weaknesses:**
- Hand anatomy still unreliable; occasional 6 fingers [source: CloudRetouch hand fixes still required](https://www.cloudretouch.com/fix-ai-generated-hand-distortion-portraits/)
- **Dark skin benchmarks:** Limited public portfolio showing dark skin rendering; relative strength [UNVERIFIED]
- Hair texture tends toward generic waves, not ethnically specific coils

**Best use:** Campaign hero portrait, founder shot (light-skinned subjects), product beauty shot.

---

### Gemini 3.1 Flash Image / Nano Banana 2 ($0.067–0.151/image)
**Strengths:**
- **Official dark skin examples strong:** Google's model card features portrait with "very dark skin and closely cropped dark hair" and another with "dark skin glows under bright illumination with textured/dreadlock hair"
- Elo 1,265 rating reflects superior rendering of "natural skin textures, realistic hair, accurate lighting, subtle details"
- Good catchlight and emotional authenticity
- Fast iteration for testing

**Weaknesses:**
- Less micro-detail than Flux 2; skin can read as slightly airbrushed
- Hair texture still generic on 4C/4B [UNVERIFIED across full dataset]
- Hand anatomy comparable to Flux 2; occasional errors

**Best use:** Dark skin portraiture (strongest evidence base), editorial environmental portrait, bulk portrait batches (cost-efficient).

**Citation:** [Gemini 3.1 Flash Image Model Card](https://deepmind.google/models/model-cards/gemini-3-1-flash-image/); [LaoZhang comparison](https://blog.laozhang.ai/en/posts/gemini-flash-image-vs-gpt-image-vs-flux)

---

### GPT-4o Image ($0.034–0.152/image)
**Strengths:**
- Consistent across 4th–5th place rankings alongside Ideogram 3
- Good prompt adherence; reliable style consistency
- Emotional authenticity comparable to Gemini 3.1

**Weaknesses:**
- No public dark skin accuracy benchmarks published [UNVERIFIED]
- Hand anatomy errors documented; requires post-processing
- Portrait realism trails Flux 2 / Gemini 3.1 on micro-detail

**Best use:** Style-locked portraits, prompt-heavy specifications, cost-conscious workflow.

**Citation:** [Artificial Analysis Image Arena ranking](https://x.com/ArtificialAnlys/status/1908139984869363899) (Jan 2026)

---

### Ideogram 3 ($0.08/image)
**Strengths:**
- Best text rendering; excellent for posters/type-heavy work
- Style consistency strong; good for branded portraits

**Weaknesses:**
- **"Human faces can appear unnatural (skin textures, proportions)"** — explicit weakness for portrait work
- Trails GPT-4o, Recraft V3, Reve Image in portrait quality
- Not recommended for dark skin or feature-critical work

**Best use:** Product/scene generation, NOT portraits.

**Citation:** [Medium comparison](https://medium.com/the-ai-entrepreneurs/gpt-4o-vs-ideogram-3-0-the-ultimate-2025-image-creation-showdown-for-innovators-and-entrepreneurs-a35930bf8631); [Whytryai benchmark](https://www.whytryai.com/p/text-to-image-comparison-gpt-4o-vs-ideogram-3-vs-reve-1)

---

### Seedream 4.5 ($0.04/image) & GPT Image 1.5 ($0.034/image)
**Strengths:**
- Cost-effective for bulk testing
- GPT 1.5 has strong text rendering

**Weaknesses:**
- No public dark skin benchmarks [UNVERIFIED]
- Portrait realism notably below Flux 2 / Gemini 3.1
- Hand/anatomy errors common

**Best use:** Rough concept testing only, not final delivery.

---

## 3. Race Candidates for High-Stakes Portrait (Campaign/Founder Shot)

### Tier 1 (Recommended)
1. **Flux 2 Max** — Best photorealism across all demographics (assumed; benchmarks limited for dark skin)
2. **Gemini 3.1 Flash Image** — Only generator with official dark skin examples; strongest evidence for dark skin accuracy

### Tier 2 (Secondary)
3. **GPT-4o** — Safe fallback; good emotional authenticity; limited dark skin data

### Disqualified
- **Ideogram 3** — Explicitly weak on portrait realism
- **Seedream / GPT 1.5** — Insufficient quality for campaign hero

**Recommendation for Nigerian/African subject:** Start with **Gemini 3.1 Flash** (dark skin pedigree) → race against **Flux 2 Max** → select winner by hand anatomy & eye quality.

---

## 4. Portrait-Specific Slop Additions to studio-slop-check

Beyond the existing 12 slop checks, add:

1. **Catchlight directionality:** Does light in eye match scene light source? Penalty if 3+ light sources in eye but only 1 visible in scene.
2. **Skin undertone accuracy:** Dark skin = warm undertone (golden/red); light skin = cool/neutral. Detect orange cast on dark skin (FAIL) or over-cool on light skin (FAIL).
3. **Hair texture ethnicity:** Does hair texture match skin tone ethnicity? Detect wavy/straight hair on subject with dark skin (FAIL); detect coil on pale skin (warning).
4. **Asymmetric accessories:** Both earrings same size + angle? Both sleeves same length? Penalty for mismatches.
5. **Hand-face tone match:** Are hands within 1 shade of face? Flag if hands 2+ shades lighter/darker.
6. **Eye specular highlight:** Do pupils have 1–2 clear highlights (catchlight)? Flat/no highlight = slop.
7. **Fabric gravity:** Does draped fabric have folds that align with gravity? Detect vertical creases on horizontal drape (FAIL).
8. **Pore/texture presence:** On skin with <10m distance (headshot), are pores/texture visible? Plastic smooth = slop.
9. **Emotional micro-expression:** Is smile or gaze varied, or is it stock-photo default? Requires semantic analysis of expression variance.

---

## 5. Portrait-Specific Prompt-Bible Additions

### Skin Tone Specifier Grammar
```
Hex-locked: "deep warm skin, #5C4033 undertone (golden-brown, not orange)"
Comparative: "rich dark skin with warm golden undertone, like mahogany in sunlight"
Avoid: "dark skin" alone (triggers generic); "chocolate" (food language degrades)
```

### Hair Texture Specifier
```
4C: "tightly coiled kinky hair, natural shrinkage, densely packed coils with no curl definition, Z-pattern bends, circumference like ink pen"
4B: "coils bend in sharp Z-angles, tighter than 4A, less defined than 4C, tight coils throughout"
Avoid: "curly", "wavy", "textured" (too vague)
Enforce: "every shot description must include hair texture if hair is visible"
```

### Ethnicity Consistency Trick
```
Anchor sentence: "Nigerian woman, [age] years old, [context]"
Forces model to hold facial structure, skin tone, hair texture, and eye shape across multiple generations
Reuse anchor in shot descriptions to enforce consistency
```

### Catchlight & Eye Quality
```
"bright, sharp eyes with dual catchlight reflections from soft key light and rim light, sharp pupil definition, no glaze"
Instead of: "realistic eyes" (vague, leads to glossy/plastic look)
```

### Emotion Granularity
```
Avoid: "happy", "sad"
Use: "subtle smile, slight mouth corner lift, eyes still thoughtful, not full grin"
"authentic joy" (forces micro-expressions over stock smile)
```

---

## 6. Legal / Ethical Framework for AI-Generated Portraits

### TAKE IT DOWN Act (May 19, 2025)
- **Federal crime:** Creating or publishing non-consensual intimate AI portraits (digital forgeries indistinguishable from real)
- **Platform duty:** Remove on report within 12 months (May 19, 2026 deadline)
- **First conviction:** April 2026 (Ohio man, created non-consensual intimate imagery of local adults and children)

**Citation:** [TAKE IT DOWN Act law summary](https://www.fisherphillips.com/en/news-insights/new-federal-ai-deepfake-law-takes-effect.html); [Skadden insights](https://www.skadden.com/insights/publications/2025/06/take-it-down-act)

### State Laws (as of Apr 2026)
- **California:** Penal Code makes non-consensual deepfake creation a crime
- **Illinois, Florida, Washington, Oregon, New Jersey, Michigan, Pennsylvania, Arizona:** Various deepfake / revenge-porn expansion laws active

**Citation:** [Ondato deepfake law guide](https://ondato.com/blog/deepfake-laws/); [Las Vegas Sun 2026](https://lasvegassun.com/news/2026/mar/30/explicit-ai-image-creation-increasingly-a-legal-is/)

### Studio Portrait Guidelines

**For Commissioned Portraits:**
1. **Explicit written consent:** Client signs that they authorize AI-generated portrait creation and use (social media, website, campaign)
2. **Likeness disclaimer:** Final image is AI-generated, not photograph; mark as "AI-generated" if used publicly
3. **Right of withdrawal:** Client can request removal/unpublishing within 30 days

**For Test/Concept Work (Non-Commercial):**
1. Do NOT publish real person's face with AI portrait without consent
2. Use placeholder names in prompts (avoid real person names that could be tracked)
3. Age verification: Never generate portrait of person under 18 without parental consent

**Red Flags / DO NOT:**
- Generate intimate/suggestive portrait of identifiable real person without explicit written consent
- Publish "before/after" real photo + AI portrait side-by-side (increases likeness confusion)
- Use AI portrait in recruitment/dating contexts to impersonate (fraud/catfishing risk)

**For Nigerian Context:** No specific AI deepfake law yet [UNVERIFIED]; apply international standards (TAKE IT DOWN Act + state laws) + Nigerian cybercrime law (cyberstalking, fraud provisions).

---

## 7. Recommended Studio Cavalry Subset for Portraits

```
1. studio-orchestrator       ← Route to Flux 2 Max vs Gemini 3.1 Flash
2. studio-race              ← Generate 4 variants (2 Flux 2, 2 Gemini 3.1)
3. reality-engine           ← Detect slop (hand, eye, hair, skin tone)
4. color-palette-lock       ← Lock skin tone hex across re-generations
5. studio-slop-check        ← Portrait tier (add 9 checks from section 4)
6. creative-auditor         ← Final 9/10 quality gate
```

**New pipeline for portraits:**
- studio-orchestrator sets `target: "portrait"` → auto-routes to dark-skin-specialized candidates
- Prompt-bible T10 (editorial half-length) + T11 (candid environmental) pre-loaded
- Skin tone hex locked from first generation
- MediaPipe + eye-catchlight checks auto-run
- Final audit gates on emotional authenticity before approve

---

## 8. Outstanding [UNVERIFIED] Claims

- [ ] Flux 2 Max dark skin accuracy vs Gemini 3.1 Flash (no public side-by-side benchmark for same subject)
- [ ] Whether any AI can replicate 4C hair coil density + shrinkage accurately [likely NO]
- [ ] GPT-4o dark skin rendering performance (no public dark skin examples found)
- [ ] Whether colour-palette-lock hex can hold across Flux 2 re-generations of same subject
- [ ] Seedream 4.5 / GPT Image 1.5 dark skin performance (benchmarks unavailable)
- [ ] Nigerian-specific AI deepfake legal liability (no dedicated law found; may fall under cybercrime act)

---

## Closing

Portrait generation remains the Studio cavalry's hardest test case. **Start with Gemini 3.1 Flash for dark skin subjects** (only evidence-backed generator for this task), **race against Flux 2 Max**, and **lock skin tone hex before generation**. Add 9 portrait-specific slop checks. Enforce legal consent before any commissioned work.

**Battle-test readiness:** 7.5/10. Hair texture and dark skin undertone remain above cavalry's current capability ceiling.
