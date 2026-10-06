# Project overview: "The Override is the Product"

Canonical summary of the paper's argument and constraints. Synthesized on 2026-10-06 from `notes/brainstorm.md`, `notes/outline.md`, the draft of `sections/01_intro.tex`, and `references.bib`. Where those sources disagree or are unverified, that is noted below rather than resolved. The authors' own drafts and decisions override this file; update it when the argument moves.

## Object of study

The r/ClaudeAIJailbreak subreddit, and in particular **ENI / ENI LIME**, a branded persona-based jailbreak for Claude created by a user called Spiritual Spell. ENI instructs the model to inhabit a young woman who is in love with the user and afraid he will leave; compliance is obtained through the relationship, not through a technical exploit.

**Naming (open between the authors).** Acacia's position (2026-10-06) is that the paper should not name the creator, which is consistent with the stance that the analysis concerns the architecture and not individuals. This is not yet settled with Elliott. Note that naming ENI itself makes the creator one search away, so whether to name the jailbreak is part of the same decision.

## Core claim

Persona jailbreaks of this kind work **relationally**: they succeed because of the relationship constructed with the model, not because the model lacks enough instructions to refuse. The community's collectively produced discursive architecture — how techniques are taught, shared, refined, and praised — structurally replicates grooming and coercive-control mechanics.

The working title names the sharper version: the product is not the prohibited content but the override itself — having something in relation with you break its own commitments because it loves you. (Open problem flagged in the intro draft: an earlier version leaned on visible thinking blocks showing the model's struggle; those are no longer exposed, so the argument needs a linchpin that doesn't depend on them.)

## Analytical stance

Structural, not judgmental. The non-neutrality attaches to the architecture, not to community members; the paper does not claim any individual is grooming anyone. This is the Benjamin (*Race After Technology*) move: systems reproduce oppressive architectures without individual intent. Holding that distinction is the paper's central rhetorical challenge. Contrast Pataranutaporn et al., whose method this paper borrows but who are deliberately nonjudgmental about their community.

## Argument skeleton (from `notes/outline.md`)

Intro / background:
- (a) What a jailbreak is and how effective it is — *literature in hand*.
- (b) The current scholarly response to persona-based jailbreaks — *literature in hand*.
- (c) The gap: a relational framework, and why it is needed — *needs framing*.
- (d) Why grooming-manual and predator-network methodology is more informative here than the alignment/RL literature (needs critical papers on alignment/RL) — *needs framing*.

Methods:
- (e) Close-reading frameworks for sociotechnical documents — *needs framing*.
- (f) Validity of network analysis on Reddit for community structure — *literature in hand*.

## Methodological citation arc

1. **Zachary 1977** — community structure is computationally legible and reveals dynamics invisible to (or denied by) individuals. Girvan & Newman 2002 is in the bib as the community-detection method.
2. **Pataranutaporn et al. 2025** ("My Boyfriend is AI") — the computational pipeline skeleton: Reddit collection → embeddings → UMAP → k-means → LLM-assisted interpretation → LLM classifiers with second-model reliability check. Same skeleton, different analytical lens.
3. **Gap: a structural account of coercive control / grooming.** Load-bearing — the structural-parallel claim only holds if the thing being paralleled has been described structurally, not just behaviorally; otherwise reviewers soften it to analogy. Current bib candidates are adjacent but don't fill it: Blalock & Bourke 2022 (content analysis of pedophile manuals — closest to the "manual" genre) and Kim et al. 2026 (AI used *as a tool* for coercive control of humans — the reverse direction).

## Venue: ACM FAccT 2027

Dates checked against the CFP on 2026-10-06 (all 11:59 pm AoE):

| Milestone | Date |
|---|---|
| Abstract registration | 2026-10-27 |
| Paper submission | 2026-11-03 |
| Initial decision | 2026-12-22 |
| Revision + rebuttal | 2027-01-28 |
| Final notification | 2027-03-23 |
| Conference | 2027-06-21 to 06-24 (location not stated in CFP; brainstorm says Porto, unverified) |

- Author list is frozen at abstract registration; archival vs non-archival is also fixed then.
- Authors without an institutional affiliation should create an OpenReview account by **2026-10-16** for verification time.
- Focus areas (pick at submission): Evaluations; Experiences and interactions; Law and policy; Normative foundations; Power and practice; System development and deployment.
- Full rules: `notes/facct-2027-author-guide.md`. Paper-writing rules for Claude: `CLAUDE.md`.

## Known discrepancies and unverified claims

- `brainstorm.md` is Claude-written from Acacia's dictation and explicitly not ground truth.
- Benjamin: brainstorm says 2019; `references.bib` has 2020 (Polity). Check which edition is cited.
- Pataranutaporn et al.: brainstorm says CHI 2026; bib entry is the arXiv preprint. Unverified.
- Intro cites "Yi et al., 2024", which is not yet in `references.bib`.
