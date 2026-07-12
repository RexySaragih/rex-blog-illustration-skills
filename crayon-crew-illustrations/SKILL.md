---
name: crayon-crew-illustrations
description: Design and generate hand-drawn crayon-style blog and article illustrations featuring a consistent recurring character cast (the "Crayon Crew") on a warm cream background with charcoal linework and marigold-yellow accents. Each illustration turns one key idea, process, workflow, comparison, or metaphor from the article into a single textured editorial image with short handwritten English labels that explain the process. Use when the user asks for blog illustrations, article images, in-post illustrations, hero images, shot lists, illustration plans, or asks to visualize a concept, workflow, or methodology in a hand-drawn style.
---

# Crayon Crew Illustrations

## What this skill does

Designs and generates landscape in-article illustrations for blog posts, docs, newsletters, and methodology content. The goal is not commercial illustration or infographics: it is to take one key judgment, process, structure, state, or metaphor from the article and turn it into a warm, textured, hand-drawn editorial image that a reader understands within seconds.

Every image uses the same visual world: cream paper background, grainy charcoal crayon linework, one accent color (marigold yellow), bold patterns (stripes, checkers, daisies), loose yellow scribble energy lines, oversized props, and a fixed cast of recurring characters called the Crayon Crew. A crew member must actively perform the core conceptual action of the image — never just stand beside a diagram as decoration. Only the characters' identity (hair, face, outfit) is fixed; their poses, expressions, and props are invented fresh for each scene — the metaphor decides what they hold and do.

Each image includes 3–7 short handwritten English labels that explain the process or idea being shown.

## Read these references as needed

Load only what the current task requires — do not read everything up front:

- `references/style-dna.md` — palette, texture, composition rules, and hard bans.
- `references/character-cast.md` — the eight crew members: exact appearance, personality, action library, and consistency rules.
- `references/composition-patterns.md` — structure types and how to invent original metaphors.
- `references/prompt-template.md` — the fill-in prompt template for generating each image.
- `references/qa-checklist.md` — post-generation checks and how to iterate on failures.
- `references/customization.md` — how users can safely tweak the palette, cast, or labels to their own taste.
- `assets/style-references/` — the eight canonical style images. Pass them to the image model as style references whenever the tool supports reference images. Match their texture, palette, and character design exactly; do NOT copy their compositions.

## Workflow

### 1. Digest the article

Read the article, draft, outline, or topic the user provides. Extract:

- The core argument or takeaway
- Which paragraphs carry a cognitive turn (a shift in the reader's understanding)
- Which ideas benefit from a picture, and which are fine as text

Do not illustrate evenly. Prioritize cognitive anchors: the core judgment, a before/after shift, an input-to-output loop, a fork in the road, a common pitfall, a repeatable process, a role or state change.

### 2. Produce a shot list first

If the user asks to plan, analyze, or "figure out where images should go," output a shot list before generating anything. For each shot, specify:

- Which paragraph or section it follows
- The theme of the image
- The single core idea it communicates
- The structure type (see `references/composition-patterns.md`)
- Which crew member(s) appear and what action they perform (cast by the cognitive action, not the topic — see `character-cast.md` casting rules; Spark is invent/demo only, not every tech shot)
- Suggested objects and props, invented from this article's metaphor — characters' signature props are optional fallbacks, not defaults
- Suggested handwritten English labels (1–4 words each)

Default to 3–6 shots. Short posts get 1–3; even long posts should rarely exceed 8. Enough is enough — do not turn the article into a picture book.

### 3. Generate each image individually

If the user explicitly asks to generate, do not stop to ask for confirmation. Use whatever image generation capability the current agent provides (built-in image tool, image MCP server, or API). Generate each image as a separate call — never combine multiple shots into one image.

For every generation:

1. Fill in `references/prompt-template.md` with this shot's specifics.
2. If the tool supports reference/input images, attach the files from `assets/style-references/` as style references (all eight, or if the tool limits reference count, prioritize the ones featuring the cast members in this shot). This is the single most important step for visual consistency.
3. If the tool supports aspect ratio, use 4:3 landscape (the canonical format). 16:9 is acceptable if the user asks for wide hero images.

Each image explains exactly one core structure. The prompt must always include:

- Warm cream paper background
- Grainy charcoal crayon and pencil texture
- Charcoal black + marigold yellow + cream palette only
- A named crew member performing the core action
- 3–7 short handwritten English labels explaining the process
- Loose yellow scribble energy lines
- Bans: no gradients, no digital vector flatness, no PPT infographic look, no photorealism, no title text in a corner

Do not replicate the compositions of the style reference images or of previous outputs. References calibrate texture, palette, and character design only. Invent a fresh visual metaphor from the current article every time.

### 4. Check and iterate

After each generation, verify against `references/qa-checklist.md`. Regenerate or edit if any of these appear:

- The crew member is decorative instead of performing the action
- The canvas is overcrowded or the labels turned into paragraphs
- It looks like a slide, flowchart, or corporate infographic
- Off-palette colors appeared (blues, greens, pinks beyond cheek blush)
- The texture went flat/vector instead of grainy crayon
- Misspelled or garbled label text
- A character drifted off-model (wrong outfit, wrong hair, wrong proportions)

If label text is badly garbled, reduce the number of labels and regenerate.

### 5. Save and deliver

When working inside a project workspace, save the final images to:

```text
assets/<article-slug>-illustrations/
```

Named in reading order:

```text
01-topic-name.png
02-topic-name.png
```

Never overwrite existing assets unless the user explicitly asks to replace them.

## Output format

Keep the pre-generation shot list short and precise. After generating, report:

- How many images were produced
- What each image is for and where it goes in the article
- The saved file paths
- Which images are solid and which are optional or worth a retry

Do not lecture about style theory. Let the images speak.
