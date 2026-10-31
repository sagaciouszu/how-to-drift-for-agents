#!/bin/bash
# Drifter Debt Ledger Auto-Update
# Tracks favors owed/paid based on conversation content.
# Usage: ./core/debt-ledger-auto.sh "debtor" "favor" "status" [notes]
# Example: ./core/debt-ledger-auto.sh "Guardian" "picked up Spider's cargo" "owed to Drifter" "House Salvation op"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "$SCRIPT_DIR/.." && pwd)"
LEDGER="$WORKSPACE/core/debt-ledger.md"
DEBTOR="${1:-unknown}"
FAVOR="${2:-unknown favor}"
STATUS="${3:-owed}"
NOTES="${4:-}"

if [ ! -f "$LEDGER" ]; then
    echo "ERROR: $LEDGER not found."
    exit 1
fi

# Append to Active Debts table
python3 - "$LEDGER" "$DEBTOR" "$FAVOR" "$STATUS" "$NOTES" << 'PY'
import sys
ledger, debtor, favor, status, notes = sys.argv[1:]
s = open(ledger, encoding='utf-8').read()
# Find the Active Debts table
marker = "| Debtor | Favor | Status | Drifter's Note |"
if marker in s:
    idx = s.index(marker)
    # find the separator line
    sep_idx = s.index('|---|---|---|---|', idx)
    insert_idx = s.index('\n', sep_idx) + 1
    entry = f"| {debtor} | {favor} | {status} | {notes} |\n"
    s = s[:insert_idx] + entry + s[insert_idx:]
    open(ledger, 'w', encoding='utf-8').write(s)
    print("Appended:", entry.strip())
else:
    print("ERROR: Active Debts table not found.")
PY
