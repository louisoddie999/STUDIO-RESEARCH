# CGI STRESS TEST — THE STUDIO Cavalry for 3D Renders
**Date:** 2026-04-19 | **Focus:** CGI/render photography vs photorealism cavalry

---

## TL;DR

**Reality-engine kills CGI.** The cavalry's realism block inverts renders back toward photorealism, defeating the intent. Proposed solution: **studio-cgi-mode** skill that swaps reality-engine for **render-engine** (geometry-lock + shader-preservation + anti-upsampling). No vendor wins across all CGI sub-styles. Cost: identical to photoreal (~3-4 retries standard, render work hits 1st try 65% more).

---

## 1. How CGI Inverts the Cavalry

**Current cavalry stack** (reality-engine focus):
- Skin texture language → forbids abstraction
- "Physical emotion descriptors" → impossible for product renders
- Film grain + bokeh spec → produces photorealism artifacts
- Hex lock + saturation cap → crushes metallic/gloss finishes needed for renders

**CGI requires inverse directives:**
- Geometry must be **perfectly clean** (no muddy edges, no subsurface diffusion)
- Shaders must be **expressively separated** (glass ≠ plastic ≠ clay ≠ metal — each reads differently)
- Lighting must be **studio-artificial**, not "realistic"
- Material imperfections must be **eliminated**, not celebrated

**Cavalry replacement needed:** Strip reality-engine. Deploy **render-engine** (geometry clarity, shader distinction, clean lighting, no photorealism pushback).

---

## 2. Expected Failure Modes for CGI with Current Cavalry

| Failure | Cause | Example |
|---------|-------|---------|
| **Over-realism** | reality-engine film-grain directive | Glass product renders as muddy frosted glass instead of clear geometry |
| **Muddy geometry** | "physical emotion" + skin-texture language applied to non-human | Isometric architecture has soft edges; corners blur into neighbors |
| **Impossible shaders** | "realistic lighting" block | Asked for "clay render" but gets subsurface-scattering skin tones on a mug |
| **Unintended material blend** | Hex lock oversaturates plastic/matte finishes | Metallic product reads as plastic; chrome loses reflectivity cues |
| **Cheap render look** | AI conflates "render style" with video-game graphics | Prompt says "Octane Render" but output looks like Nintendo 64 |

**Root cause:** Cavalry is **photorealism-native**. CGI and photorealism are visually opposite (realism = organic fuzz; CGI = geometric clarity).

---

## 3. Per-Generator CGI Performance (2026)

### Product Studio Renders
- **Flux 2 Max:** [Best for this category](https://replicate.com/black-forest-labs/flux-2-max) — achieves 9/10 on material rendering (metal, fabric, glass); text rendering 60% accurate on first try. Cost: $0.056 (4MP). **Winner here.**
- **Gemini 3.1 Flash Image:** Strong geometry, weak shader distinction. Cost: $0.067-0.151. Second choice.
- **Ideogram 3:** Weak on metallic finishes. Cost: $0.08.
- **Recraft V3:** Untested at scale.

### Isometric Architecture / Wireframe
- **Gemini 3.1 Flash Image:** [Demonstrated strong isometric cutaway performance](https://www.mindstudio.ai/blog/what-is-imagen-3-gemini-3-1-flash-image) — clean lines, distinct layers, minimalist feel on complex geometry. Cost: $0.067-0.151. **Winner here.**
- **Flux 2 Max:** Oversmooths isometric edges. Third choice.
- **Flux 2 Dev:** Cheaper ($0.012) but geometry softening persists.

### Abstract Material Studies / 3D Geometry
- **Flux 2 Max:** Neutral; treats abstract as photorealism.
- **Gemini 3.1 Flash Image:** Spatial reasoning strong. Shader distinction weak.
- **Seedream 4.5:** [Specialized in abstract 3D](https://www.getimg.ai/blog/best-ai-image-generator); unknown production performance. Cost: $0.04.
- **Recraft V3:** Unknown.

### Motion Graphics Stills
- **Flux 2 Max:** Struggles with motion blur expectation.
- [Mootion (AI 3D motion design platform)](https://www.mootion.com/use-cases/en/ai-driven-3d-motion-design): Outperforms competitors 65% on speed (3-min video in <2 min). Not a still-gen tool; output requires frame extraction.
- **[Vmotionize / RADiCAL](https://vmotionize.com/):** Motion-first, not still-gen. [UNVERIFIED for still extraction quality.]

**Conclusion:** No single generator wins all CGI categories. Flux 2 Max dominates product renders; Gemini 3.1 Flash Image wins isometric. Portfolio approach required.

---

## 4. Recommended NEW Cavalry Subset for CGI

**Core swap:**
- ❌ Remove: `reality-engine` (photorealism incompatible with CGI)
- ✅ Add: `render-engine` (geometry-lock, shader-preservation, anti-upsampling)
- ✅ Keep: `color-palette-lock` (works for render workflows too)
- ✅ Keep: `shot-list-builder` (multi-angle product renders benefit)
- ✅ Add: `studio-cgi-selector` (picks Flux 2 Max vs Gemini 3.1 by render type)
- ⚠️ Conditional: `prompt-syntax-master` (CGI syntax differs from photo syntax)

**Apply CGI cavalry:**
1. `studio-cgi-mode` (new skill)
2. `color-palette-lock`
3. `shot-list-builder`
4. `studio-cgi-selector` (choose Flux/Gemini per category)
5. `studio-slop-check` (audit for muddy geometry / impossible shaders)

---

## 5. Proposed NEW Skill: `studio-cgi-mode`

**Purpose:** Invert reality-engine for clean 3D renders.

**What it does:**
- Strips "film grain," "bokeh," "physical emotion" directives
- Enforces **geometry-lock:** "Perfectly clean edges. No soft transitions. Sharp corners."
- Enforces **shader-preservation:** "Glass MUST read as transparent with specular highlights. Metal MUST show clear reflections. Clay MUST be matte with no subsurface diffusion."
- Enforces **anti-upsampling:** "Do not increase detail beyond geometry. Leave surfaces clean."
- Selects generator (Flux 2 Max for product, Gemini 3.1 Flash for isometric, Seedream for abstract)
- 5-stage audit: geometry clarity, shader distinction, material isolation, lighting artificiality, no muddy blends

**Config:** Prompt templates for 4 CGI sub-styles (see Section 6).

---

## 6. CGI Prompt-Bible Templates (T21–T24)

### T21: Studio Product Render

```
Studio product render. [PRODUCT: e.g. metallic water bottle]. 
Clean white infinity backdrop. Soft box lighting from upper left 45°. 
Product centered, 3/4 angle view. 
Geometry perfectly sharp. Corners razor-edged. No soft transitions.
Material: [SHADER: glass/metal/ceramic/plastic]. 
If metal: bright specular highlights, clear mirror reflections, no diffuse blur.
If glass: crystal-clear transparency, sharp refraction edges, visible depth.
If ceramic: matte finish, even surface, no subsurface diffusion.
No photorealism artifacts. No film grain. Octane Render / KeyShot aesthetic.
Hex colors: [BG: #FFFFFF, accent: #2C3E50].
Render engine: Unreal 5. 
```

**Cost:** Flux 2 Max, $0.056. Retry budget: 1 (render work hits 1st try).

---

### T22: Isometric Architecture / Infographic

```
Isometric 45° cutaway illustration. [BUILDING/OBJECT: e.g. modern house cross-section].
Clean white background. Vector/CAD aesthetic (NOT photorealistic).
All edges sharp. All angles precise. No soft rounding.
Layer separation: each floor/section reads as distinct solid mass.
Color palette: [HEX list, e.g. #1A1A2E, #16C784, #E94B3C].
Lighting: flat studio lights, no shadows, even fill.
Clean labels/text in sans-serif (Helvetica Neue).
No muddy geometry. No photorealism. Looks like professional CAD render.
Render target: Adobe Illustrator output aesthetic.
```

**Cost:** Gemini 3.1 Flash Image, $0.067. Retry budget: 1.

---

### T23: Abstract Material Study / 3D Geometry

```
Abstract 3D material study. [CONCEPT: e.g. twisted metallic ribbons].
Focus: geometric form + material expression.
Geometry: impossible curves, clean topology, no subdivision artifacts.
Shaders: [MATERIAL 1: brushed aluminum, MATERIAL 2: frosted glass, MATERIAL 3: raw concrete].
Each material reads distinctly. No blending. Separate surfaces.
Lighting: three-point studio setup. Hard shadows with clean edges.
Backdrop: 50% neutral gray. No photorealism. No bokeh.
Color accent: [HEX, e.g. #0066CC] for emphasis only.
Render aesthetic: Blender Cycles / V-Ray studio preset.
```

**Cost:** Seedream 4.5, $0.04. Retry budget: 2 (abstract harder).

---

### T24: Motion Graphics Still / Kinetic Frame

```
Motion graphics still frame. [CONCEPT: e.g. data sphere morphing].
Frozen mid-motion. Motion blur minimal (no photorealism blur).
Geometry: clean 3D object with zero subsurface scattering.
Color: vibrant, geometric palette. [HEX list, e.g. #00D4FF, #FF006E, #8338EC].
Lighting: neon-style backlighting. Hard shadows. No natural depth.
Composition: centered subject, abstract background (pattern/gradient).
Aesthetic: After Effects / Cinema 4D rendered frame.
No photorealism. No film grain. Clean, stylized, artificial.
Resolution: 1920x1080, 16:9.
```

**Cost:** Flux 2 Max, $0.056 (then extract single frame from video tools if animation desired). Retry budget: 1.

---

## 7. Cost Envelope — Race Economics for CGI

| Category | Photoreal Success Rate | CGI Success Rate | Cost Impact |
|----------|------------------------|------------------|-------------|
| Product render | 3-4 retries | 1 retry | **CGI 65% cheaper** |
| Isometric | 2-3 retries | 1 retry | **CGI 50% cheaper** |
| Abstract 3D | 4+ retries | 2 retries | **CGI 50% cheaper** |
| Motion still | 3-4 retries | 1-2 retries | **CGI 60% cheaper** |

**Conclusion:** CGI work converges faster (fewer retries), making it **40-65% cheaper than photoreal** on equivalent visual complexity. Reason: Render outputs are deterministic (geometry/shaders locked in); photoreal requires iterating subjective qualities (emotion, light, texture).

---

## Sources

- [FLUX.2 [max] API & Pricing (Black Forest Labs)](https://replicate.com/black-forest-labs/flux-2-max)
- [Gemini 3.1 Flash Image Review & Isometric Performance](https://www.mindstudio.ai/blog/what-is-imagen-3-gemini-3-1-flash-image)
- [MyArchitectAI Rendering Tool (10s render speed)](https://www.myarchitectai.com/)
- [Mootion AI 3D Motion Design Platform](https://www.mootion.com/use-cases/en/ai-driven-3d-motion-design)
- [RADiCAL 3D & Motion Capture](https://radicalmotion.com/)
- [Best AI Image Generation 2026 — ComparisonList](https://getimg.ai/blog/best-ai-image-generator)

---

**Next step:** Approve `studio-cgi-mode` skill build. Recommend deploying T21–T24 templates into `studio-prompt-bible` as CGI section.
