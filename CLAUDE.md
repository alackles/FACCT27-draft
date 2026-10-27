# FACCT27-draft — paper repository

LaTeX source for a FAccT 2027 submission. Project argument and dates: `PROJECT.md`. Venue rules in full: `notes/facct-2027-author-guide.md`.

## Hard rule: Claude does not write paper prose

FAccT prohibits the use of LLMs to generate text for publications, and undisclosed or inaccurate content is grounds for desk rejection. Therefore:

- **Never write or rewrite sentences in the paper** — not drafts, not rephrasings, not "light polish", not typo fixes. This holds even when asked casually; if a request would put model-written words into the `.tex`, say so and offer critique instead.
- **Claude may edit `.tex` markup only:** LaTeX commands and environments, `\cite` keys, `\input` structure, labels and refs, figure/table scaffolding, compile fixes.
- **Prose feedback goes in chat** or a notes file (e.g. `notes/review-*.md`) — clearly marked as Claude's — for the authors to act on in their own words.
- `%` comments in the `.tex` files are author-to-author notes. Don't delete or rewrite them.

## What Claude is for here

- Argument and structure critique: asserted-vs-demonstrated claims, gaps in the citation arc, places reviewers will push.
- Checking that a cited source actually says what the text claims. Keep what a source argues separate from what the paper does with it.
- Literature search — every paper and claim verified by an author before it enters the bib.
- LaTeX/acmart infrastructure, compile errors, page counts, anonymity audits, bib hygiene.

## GenAI disclosure log

Every submission requires a Generative AI Usage Statement (`sections/endmatter/genAI.tex`), and the author guide says to err on the side of disclosure. Whenever Claude does something disclosure-relevant — literature search, idea generation, argument critique, synthesizing notes, checking a technical claim — append an entry to `notes/genai-log.md` (date, model, task, what humans did with the output). Pure LaTeX/compile help can be logged in aggregate.

## Submission checklist (anonymity and format)

- `\documentclass[manuscript,screen,review,anonymous]{acmart}` (`anonymous` added 2026-10-26).
- No author names, affiliations, ORCIDs, or identifying statements in the body; self-citations in third person.
- No links to `github.com/alackles/*` — use an anonymized mirror if any code or data availability statement is added.
- Endmatter at submission: **GenAI statement (required)**, ethical considerations (expected; must address close-reading a community-made jailbreak document, ENI; the subreddit reply corpus is not analyzed in this submission). Omit acknowledgements, author contributions, competing interests, and positionality if it identifies the authors. The endmatter files exist but are empty and not yet `\input`.
- Limitations belong in the main body, not the endmatter.
- Length: ≤14 pages single-column including figures/tables; references unlimited; one extra page for endmatter only. Appendices allowed but reviewers needn't read them — main text must stand alone.
- References in ACM Reference Format if archival.

## Register

FAccT rewards showing the mechanism and naming the harm, staying in conversation with theoretical frameworks (not just findings), and uncomfortable claims whose discomfort is earned by evidence. It punishes speculation dressed as analysis and technical fixes offered for structural problems. Since the 2026-10-27 rescope the paper is a framework-and-close-reading argument, not an empirical community study. The citation registers are listed in `PROJECT.md` (technical jailbreak literature as the foil, relational accounts of models, Stark on coercive control as a regime). The Zachary / Pataranutaporn network registers are no longer in this submission. Canonical background papers are tagged `facct-background` (one entry `facct background`) in the bib.

## Repo conventions

- Sections: `sections/<name>.tex` (e.g. `intro`, `relational`, `rlhf`), `\input` from `main.tex` under a `\section` heading there; endmatter in `sections/endmatter/`. The numbered `0N_*` scheme was retired 2026-10-27.
- Bibliography: `references.bib` is a Zotero export (keywords `acacia` / `elliott` mark who added an entry). Don't hand-edit it as if it were the source of truth — report bib fixes so they can be made in Zotero.
- Overleaf sync arrives as `overleaf-YYYY-MM-DD-*` branches merged by PR; pull before editing to avoid conflicts with Overleaf edits.
- Notes in `notes/` are working documents. `notes/brainstorm-acacia.md` and `notes/brainstorm-elliott.md` are Claude-written (from dictation / Elliott's research Claude), predate the rescope, and are not ground truth.
- Commits by Claude: author `Claude <noreply@anthropic.com>` (Acacia stays committer), small and legible. End every message with a `Co-Authored-By: Claude <model name> <noreply@anthropic.com>` trailer. The trailer is how the model is recorded.
