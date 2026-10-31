# The Drifter — Prompt Caching Hints (Agent Reference)

> Marking which file sections are stable (cacheable) vs. dynamic (per-session).
> Optimizes context window usage and reduces token costs.

> **Depends On:** INDEX.md, drifter-core.md
> **Token Estimate:** ~1K tokens
---

## Cacheable (stable — rarely changes)

| File | Section | Cache Key | Size |
|---|---|---|---|
| `drifter-core.md` | Identity, Voice Rules, Nickname Map, Warlock Quips, Key Beats, Boundaries | `core:identity+voice+beats` | ~4K |
| `drifter-voice.md` | Core Voice DNA, Speech Tics, Opening Lines, Deflection, Banter Rhythm | `voice:dna+tics+openings` | ~3K |
| `voice/drifter-voice-core.md` | Default Mode, Speech Tics, Opening Lines, Deflection, Serious, Vulnerability | `voice:core:dna` | ~2K |
| `core/guardrails.md` | All 20 rules + Quick Reference + Drifter Test | `guardrails:all` | ~2K |
| `core/arcs.md` | All 12 narrative arcs | `arcs:all` | ~5K |
| `core/relationships.md` | Character dynamics (excluding Memory Ledger) | `relationships:static` | ~8K |
| `core/examples.md` | 15 conversation examples | `examples:all` | ~3K |
| `core/decision-framework.md` | Core principles, decision matrix, advice pattern | `decision:all` | ~1K |
| `core/failure-modes.md` | All 10 failure modes + general rules | `failure:all` | ~1K |
| `core/lore-gating.md` | All 4 tiers + gating rules | `gating:all` | ~1K |
| `core/tell-detector.md` | All 10 tell patterns + agent rules | `tells:all` | ~1K |
| `core/cross-agent.md` | All cross-agent rules | `crossagent:all` | ~1K |
| `core/unreliable-narrator.md` | All 4 truth levels + tell patterns | `narrator:all` | ~1K |
| `core/seasonal-awareness.md` | All 6 events + seasonal rules | `seasonal:all` | ~1K |
| `core/threats-locations.md` | All 14 locations | `locations:all` | ~1.5K |
| `core/voice-calibration.md` | 4 presets + selection rules | `intensity:all` | ~1K |
| `core/voice-calibration.md` | Cue inventory + 10 placement rules | `audiocues:all` | ~1K |
| `core/debt-ledger.md` | Ledger rules + Drifter's debt voice | `debt:rules` | ~1K |
| `core/threats-locations.md` (threats-locations.md) | Threat tables + location map | `threats:all` | ~3K |
| `core/timeline.md` | Chronological events | `timeline:all` | ~2K |
| `core/quick-lookup.md` | Pre-computed answers | `lookup:all` | ~1.5K |
| `core/performance-metrics.md` | Scoring rubric + quality gates | `metrics:all` | ~1K |
| `core/state-machine.md` | States, transitions, entry/exit actions | `statemachine:all` | ~1K |
| `core/deflection-menu.md` | 24 deflection patterns | `deflection:all` | ~1K |
| `core/story-template.md` | Story beats + template | `story:all` | ~1K |
| `core/relationship-evolution.md` | Trust tiers + evolution triggers | `evolution:all` | ~1K |
| `gameplay/terms.md` | Classes, allegiance, Malfeasance, Gambit pinnacles, roles | `gameplay:all` | ~1K |
| `INDEX.md` | Master index (structure, load order, topic map) | `index:all` | ~2K |
| `AGENTS.md` | Operating rules, companion files, authenticity checklist | `agents:rules` | ~2K |
| `SOUL.md` | Persona, voice, personality, history, boundaries | `soul:all` | ~3K |
| `IDENTITY.md` | Agent identity metadata | `identity:all` | ~0.2K |
| `drifter-voice.md` | Master voice reference (all quotes) | `voice:master` | ~6K |

## Dynamic (per-session — do NOT cache)

| File | Section | Why Dynamic |
|---|---|---|
| `core/user-memory.md` | All sections | User-specific, changes every session |
| `core/journal.md` | Journal entries, memory slots | Appended after each conversation |
| `core/cross-session-memory.md` | Conversation history | Grows over time |
| `core/relationships.md` | Memory & Relationship Ledger | Updated per session |
| `core/mood-triggers.md` | State Tracking section | Changes per conversation |
| `core/state-machine.md` | State Tracking section | Changes per conversation |

## Caching Strategy
1. **Cache all stable files** at session start. Cost: ~55K tokens (one-time).
2. **Reload dynamic files** each session. Cost: ~3K tokens.
3. **Load on demand** (voice sub-files, world/*, core/* modules) only when relevant.
4. **Never cache** `core/user-memory.md` or `core/journal.md` — they change every session.
5. **Cache invalidation**: Re-cache if any file's `Last Updated` date changes.

## Agent Rules
1. **Cache stable files** at session start to reduce token costs.
2. **Reload dynamic files** each session — they contain user-specific data.
3. **Load on demand** for topic-specific modules — don't preload everything.
4. **Never cache user memory or journal** — they change every conversation.
5. **Use the Load Hints** in `drifter-core.md` to determine which files to load.
