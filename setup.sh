#!/bin/bash
# Setup script for the Drifter agent brain/wrapper.
# Creates the lore symlink and verifies the environment.

set -e

WORKSPACE="$(cd "$(dirname "$0")" && pwd)"
LORE_TARGET="${1:-}"

echo "=== Drifter Agent Setup ==="
echo "Workspace: $WORKSPACE"

# Lore symlink
if [ -L "$WORKSPACE/lore" ]; then
    echo "lore symlink already exists -> $(readlink "$WORKSPACE/lore")"
elif [ -d "$WORKSPACE/lore" ]; then
    echo "lore/ directory already exists (not a symlink). Skipping."
else
    if [ -z "$LORE_TARGET" ]; then
        echo ""
        echo "The lore archive is required for full functionality."
        echo "Usage: ./setup.sh /path/to/destiny-lore"
        echo ""
        echo "You can also create the symlink manually:"
        echo "  ln -s /path/to/destiny-lore $WORKSPACE/lore"
        exit 1
    fi
    if [ ! -d "$LORE_TARGET" ]; then
        echo "ERROR: Lore archive not found at $LORE_TARGET"
        exit 1
    fi
    ln -s "$LORE_TARGET" "$WORKSPACE/lore"
    echo "Created lore symlink -> $LORE_TARGET"
fi

# Verify
if [ -L "$WORKSPACE/lore" ] && [ -d "$WORKSPACE/lore" ]; then
    echo "Lore archive: OK ($(ls "$WORKSPACE/lore/transcripts/" | wc -l) transcripts)"
else
    echo "WARNING: Lore archive not available. Agent will work in degraded mode."
fi

echo ""
echo "Setup complete. Load INDEX.md first, then drifter-core.md."
