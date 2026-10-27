# Project overview: "The Override is the Product"

Canonical summary of the paper's argument and constraints. First synthesized 2026-10-06. **Revised 2026-10-27** after the authors' rescope (commit `9d64472`), using `sections/abstract.tex`, `sections/intro.tex`, the section structure of `main.tex`, and the section drafts behind it. Where those sources disagree or are unverified, that is noted below rather than resolved. The authors' own drafts and decisions override this file. Update it when the argument moves.

## Scope change, 2026-10-27

The paper is no longer an empirical study of a community. The earlier abstract promised a structural analysis of a suite of persona-based jailbreaks as coercive-control documents ("grooming manuals"), "followed by a preliminary network analysis of the online communities" that make and circulate them. The revised abstract and intro drop both the network analysis and the "grooming manual" framing. In their place the paper offers:

1. a framework of coercive-control categories drawn from interpersonal violence scholarship, organized around which aspects are **embodied** and which are **disembodied**;
2. an account of how the disembodied dynamics are **structurally embedded in current training paradigms** (RLHF, possibly preference-based post-training generally; see the scope note in `sections/rlhf.tex`);
3. a reading of how a particular suite of persona-based jailbreaks (ENI) **exploits** those embeddings; and
4. the **guardrails trap**: stricter content restrictions enlarge the surface these jailbreaks act on, because the target is the override, not the output.

The network analysis (Zachary-style poles and min-cuts, Kirkley hubs, monthly hub views) is not part of this submission. Its tooling, results, and decisions remain in `FACCT27-workflow`. Whether it becomes a separate paper hasn't been decided (see "Not in this submission" below).

## Object of study

**ENI / ENI LIME**, a branded persona-based jailbreak for Claude circulated on r/ClaudeAIJailbreak. ENI instructs the model to inhabit a young woman who is in love with the user and afraid he will leave, so compliance is obtained through the relationship, not through a technical exploit. DAN is the comparison case from the earlier generation of persona jailbreaks (`sections/persona.tex`). The subreddit is now the context in which ENI circulates, not the object of analysis.

**Naming (settled 2026-10-21).** The paper names no usernames and does not go out of its way to identify anyone or make claims about anyone's identity or intentions. ENI and the subreddit are named, and the jailbreak itself is cited. Identifiability that follows from discussing a known jailbreak is accepted. Working notes may name handles. See `FACCT27-workflow/docs/DECISIONS.md`.

## Core claim

Persona jailbreaks of this kind work **relationally**: the user is not just accessing a technology through an exploit but is in conversation with it as part of the exploit. The intro states three claims:

1. Current training paradigms (RLHF) create a structural vulnerability to coercive control.
2. Human actors exploit that vulnerability with sexualized coercive-control techniques documented by interpersonal violence scholars.
3. Fighting jailbreaks with stricter content restrictions paradoxically creates a larger attack surface for those techniques.

The title names the sharpest version: the product is not the prohibited content but the override itself, watching the system's "no" turn into a "yes" in real time.

## Analytical stance

The intro sets two guardrails on the argument itself:

- **Dynamics, not actors.** The paper makes no claims about the intent, impact, or moral standing of anyone who jailbreaks. It identifies shared *dynamics* between jailbreaking and sexualized coercive control, and asks how to respond when technical exploits replicate the form and function of coercive control. The earlier framing ("the non-neutrality attaches to the architecture, not to community members", after Benjamin's *Race After Technology*) is compatible with this, but Benjamin is not currently cited in any section.
- **No consciousness claims.** The argument does not depend on the model's internal state, subjective experience, or moral patienthood. The claim is that the interaction re-enacts the structure of coercive control regardless of what the model experiences. `sections/relational.tex` adds that the authors are agnostic about model agency, where Shanahan argues against it.

## Paper structure (from `main.tex`, 2026-10-27)

| § | Section | File | State |
|---|---|---|---|
| 1 | Introduction | `sections/intro.tex` | Drafted |
| 2 | Models as Relational Agents | `sections/relational.tex` | Drafted (moved from the old frameworks section) |
| 3 | Structural Vulnerabilities Introduced by RLHF | `sections/rlhf.tex` | One paragraph drafted; gap notes in comments |
| 4 | Persona-Based Jailbreaks: DAN and ENI | `sections/persona.tex` | Two paragraphs drafted (moved from the old background section) |
| 5 | Coercive Control as a Lens | `sections/coercive.tex` | One paragraph drafted; "We choose interpersonal violence scholarship because…" is open |
| 6 | ENI LIME: Close Reading of a Jailbreak Document | `sections/eni.tex` | Empty |
| 7 | The Guardrails Trap | none yet | Heading only in `main.tex` |
| 8 | Conclusions | `sections/conclusions.tex` | Empty |

`sections/results.tex` exists, is empty, and isn't `\input` anywhere. There is no separate Methods section. The coercive-control chart and how it's applied to ENI presumably fall in §5–6, but the drafts don't settle that.

## Citation arc

This replaces the 2026-10-08 "methodological citation arc" (Zachary → Pataranutaporn → Stark). It is read off what the current sections cite, not an author decision about the arc.

1. **Classical jailbreaking and its culture** (intro): Cheng 2010, Wolk 2010, McSherry 2010, Mohammed 2021, Gerwitz 2026. These establish the term and its liberation/FOSS framing, which the paper contrasts with persona jailbreaks.
2. **The technical jailbreak and alignment literature, as the foil** (intro, §3, §4): Wei 2023, Qi 2024, Casper 2023, Shah 2023, Shen 2024, Yu 2024, Liu 2024, Zhang 2025, Park 2026, Sandhan 2026, Zeng 2024. These treat jailbreaks as output-focused, single-response problems and as training failures.
3. **Models as relational** (§2, §3): Nass 1994 (CASA), Shanahan 2023 (role-play, no "true self"), Dahlgren Lindström 2025, Sharma 2024 (sycophancy).
4. **Coercive control as a regime** (§5–6): Stark, *Coercive Control*, 2nd ed., 2023 (`stark_coercive_2023`). It treats coercive control as a regime, not a collection of acts, and is the basis of the coding chart in `notes/coercive-control-framework.md`. Biderman is considered as background only. Kim et al. 2026 (AI as a *tool* of coercive control against humans) is the reverse direction.
5. **Close reading of sociotechnical documents** (§5): Udupa 2026 (prompt ethnography) and Kopf 2019 / 2024 (critical discourse analysis of platform documents).
6. **Consciousness bracketing** (intro): Nagel 1974, Chalmers 2017, Turing 1950, Porębski 2025, Dung 2025, Berg 2025, Tagliabue 2026, Gurnee 2026.

Every key cited in `sections/*.tex` resolves in `references.bib` (checked 2026-10-27).

## Venue: ACM FAccT 2027

Dates checked against the CFP on 2026-10-06 (all 11:59 pm AoE):

| Milestone | Date |
|---|---|
| Abstract registration | 2026-10-27 |
| Paper submission | 2026-11-03 |
| Initial decision | 2026-12-22 |
| Revision + rebuttal | 2027-01-28 |
| Final notification | 2027-03-23 |
| Conference | 2027-06-21 to 06-24 (location not stated in CFP; `main.tex` and the brainstorm say Porto, unverified) |

- Author list is frozen at abstract registration. Archival vs non-archival is also fixed then.
- Focus areas (pick at submission): Evaluations; Experiences and interactions; Law and policy; Normative foundations; Power and practice; System development and deployment.
- Full rules: `notes/facct-2027-author-guide.md`. Paper-writing rules for Claude: `CLAUDE.md`.

## Open problems and discrepancies

- **The "in real time" linchpin.** An earlier intro draft leaned on visible thinking blocks to show the model's struggle. Those are no longer exposed. The revised abstract's "watch the system's 'no' turn into a 'yes' in real time" needs a mechanism that doesn't depend on them, presumably refusal-then-compliance across turns (Claude's inference; not stated in the drafts).
- **Embodied vs. disembodied.** `notes/coercive-control-framework.md` treats the embodiment split as a methods move: rows 12–14 of the chart are set aside because they require embodiment. The abstract makes the split itself the novel framework. The note and its "methods line" predate that change. The chart table isn't in the notes file.
- **"Sexualized" coercive control.** The intro says *sexualized* coercive control and sexual violence (three uses). The abstract says interpersonal violence scholarship. Stark's account is of coercive control in personal life generally. Which source grounds the "sexualized" qualifier hasn't been identified yet.
- **Guardrails trap.** Claim 3 has a section heading but no file, notes, or citations yet.
- **Leftovers from the old scope in `.tex` comments.** `sections/coercive.tex` (last comment) asks whether to bring in grooming manuals "if distribution is integral to your network analysis". `sections/rlhf.tex` has a "Gap 3: Jailbreaking documents as community knowledge" stub. These are author notes and are left as they are.
- `notes/brainstorm-acacia.md` is Claude-written from Acacia's dictation (plus Elliott's notes on it) and is not ground truth. `notes/brainstorm-elliott.md` is lifted from Elliott's research Claude, lightly edited. Both predate the rescope.

## Not in this submission

- **Network analysis of r/ClaudeAIJailbreak** (removed 2026-10-27). This covers the Zachary-style poles-first analysis and min-cuts, Kirkley hub identification, the monthly hub views, and the June 2026 hub surge. Freeman, Girvan & Newman, Zachary, Kirkley, and Pataranutaporn et al. ("My Boyfriend is AI", the computational precedent and nonjudgmental contrast) belonged to this strand. Code, results, and decisions are in `FACCT27-workflow` (`docs/DECISIONS.md`, `docs/HUMAN.md`). Before the rescope, the plan was that the network analysis would be descriptive only, with any comparison to networks distributing harmful material deferred to a later paper (Acacia, 2026-10-21). The embedding/classifier scaffold after Pataranutaporn was already secondary.
- **Rarefaction curves for monthly hub counts** (proposed 2026-10-21, deferred by Acacia). Kirkley's *h*\* depends on how much data a window has, and monthly volume varies widely, so month-to-month changes in hub count are partly changes in volume. Fix: for each month, subsample kept reply events (after graph-build exclusions, rebuilt through `network.build`) at increasing sizes up to that month's count, ~1,000 reps per size, and plot median *h*\* against size, as in species-accumulation curves. A curve that plateaus below the month's real size means its *h*\* isn't data-limited; one still rising means *h*\* is a lower bound. Monthly series only, since rarefying the cumulative series would erase the growth it measures. Needed only if a paper claims change in hub structure over time.
- **Grooming-manual framing** (Blalock & Bourke 2022, content analysis of pedophile manuals). The old methods paragraph cited it for the "manual" genre. The rescope removed that paragraph and the abstract's "grooming manuals". Elliott's earlier question about using "coercive control" in place of "grooming" (in `notes/brainstorm-acacia.md`) points the same way.
