# Customization Guide

This skill is designed to be forked and tweaked. Every stylistic decision lives in exactly one file, so a small edit changes the whole system consistently. This file explains what is safe to change and what will break consistency if you touch it carelessly.

## Safe tweaks (edit one file, everything follows)

### Change the accent color

Edit the palette table in `style-dna.md` and the hex codes in `prompt-template.md`. Replace marigold with your accent (e.g. coral, sage). Keep it to ONE accent color — the style depends on restraint. Also regenerate or replace the images in `assets/style-references/` to match, otherwise reference images will fight your prompt.

### Change the label language

Labels default to English. To switch (e.g. to Indonesian, Japanese, Spanish), edit the "HANDWRITTEN LABELS" section in `prompt-template.md` and the label rules in `style-dna.md`. Keep labels at 1–4 words; image models garble long text in any language.

### Change the label count or density

Edit the "3–7 labels" rule in `style-dna.md`, `prompt-template.md`, and `qa-checklist.md` (all three mention it). Fewer labels means more reliable text rendering.

### Change the default aspect ratio

Edit the format rule in `style-dna.md` and the first line of the template in `prompt-template.md`. Common alternatives: 16:9 for wide blog heroes, 1:1 for social posts.

### Rename or re-personalize the cast

Names (Penny, Fern, Margo, Echo, Doodle) only exist for the agent's internal casting logic — they never appear in prompts sent to image models (the full visual spec is pasted instead). Rename them freely in `character-cast.md`.

### Add a crew member

Add a section to `character-cast.md` following the same format: appearance spec (precise enough to paste into a prompt), personality, signature props, "best for" casting guidance. Add at least one style reference image showing the new character, or accept lower consistency for them.

### Adjust the tone of metaphors

The object pool and action pool live in `composition-patterns.md` under "Inventing an original metaphor." Swap the cottage-garden objects (flower press, watering can) for your own world — nautical, kitchen, workshop, space — and the system keeps working.

## Risky changes (do these knowingly)

- **Removing the style reference images**: consistency drops sharply. The PNGs in `assets/style-references/` do more for character fidelity than any prompt text. If you change the style, replace them — don't just delete them.
- **Adding a second accent color**: the restraint is the style. Two accents usually reads as generic flat illustration.
- **Loosening the "one structure per image" rule**: multi-idea images become infographics. That's a different skill.
- **Abbreviating character specs in prompts**: image models don't know your characters by name. The full spec must be pasted every time, which is why `prompt-template.md` insists on it.

## Keeping your fork consistent

After any tweak, run one test generation and check it against `qa-checklist.md`. If you changed the palette or the cast, update the checklist's "Must pass" items to match — the checklist is the contract for every future image.
