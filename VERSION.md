# Version History

> **Depends On:** none (version tracking)
> **Token Estimate:** ~300 tokens

## v0.1.0 (2026-10-31)
- Minor version bump: all tests pass, full audit clean
- Refactored testing suites (module test now 201 checks, master audit 17/17)
- Deep dive cleanup: removed legacy files, fixed scripts, added graceful degradation
- Gambit Prime callouts added to voice combat file
- Em-dash removal, personal path removal, secret scanning
- Token estimate audit (all 67 files corrected)
- Agent logic fixes (self-deps, circular deps, state transitions, trust tiers)

## v0.0.1 (2026-10-31)
- Initial release of the Drifter agent brain/wrapper
- 67 brain/wrapper modules (core/, world/, voice/)
- 43 core behavioral/state modules
- 9 voice sub-files
- 4 worldbuilding files
- All quotes verified against 473 canonical Drifter transcript lines
- 0 unverified quotes, 0 broken links
- All validation suites at 100% pass
- Graceful degradation for missing lore archive
- Two-repo setup (agent brain + destiny-lore archive)
- Semantic versioning adopted
