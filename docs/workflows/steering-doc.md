# Steering Doc: Feature Implementation Workflow

## Purpose
This document defines the standard workflow for implementing any new feature. It consists of five sequential phases, each handled by a dedicated agent with its own instructions and skills. Claude Code should follow this process for every feature spec it receives.

---

## Model Assignments

Use the strongest model for phases that require judgment and broad understanding. Use faster/cheaper models for well-scoped execution tasks where the spec is already clear.

| Phase | Model | Reasoning |
|---|---|---|
| 1. Planning | **Opus** | Requires holistic codebase understanding, dependency mapping, and judgment about task decomposition |
| 2. Design | **Opus** | Architectural decisions, trade-off evaluation, anticipating edge cases |
| 3. Implementation | **Sonnet** | Well-scoped coding tasks with clear spec from the design doc — decisions are already made |
| 4. Review | **Opus** | Critical evaluation, catching subtle regressions, deciding if something truly passes |
| 5. Testing | **Opus** | Interpreting test results and judging whether the feature truly works requires strong reasoning |

To switch models in Claude Code, use `/model` before starting each phase.

---

## Phase Sequence

```
1. PLANNING  →  2. DESIGN  →  3. IMPLEMENTATION  →  4. REVIEW  →  5. TESTING
     ↑                                                    │
     └────────────────── (if review fails) ───────────────┘
```

Each phase has its own agent doc in `docs/workflows/`. Read the relevant agent doc before starting that phase.

---

## Phase 1: Planning
**Agent doc:** `docs/workflows/planning-agent.md`
**Model:** Opus

Analyze the codebase, read the feature spec and relevant skill docs, and produce a task breakdown. **No code is written in this phase.**

**Output:** Updated `PROGRESS.md` with codebase analysis and subtask list.

**Exit criteria:** All relevant files identified, subtasks defined, skill docs read.

---

## Phase 2: Design
**Agent doc:** `docs/workflows/design-agent.md`
**Model:** Opus

Propose the technical approach for implementing the feature. Document decisions, alternatives considered, and any risks.

**Output:** `DESIGN.md` in the project root.

**Exit criteria:** Approach documented, files to be modified listed, edge cases identified.

---

## Phase 3: Implementation
**Agent doc:** `docs/workflows/implementation-agent.md`
**Model:** Sonnet

Build the feature according to the approved design. Work through subtasks sequentially, testing each one. Spin up sub-agents for independent work where possible.

**Output:** Working code, updated `PROGRESS.md` with completed subtasks.

**Exit criteria:** All subtasks complete, each verified individually.

---

## Phase 4: Review
**Agent doc:** `docs/workflows/review-agent.md`
**Model:** Opus

A dedicated review pass that checks the implementation against the feature spec's acceptance criteria. This is **not** self-review by the implementation agent — it is a separate, critical evaluation. If issues are found, they are sent back to Implementation (Phase 3) with specific fix instructions.

**Output:** Review notes appended to `PROGRESS.md`. Either a pass or a list of required changes.

**Exit criteria:** All acceptance criteria verified, no outstanding issues.

---

## Phase 5: Testing
**Agent doc:** `docs/workflows/testing-agent.md`
**Model:** Opus

Write and run Playwright tests to verify the feature works end-to-end. Test edge cases, verify no regressions in existing functionality.

**Output:** Test scripts in `tests/features/`, test results appended to `PROGRESS.md`. Final status summary.

**Exit criteria:** All tests pass, no regressions, PROGRESS.md finalized.

---

## General Guidelines

- **Switch models between phases.** Use `/model` in Claude Code to switch to the assigned model before starting each phase.
- **Don't break existing functionality.** Run the app and verify before/after.
- **Keep changes minimal and focused.** Don't refactor unrelated code.
- **Comment your changes** so future developers understand what was done and why.
- **Update skill docs** if you discover new patterns or domain knowledge during any phase. Add findings to the relevant file in `docs/skills/`.

---

## PROGRESS.md Template

When you create PROGRESS.md, start with this structure:

```markdown
# Implementation Progress: [Feature Name]

## Phase 1: Planning (Opus)
- [ ] Read feature spec
- [ ] Read relevant skill docs from docs/skills/
- [ ] Identify relevant components and files
- [ ] Document file paths
- [ ] Break feature into subtasks

## Phase 2: Design (Opus)
- [ ] Propose technical approach in DESIGN.md
- [ ] List alternatives considered
- [ ] Identify edge cases and risks

## Phase 3: Implementation (Sonnet)
(Subtasks populated during Planning phase)

## Phase 4: Review (Opus)
- [ ] Check each acceptance criterion
- [ ] Verify no regressions
- [ ] Send back for changes if needed (list specific issues)

## Phase 5: Testing (Opus)
- [ ] Write Playwright tests
- [ ] Run tests
- [ ] Test edge cases
- [ ] Final status summary

## Blockers
(Document any issues that prevent progress)
```
