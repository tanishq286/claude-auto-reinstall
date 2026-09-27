# Claude Code reinstall reference (canonical list)

Owner: Tanishq Agarwal (claude.ai Pro, tanishqagarwal2864@gmail.com). Created 2026-09-27. This file is the canonical REFERENCE for the skills, marketplaces, and plugins installed on the claude.ai account, plus the recipe to reinstall them on a fresh Claude Code container.

IMPORTANT: This file is a reference, not a standing authorization. Future sessions must get Tanishq's approval before mass-reinstalling these items; do not treat this list as pre-approval to install or change anything on his account.

## Originals
- find-skills (skill)
- wispr (skill - controls the Wispr dictation app; built for Mac, test carefully on Windows)
- wispr-flow (skill - recaps Wispr voice notes)

## Skills installed 2026-09-27 (claude.ai Customize > Skills > Upload skill)
- motion-design (from lottiefiles/motion-design-skill)
- design-dna (from zanwei/design-dna)
- threejs x10 (from CloudAI-X/threejs-skills): threejs-animation, threejs-fundamentals, threejs-geometry, threejs-interaction, threejs-lighting, threejs-loaders, threejs-materials, threejs-postprocessing, threejs-shaders, threejs-textures

## Marketplaces (Customize > Plugins > Add marketplace > Add from a repository)
- greensock/gsap-skills -> plugin "Gsap skills" (gsap-skills:* : core, timeline, scrolltrigger, plugins, react, utils, frameworks, performance)
- AThevon/genjutsu -> plugin "Genjutsu" (genjutsu:* motion/paint/design skills)
- cathrynlavery/diagram-design -> plugin "diagram-design"
- mukul975/anthropic-cybersecurity-skills -> plugin "cybersecurity-skills"

## Bundle plugins (rebuild + upload as plugin zip if missing)
- scientific-agent-skills: 166 science skills from K-Dense-AI/scientific-agent-skills. The repo has no marketplace.json; rebuild the bundle: clone repo, add .claude-plugin/plugin.json (name scientific-agent-skills), zip .claude-plugin/ + skills/, upload via Plugins > Upload plugin. Known validation fix: remove XML-like tags from SKILL.md descriptions (analytical-method-validation USP <1220>/<1225>/<1226>, datalad <NAME>/<COMPONENT>).

## Reinstall helper
reinstall.sh in this repo lists the CLI commands for reference; running it still requires Tanishq's approval for the reinstall.

## Notes
- Rs.0 rule: free tiers only, no paid add-ons.
- Verification: confirm installs via the account library (Customize > Skills/Plugins) rather than UI banners, which are unreliable.
