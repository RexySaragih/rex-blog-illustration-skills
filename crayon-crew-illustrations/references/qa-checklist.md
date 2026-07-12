# QA Checklist

Run this on every generated image before delivering.

## Must pass

- [ ] Landscape format (4:3 default, 16:9 only if requested).
- [ ] Background is warm cream — not white, not gray, not textured paper photo.
- [ ] Grainy crayon/pencil texture is visible everywhere; nothing looks flat-vector.
- [ ] Palette is strictly charcoal + marigold + cream + warm white (blush cheeks OK).
- [ ] At least one Crayon Crew member is present and on-model (correct hair, outfit, accessories per `character-cast.md`).
- [ ] The character performs the core action — remove them mentally and the image should stop working.
- [ ] Yellow scribble energy lines are present.
- [ ] Exactly one core structure/idea per image.
- [ ] 3–7 handwritten English labels, each 1–4 words, spelled correctly, legible.
- [ ] Generous cream negative space; subject fills roughly 50–65% of the canvas.
- [ ] The composition is a fresh metaphor — not a copy of a style reference or a previous output.

## Failure signals — regenerate or edit

- A title like "Workflow" or "Process" appears in a corner.
- Off-palette colors (blue, green, red, pink, purple) crept in.
- The character drifted off-model: wrong glasses, wrong pattern, missing beret, extra characters invented.
- It reads as a slide, flowchart, infographic, or course material.
- Labels became sentences or paragraphs.
- Garbled or misspelled label text.
- Texture went smooth/digital; crayon grain disappeared.
- Too many objects, arrows, or nodes; canvas feels crowded.
- The character stands idle next to a diagram.
- The composition mirrors one of the style references.

## Iteration playbook

| Problem | Fix |
|---|---|
| Too generic | Invent a stranger low-tech metaphor object; make the character operate it |
| Too crowded | Cut to 1 hero object, 1 character, 3–4 labels |
| Too corporate | Remove boxes/grids/straight arrows; replace with hand-drawn objects and a winding scribble line |
| Wrong colors | Restate the strict palette in the prompt with hex codes; list banned colors explicitly |
| Character off-model | Paste the full character spec verbatim; re-attach style reference images |
| Garbled text | Reduce label count to 3, shorten each to 1–2 words, regenerate |
| Texture too flat | Emphasize "grainy crayon on toothy paper, visible pressure variation, rough fill edges" |
| Copied a reference | Keep the core idea; swap the hero object and the character's action |

## Delivery bar

A good image makes the reader smile first, then understand the structure within one or two seconds. If the first impression is "diagram" instead of "charming hand-drawn scene that happens to explain something," it does not ship.
