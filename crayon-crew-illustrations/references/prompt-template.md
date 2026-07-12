# Image Generation Prompt Template

Generate each image with its own separate call. Fill every `{placeholder}` from the current shot. When copying a character description, paste the full **appearance** spec from `character-cast.md` (hair, face, body, outfit, shoes) — never abbreviate it to just the name, because the image model doesn't know who "Penny" is. Do NOT paste the character's prop ideas unless this scene actually uses that prop; the SCENE and OBJECTS sections define what they hold and do.

If the image tool accepts reference images, ALWAYS attach the files in `assets/style-references/` as style references and say so in the prompt ("match the attached style references exactly"). Attach all eight; if the tool limits how many references it accepts, prioritize the ones featuring the cast members appearing in this shot.

```text
A hand-drawn crayon illustration for a blog article, landscape 4:3.

STYLE (match exactly; if style reference images are attached, follow their texture, palette, and character design precisely — but do NOT copy their compositions):
Warm cream paper background (#F7F0DE). Grainy charcoal crayon and soft pencil linework with visible tooth and pressure variation. Rough textured fills, never flat digital color. Strict palette: charcoal black, marigold yellow (#F2A93B), warm white, cream — no other colors except tiny blush cheek dots. Bold black-and-white patterns (stripes, harlequin checkers, chunky daisy florals) carry visual richness. Loose marigold-yellow scribble energy lines loop around and through the scene. Oversized props with playful scale distortion. Generous cream negative space (subject fills ~50-65% of canvas). Whimsical, confident, editorial indie-zine feeling — not childish, not corporate.

CHARACTER (must perform the core action, not decorate):
{full appearance spec pasted from character-cast.md — outfit, hair, face; give them this scene's props, not their usual ones}

SCENE:
{what the character is doing, with which oversized object, and how the idea flows through the scene — one core structure only}

STRUCTURE TYPE:
{Workflow / Before-After / Concept metaphor / Character state / Layered method / Path / Mini comic}

CORE IDEA THIS IMAGE EXPLAINS:
{one sentence}

OBJECTS:
{object 1} / {object 2 — max two hero objects, oversized}

HANDWRITTEN LABELS (loose friendly hand-lettering in charcoal, each 1-4 words, placed near what they describe):
"{label 1}" / "{label 2}" / "{label 3}" / "{optional label 4}" / "{optional label 5}"

RULES:
Exactly one core structure per image. 3-7 short English labels, no paragraphs. No title text in any corner. No gradients, no drop shadows, no flat vector style, no infographic or slide look, no photorealism, no colors outside the palette. The character must be doing the work that explains the idea. Charming and slightly theatrical, but clean and readable within seconds.
```

## Editing prompts

Remove unwanted text:

```text
Edit the provided image. Remove only the text "{text to remove}". Fill the area with the same warm cream paper background and matching crayon grain. Preserve everything else exactly: characters, labels, linework, texture, composition, and aspect ratio. Do not add anything new.
```

Fix an off-model character:

```text
Regenerate this illustration with the same composition, scene, and labels, but redraw the character to exactly match this spec: {full appearance spec from character-cast.md}. Keep the grainy crayon texture, cream background, and charcoal + marigold palette identical.
```

Make the character central to the action:

```text
Regenerate this illustration with the same core meaning and layout, but make the character physically perform the central action — operating, carrying, building, or delivering — instead of standing beside the scene. Keep it textured, warm, sparse, and hand-drawn.
```
