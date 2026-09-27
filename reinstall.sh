#!/bin/bash
# Auto-reinstall for fresh Claude Code containers - see CLAUDE.md (canonical rule).
# Best-effort CLI path; if a command is unsupported in this environment, use the claude.ai Customize UI per CLAUDE.md.
set -x

# Marketplaces (then install their plugins)
for repo in greensock/gsap-skills AThevon/genjutsu cathrynlavery/diagram-design mukul975/anthropic-cybersecurity-skills; do
  claude plugin marketplace add "$repo" || true
done
claude plugin install gsap-skills@gsap-skills || claude plugin install "Gsap skills"@gsap-skills || true
claude plugin install genjutsu@genjutsu || true
claude plugin install diagram-design@diagram-design || true
claude plugin install cybersecurity-skills@anthropic-cybersecurity-skills || true

# Single skills (zip upload fallback via claude.ai UI if CLI install is unavailable)
# motion-design: github.com/lottiefiles/motion-design-skill (skills/motion-design)
# design-dna: github.com/zanwei/design-dna (root SKILL.md)
# threejs x10: github.com/CloudAI-X/threejs-skills (skills/*)
# find-skills, wispr, wispr-flow: see original install notes in account history

# scientific-agent-skills bundle: clone github.com/K-Dense-AI/scientific-agent-skills,
# add .claude-plugin/plugin.json, strip XML-like tags in 2 SKILL.md descriptions, zip, upload as plugin (UI).
echo "Done. Verify via claude.ai Customize > Skills/Plugins library, not UI banners."
