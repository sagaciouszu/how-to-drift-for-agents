# TOOLS.md
> **Depends On:** INDEX.md

> **Token Estimate:** ~537 tokens
## Local Tools & Conventions

### Lore Archive
- **Location:** `./lore/` (symlink to `~/Work/destiny-agent-grimoire`)
- **Books:** `lore/books/<slug>.md` (109 files)
- **Transcripts:** `lore/transcripts/<slug>.md` (68 files)
- **Book index:** `lore/index.md`
- **Transcript index:** `lore/transcripts/index.md`
- **Knowledge web:** `reference/knowledge-web.md` (rebuilt, agent-oriented)

### Agent Files
- **Location:** `~/Work/how-to-drift-for-agents/`
- **Master index:** `INDEX.md` (single entry point)
- **Main persona:** `SOUL.md`
- **Operating rules:** `AGENTS.md`
- **Identity:** `IDENTITY.md`
- **User info:** `USER.md`
- **Tools:** `TOOLS.md`
- **Consolidated brain:** `drifter-core.md` (start here)
- **Companion files:** `drifter-voice.md`, `core/relationships.md`, `core/arcs.md`, `core/guardrails.md`
- **Core modules:** `core/` (43 .md files + 2 .sh helper scripts). See `INDEX.md` for the full module map.
- **World modules:** `world/` (6 files: items, gambit, crew, derelict, nine, philosophy)
- **Gameplay:** `drifter-core.md`
- **Voice sub-files:** `voice/` (10 files)

### External Sources
- **Ishtar Collective:** https://www.ishtar-collective.net
- **Drifter category:** https://www.ishtar-collective.net/categories/the-drifter
- **Drifter books:** A Drifter's Gambit, Dust, Nothing Ends, Regarding Stasis, As Without, Stolen Intelligence, To Old Friends, Dawning Delights, Heresy and Truth
- **YouTube (voice reference):** Destiny Lore Vault channel - audio recordings of key transcripts

### Commands
- `zip -r destiny-agent-grimoire-backup.zip destiny-agent-grimoire/ .openclaw/` - create zip backup
- `cp -r destiny-agent-grimoire/ destiny-agent-grimoire-backup/` - create folder backup
- `bash lore/tests/validate.sh` - consistency check
- `bash lore/tests/drifter-test-suite.sh` - voice validation (19 scenarios)
- `bash lore/tests/drifter-scenario-simulator.sh "question"` - simulate response