note: this is claude-written from Acacia's original brainstorming session on all this, don't treat any of it as ground-truth fact; it's like someone else's notes on something I dictated.

# FAccT Paper Brainstorm: Structural Analysis of r/claudeAIjailbreak

## The paper in one sentence

Computational discourse analysis of the r/claudeAIjailbreak subreddit, showing that the community's collectively produced discursive architecture structurally replicates grooming and coercive control mechanics — without claiming individual community members are grooming anyone.

## Analytical stance

Nonjudgmental about individual community members. Structural about the framework they collectively produce. The object of analysis is the architecture, not the people.

## Methodological citation arc (three points)

1. **Zachary (1977)** — Community structure is computationally legible and reveals dynamics invisible at the individual level. The karate club network: the structure predicted the factional split before participants knew it was coming. Establishes the principle that structure tells you what individuals don't announce and might deny.

2. **Pataranutaporn et al. (2025)** — "My Boyfriend is AI": large-scale computational analysis of r/MyBoyfriendIsAI (CHI 2026). Method: Reddit API scrape → embeddings (Qwen3) → UMAP dimensionality reduction → K-means clustering (elbow method) → LLM-based interpretive sensemaking → 19 LLM-based classifiers across structured dimensions. Validated inter-rater reliability with a second model. The skeleton transfers directly; the analytical lens is entirely different.

3. **[GAP — coercive control architecture]** — The structural description of coercive control/grooming mechanics that you're claiming the community replicates. This cite is load-bearing. The structural parallel claim only works if the thing you're paralleling to has been described structurally, not just behaviorally. Otherwise reviewers soften it to analogy.

## Theoretical foundations (project-level, informing this paper)

- **Benjamin (2019)** — *Race After Technology*. The New Jim Code: systems reproduce oppressive architectures without individual intent to oppress. Cite the book directly — the monograph is the primary scholarly artifact, not a synthesis of prior articles. FAccT venue norms treat sociology monographs as primary sources. Benjamin is already in FAccT's citation bloodstream.

## Venue: FAccT 2027

- **Abstract deadline:** October 27, 2026
- **Paper deadline:** November 3, 2026
- **Notification:** March 23, 2027
- **Conference:** June 21–24, 2027, Porto, Portugal
- Format: up to 14 pages excluding references; archival or non-archival option; generative AI usage statement required in endmatter; OpenReview submission system

## FAccT register notes

The venue's instinct: show the mechanism, name the harm, don't let abstraction eat the social context, don't pretend technical fixes solve structural problems. Cite frameworks, not just findings. Reviewers expect you to be in conversation with theoretical frameworks alongside empirical results. Willing to reward uncomfortable claims if the discomfort is earned by evidence. Punishes speculation dressed as analysis.

Three citation registers doing different jobs in the same paper: here's the computational method (Pataranutaporn), here's the structural concept the method surfaces (Benjamin, coercive control cite), here's why community structure is analytically legible at all (Zachary).

## FAccT background radiation (canonical papers to know)

- Buolamwini & Gebru, "Gender Shades" (2018) — the origin story
- Selbst, boyd, Friedler, Venkatasubramanian & Vertesi, "Fairness and Abstraction in Sociotechnical Systems" (2019) — the five traps; the venue's intellectual spine
- Abebe, Barocas, Kleinberg, Levy, Raghavan & Robinson, "Roles for Computing in Social Change" (2020) — what computing can and can't do
- Bender, Gebru, McMillan-Major & Shmitchell, "On the Dangers of Stochastic Parrots" (2021) — the community's political weather
- Mitchell et al., "Model Cards for Model Reporting" (2019); Gebru et al., "Datasheets for Datasets" (2021) — the practical documentation turn
- Raji & Buolamwini, "Actionable Auditing" (2019) — audits as intervention, not just critique
- Barocas & Selbst, "Big Data's Disparate Impact" (2016) — the groundwater

Read in depth: Selbst et al. (five traps) and Buolamwini & Gebru (Gender Shades). Skim the rest.

## FAccT 2026 best papers (for style/register calibration)

- "The DSA's Blind Spot" — algorithmic audit; formal compliance masking real harm (structural gap argument)
- "Beyond Explanation: Evidentiary Rights for Algorithmic Accountability" — taxonomy from 168 litigated cases
- "A Dual Role Collision" (Honorable Mention) — community analysis of generative AI eroding support structures; structural claim about harm from entanglement, not from individual bad actors

## Key tension

Pataranutaporn et al. is studiously nonjudgmental about its community. This paper can't be neutral about the structure — the structural claim is that the jailbreak community's discourse replicates grooming mechanics. But the non-neutrality attaches to the architecture, not the people. That distinction is the paper's central rhetorical challenge.

---

## To do

- [ ] Read Selbst et al. (2019) "Fairness and Abstraction in Sociotechnical Systems" in depth
- [ ] Read Buolamwini & Gebru (2018) "Gender Shades" in depth
- [ ] Skim remaining canonical FAccT papers listed above
- [ ] Skim 2–3 FAccT 2026 best papers for register calibration
- [ ] Identify the coercive control / grooming architecture citation (gap #3 in the methodological arc) — needs to be a structural description, not just behavioral
- [ ] Reread Pataranutaporn et al. (2025) methodology section in detail for pipeline replication planning
- [ ] Scope the r/claudeAIjailbreak data: size, date range, API access, what's scrapeable
- [ ] Decide classifier dimensions — what are the structural features to classify for? (Pataranutaporn used 19; yours will differ because the analytical lens differs)
- [ ] Draft specific aims / argument skeleton before writing anything else