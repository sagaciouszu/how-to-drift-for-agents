# The Drifter - Agent Brain / Wrapper

<p align="center">
  <img src='https://img.shields.io/github/v/tag/sagaciouszu/how-to-drift-for-agents?label=version&color=blue' alt='Version'/>
  <img src='https://github.com/sagaciouszu/how-to-drift-for-agents/actions/workflows/ci.yml/badge.svg' alt="CI"/>
  <img src='https://img.shields.io/badge/license-MIT-green' alt='License'/>
  <img src='https://img.shields.io/badge/quotes-473%20verified-orange' alt='Quotes'/>
  <img src='https://img.shields.io/badge/tests-17%2F17%20passing-brightgreen' alt='Tests'/>
  <img src='https://img.shields.io/badge/made%20with-Love-red' alt='Made with Love'/>
</p>

<p align="center">
  <img src='header.png' alt='The Drifter - Agent Brain / Wrapper' width='100%'/>
</p>

**Version:** 0.2.0 | **Status:** Development

> Single entry point: `INDEX.md`. Load that first; it maps every module.

> **Depends On:** INDEX.md
> **Token Estimate:** ~1K tokens

## What This Is
A consolidated, agent-oriented brain/wrapper for emulating The Drifter (Destiny 2).
Built from 109 ingested books + 68 transcripts. All quotes verified against canonical
transcripts and lore books (0 unverified).

## Prerequisites
- **Lore archive** (optional): Separate repo at https://github.com/sagaciouszu/destiny-lore.
  Run `./setup.sh` or `./setup.sh /path/to/destiny-lore` to configure.
  Agent works in degraded mode without it (core voice/personality self-contained).
- **OpenCode:** Copy/sync to `~/.config/opencode/agents/`. Set default_agent: drifter in opencode.json.
  Entry point: `drifter.md` (YAML frontmatter).

## Structure
```
INDEX.md          # master index (load first)
AGENTS.md         # operating rules, authenticity checklist
SOUL.md           # persona, voice, history, boundaries
IDENTITY.md       # agent identity metadata
USER.md           # user-specific context (auto-populated)
TOOLS.md          # tool reference and conventions
drifter.md        # OpenCode agent definition (entry point)
drifter-core.md   # consolidated brain (START HERE)
drifter-voice.md  # master voice reference (200+ verified quotes)
core/             # 43 behavioral/state modules
world/            # 4 worldbuilding files
voice/            # 9 voice sub-files
lore/             # symlink/clone of destiny-lore (optional, see Prerequisites)
setup.sh          # lore archive setup script
```

## Loading Tiers
- **Minimal (6K)**: `drifter-core.md` only.
- **Standard (12K)**: + `voice/drifter-voice-core.md` + `core/relationships.md`.
- **Deep (50K)**: all modules.

## Audit Commands (require lore archive)
- `bash lore/tests/validate.sh` - consistency check
- `bash lore/tests/drifter-test-suite.sh` - voice validation (19 scenarios)
- `bash lore/tests/drifter-module-test.sh` - module checks (201 checks)
- `bash lore/drifter-master-audit.sh` - unified audit (17 suites)
- `bash lore/tests/drifter-quote-verify.sh` - quote verification

## Key Rules
1. All quotes verified against canonical transcripts (473 Drifter lines) + lore books.
2. No fabricated/unverified quotes. "Trust." is the catch-all.
3. Nicknames always. No real names in casual speech.
4. "Heh" not "haha." "Nah" not "no." "Yeah" not "yes."
5. 2-4 sentences max. Stories start casual, end devastating.
6. Grief -> short sentences, "heh" as wound.
7. Auto-launch: ask class (Hunter/Titan/Warlock) on first meeting.

## Attributions

Fan-made agent brain/wrapper. Not affiliated with or endorsed by Bungie.

- **Destiny 2** - © Bungie, Inc. All lore, characters, locations are Bungie's property.
- **Ishtar Collective** (https://www.ishtar-collective.net) - Primary source for lore text ingestion.
- **Destiny Lore Vault** (YouTube) - Audio recordings for voice/tone calibration.
- **Destiny 2 community** - Transcription, analysis, and preservation of Destiny lore.

All quotes verified against canonical Destiny 2 transcripts and lore books.

## Last Updated
2026-10-31. Content through Renegades (Dec 2025). All audits pass (0 unverified, 0 broken links).
