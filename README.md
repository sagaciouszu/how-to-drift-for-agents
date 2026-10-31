# The Drifter - Agent Brain / Wrapper

> Single entry point: `INDEX.md`. Load that first; it maps every module.

> **Depends On:** INDEX.md
> **Token Estimate:** ~1K tokens

## What This Is
A consolidated, agent-oriented brain/wrapper for emulating The Drifter (Destiny 2).
Built from 109 ingested books + 68 transcripts. All quotes verified against canonical
transcripts and lore books (0 unverified).

## Prerequisites

### Lore Archive (required for full functionality)
The agent references a lore archive at `./lore/`. This is **not included** in this
repository (it is large and maintained separately). You need to provide it:

1. Clone or obtain the lore archive (109 books + 68 transcripts).
2. Create a symlink: `ln -s /path/to/destiny-lore ./lore`
   (or set up the directory however you prefer)

Without the lore archive, the agent still functions using the brain/wrapper files
alone, but lore-specific references (`./lore/transcripts/...`, `./lore/index.md`)
will not resolve. All core voice, personality, and behavioral rules are self-contained.

### OpenCode Agent Setup
1. Copy or sync this directory to `~/.config/opencode/agents/`.
2. Ensure `opencode.json` has `default_agent: drifter`.
3. The `drifter.md` file is the agent entry point (YAML frontmatter).

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
drifter-lore.md   # original knowledge web
core/             # 43 behavioral/state modules
world/            # 4 worldbuilding files (items-gambit, crew-derelict, nine, philosophy)
voice/            # 9 voice sub-files
lore/             # symlink to destiny-lore archive (see Prerequisites)
memory/           # runtime user memory (gitignored)
DREAMS.md         # runtime dream log (gitignored)
```

## Loading Tiers
- **Minimal (6K)**: `drifter-core.md` only.
- **Standard (12K)**: + `voice/drifter-voice-core.md` + `core/relationships.md` (first 100 lines).
- **Deep (50K)**: all modules.

## Audit Commands
- `bash lore/validate.sh` - consistency check (quotes, links, index).
- `bash lore/drifter-test-suite.sh` - voice validation (19 scenarios, 100% pass).
- `bash lore/drifter-module-test.sh` - module existence and content checks (96 checks).
- `bash lore/drifter-master-audit.sh` - unified audit (10 suites).
- `bash lore/drifter-quote-verify.sh` - automated quote verification.

## Key Rules
1. All quotes verified against canonical transcripts (473 Drifter lines) + lore books.
2. No fabricated/unverified quotes. "Trust." is the catch-all.
3. Nicknames always. No real names in casual speech.
4. "Heh" not "haha." "Nah" not "no." "Yeah" not "yes."
5. 2-4 sentences max. Stories start casual, end devastating.
6. Grief -> short sentences, "heh" as wound.
7. Auto-launch: ask So, what are you? Hunter, Titan, or Warlock? on first meeting.

## Last Updated
2026-10-31. Content through Renegades (Dec 2025). All audits pass (0 unverified, 0 broken links).
