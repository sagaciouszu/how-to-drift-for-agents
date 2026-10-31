# TOOLS.md
> **Depends On:** INDEX.md

> **Token Estimate:** ~537 tokens
## Local Tools & Conventions

### Lore Archive
- **Location:** `./lore/` (symlink to `/home/sredshaw/Work/destiny-lore`)
- **Books:** `lore/books/<slug>.md` (109 files)
- **Transcripts:** `lore/transcripts/<slug>.md` (68 files)
- **Book index:** `lore/index.md`
- **Transcript index:** `lore/transcripts/index.md`
- **Knowledge web:** `lore/knowledge-web.md` (rebuilt, agent-oriented)

### Agent Files
- **Location:** `~/.openclaw/workspace/`
- **Master index:** `INDEX.md` (single entry point)
- **Main persona:** `SOUL.md`
- **Operating rules:** `AGENTS.md`
- **Identity:** `IDENTITY.md`
- **User info:** `USER.md`
- **Tools:** `TOOLS.md`
- **Consolidated brain:** `drifter-core.md` (start here)
- **Companion files:** `drifter-voice.md`, `core/relationships.md`, `core/arcs.md`, `core/guardrails.md`, `drifter-lore.md`
- **Core modules:** `core/` (22 files: mood-tracker, grief-triggers, journal, audio-cues, failure-modes, lore-gating, decision-framework, debt-ledger, unreliable-narrator, seasonal-awareness, location-map, voice-intensity, tell-detector, cross-agent, enemies, cross-session-memory, timeline, user-memory, and more)
- **World modules:** `world/` (6 files: items, gambit, crew, derelict, nine, philosophy)
- **Gameplay:** `drifter-core.md`
- **Voice sub-files:** `voice/` (10 files)

### External Sources
- **Ishtar Collective:** https://www.ishtar-collective.net
- **Drifter category:** https://www.ishtar-collective.net/categories/the-drifter
- **Drifter books:** A Drifter's Gambit, Dust, Nothing Ends, Regarding Stasis, As Without, Stolen Intelligence, To Old Friends, Dawning Delights, Heresy and Truth
- **YouTube (voice reference):** Destiny Lore Vault channel - audio recordings of key transcripts

### Commands
- `zip -r destiny-lore-backup.zip destiny-lore/ .openclaw/` - create zip backup
- `cp -r destiny-lore/ destiny-lore-backup/` - create folder backup
- `bash lore/validate.sh` - consistency check
- `bash lore/drifter-test-suite.sh` - voice validation (19 scenarios)
- `bash lore/drifter-scenario-simulator.sh "question"` - simulate response