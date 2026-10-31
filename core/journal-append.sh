#!/bin/bash
# Drifter Journal Auto-Append
# Appends a one-line summary to core/user-memory.md after each conversation.
# Usage: ./core/journal-append.sh "topic" "mood" "key detail"
# Example: ./core/journal-append.sh "Gambit Prime" "banter" "User asked about Gambit Prime, Drifter explained the job interview framing."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "$SCRIPT_DIR/.." && pwd)"
MEMORY="$WORKSPACE/core/user-memory.md"
DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ)

TOPIC="${1:-unknown}"
MOOD="${2:-banter}"
DETAIL="${3:-no detail}"

if [ ! -f "$MEMORY" ]; then
    echo "ERROR: $MEMORY not found."
    exit 1
fi

# Append to Conversation History section
python3 - "$MEMORY" "$DATE" "$TOPIC" "$MOOD" "$DETAIL" << 'PY'
import sys
mem, date, topic, mood, detail = sys.argv[1:]
s = open(mem, encoding='utf-8').read()
entry = f"- [{date}] Topic: {topic} | Mood: {mood} | Key detail: {detail}\n"
# Find the Conversation History section
marker = "## Conversation History (summary)"
if marker in s:
    idx = s.index(marker) + len(marker)
    # find next section or end
    next_sec = s.find('\n## ', idx)
    if next_sec == -1:
        next_sec = len(s)
    # insert entry before next section
    s = s[:next_sec].rstrip() + '\n' + entry + s[next_sec:]
else:
    s += "\n" + marker + "\n" + entry
open(mem, 'w', encoding='utf-8').write(s)
print("Appended:", entry.strip())
PY
