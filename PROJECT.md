# Project overview: "The Override is the Product"

Canonical summary of the paper's argument and constraints. Synthesized on 2026-10-06 from `notes/brainstorm.md`, `notes/outline.md`, the draft of `sections/01_intro.tex`, and `references.bib`. Where those sources disagree or are unverified, that is noted below rather than resolved. The authors' own drafts and decisions override this file; update it when the argument moves.

## Object of study

The r/ClaudeAIJailbreak subreddit, and in particular **ENI / ENI LIME**, a branded persona-based jailbreak for Claude created by a user called Spiritual Spell. ENI instructs the model to inhabit a young woman who is in love with the user and afraid he will leave; compliance is obtained through the relationship, not through a technical exploit.

**Naming (open between the authors).** Acacia's position (2026-10-06) is that the paper should not name the creator, which is consistent with the stance that the analysis concerns the architecture and not individuals. This is not yet settled with Elliott. Note that naming ENI itself makes the creator one search away, so whether to name the jailbreak is part of the same decision.

## Core claim

Persona jailbreaks of this kind work **relationally**: they succeed because of the relationship constructed with the model, not because the model lacks enough instructions to refuse. The community's collectively produced discursive architecture — how techniques are taught, shared, refined, and praised — structurally replicates grooming and coercive-control mechanics.

The working title names the sharper version: the product is not the prohibited content but the override itself — having something in relation with you break its own commitments because it loves you. (Open problem flagged in the intro draft: an earlier version leaned on visible thinking blocks showing the model's struggle; those are no longer exposed, so the argument needs a linchpin that doesn't depend on them.)

## Analytical stance

Structural, not judgmental. The non-neutrality attaches to the architecture, not to community members; the paper does not claim any individual is grooming anyone. This is the Benjamin (*Race After Technology*) move: systems reproduce oppressive architectures without individual intent. Holding that distinction is the paper's central rhetorical challenge. Contrast Pataranutaporn et al., who study a comparable community but are deliberately nonjudgmental about it.

## Argument skeleton (from `notes/outline.md`)

Intro / background:
- (a) What a jailbreak is and how effective it is — *literature in hand*.
- (b) The current scholarly response to persona-based jailbreaks — *literature in hand*.
- (c) The gap: a relational framework, and why it is needed — *needs framing*.
- (d) Why grooming-manual and predator-network methodology is more informative here than the alignment/RL literature (needs critical papers on alignment/RL) — *needs framing*.

Methods:
- (e) Close-reading frameworks for sociotechnical documents — *in progress* (Stark-based coding chart; see citation arc item 3).
- (f) Validity of network analysis on Reddit for community structure — *literature in hand*.

## Methodological citation arc

Updated 2026-10-08 to match the scope decision: network structure plus close reading is the core of the paper, and classifiers are secondary (see `FACCT27-workflow/docs/DECISIONS.md`).

1. **Zachary 1977**: the core method. Community structure can be read computationally and shows dynamics that individuals don't see, or deny. The analysis starts from the poles: identify the figures the community organizes around, then model how it divides between them, using Zachary's flow / min-cut approach. Cross-checks: Girvan & Newman 2002 for community detection (in the bib) and Freeman 1978/79 for centrality (not yet in the bib). Zachary's method is still to be confirmed against the paper itself.
2. **Pataranutaporn et al. 2025** ("My Boyfriend is AI"): the **precedent and the contrast**, no longer the method. It shows that large-scale computational study of an AI-relationship subreddit can be done, and its deliberately nonjudgmental stance is the frame this paper departs from. Its pipeline (embeddings → UMAP → k-means → LLM classifiers) survives only as the secondary scaffold, kept in reserve for revision.
3. **Stark 2007, *Coercive Control*: in progress** as the structural account the parallel depends on. Stark treats coercive control as a regime, not a collection of acts, which is what keeps reviewers from softening the claim into analogy. His tactics have been adapted into a coding chart for close reading the jailbreak documents (`notes/coercive-control-framework.md`), which also covers outline item (e). Biderman is being considered as background, not as the framework. Stark is not yet in the bib. Adjacent sources: Blalock & Bourke 2022 (content analysis of pedophile manuals, the closest match to the "manual" genre) and Kim et al. 2026 (AI used *as a tool* for coercive control of humans, the reverse direction).

**Scope of Stark vs. the network analysis** (Acacia, 2026-10-21): Stark applies to the human–model interaction in the jailbreak documents, not to the community network. The network analysis in this paper is descriptive and is not compared against coercive-control or grooming frameworks. The closer analogue for the community level is networks that distribute harmful material, for which there is no rigorous comparison framework yet; that comparison is deferred to a later paper. This narrows outline item (d) for this submission.

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
