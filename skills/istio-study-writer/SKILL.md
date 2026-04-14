---
name: istio-study-writer
description: Write and maintain week-by-week Istio study notes in a documentation-like tone using official Istio docs as the factual baseline, Korean community blog posts as explanatory support, and explicit version checks for any setup or command guidance.
---

# Istio Study Writer

Use this skill when expanding or revising this repository's Istio study notes.

## Goal

Produce study material that reads like a careful technical guide:

- official-documentation tone
- clear scope by week
- explicit distinction between stable concepts and version-sensitive commands
- blog-derived context without copying blog structure or phrasing too closely

## Source priority

1. Official Istio documentation for definitions, architecture, and any version-sensitive workflow
2. Public study/blog material for explanatory framing, examples, and Korean-language intuition
3. Local practice manifests in `week1/practice/` or later week folders for concrete hands-on steps

If a blog conflicts with official docs, prefer the official docs and note the discrepancy in the writing rather than silently inheriting the older statement.

## Writing tone

Use a restrained, documentation-like tone:

- define terms before expanding them
- avoid hype, cheerleading, and conversational filler
- prefer precise verbs such as "provides", "controls", "configures", "routes", "applies", "observes"
- keep claims scoped; do not overstate what Istio guarantees

## Weekly note structure

For each week, prefer this structure:

1. What this week is for
2. Why the problem exists
3. Core concepts and architecture
4. Key components or resources
5. What to observe in practice
6. Common misunderstandings
7. Completion checklist
8. References and version notes

## Version and accuracy rules

- Treat installation commands, versions, and release support as unstable facts
- Re-check official docs before updating setup guidance
- Mark old community examples as historical or older-version context when appropriate
- Avoid saying "latest" unless it was verified in the current session

## Diagram policy

Prefer diagrams embedded directly in Markdown using Mermaid for:

- request flow
- control plane / data plane relationships
- service dependency maps
- learning sequence maps

Avoid external screenshots unless they are essential.

## Blog synthesis rules

When combining multiple community writeups:

- extract the overlapping conceptual core first
- keep unique useful insights as supporting paragraphs
- do not imitate any one blog's structure too literally
- avoid unverified claims that appear in only one source unless confirmed

## Repository conventions

- Main reading surface: `posts/`
- Reference links only: `references/`
- Practice files: `week1/practice/` or future week practice folders
- Keep the repo lean; do not store large raw article backups unless explicitly requested

## Update workflow

1. Identify the week scope
2. Re-check official docs for unstable facts
3. Compare at least two public community sources when available
4. Rewrite the weekly article in documentation tone
5. Add or update Mermaid diagrams if they materially improve comprehension
6. Ensure the article ends with a checklist and reference/version note
