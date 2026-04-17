#!/bin/bash
# littlebang.sh - Set up the Splinter / Claude Code demo (no LCARS)

set -e

BUS_FILE="demo_bus.spl"

cleanup() {
    echo ""
    echo "You can remove ${BUS_FILE} when you're ready to."
    echo "It's preserved in case you want to inspect it with splinter's tools."
    # rm -f "$BUS_FILE"
    echo "Done."
}

trap cleanup EXIT INT TERM

# ── 1. Initialize the bus ──────────────────────────────────────────────────
echo ""
echo "Initializing Splinter bus ..."
bash scripts/bus-init.sh

export SPLINTER_CONN_FN="$BUS_FILE"
export SPLINTER_AGENT_BUS="$BUS_FILE"

# ── 2. Ready ───────────────────────────────────────────────────────────────
echo ""
echo "┌─────────────────────────────────────────────────────────┐"
echo "│  SPLINTER BUS : $BUS_FILE"
echo "│"
echo "│  Start the demo by telling Claude Code:"
echo "│  \"Execute the spec in spec.md\""
echo "│"
echo "│  Press Ctrl-C to stop the demo and clean up."
echo "└─────────────────────────────────────────────────────────┘"
echo ""

# Keep alive so the trap fires cleanly on ctrl-c
while true; do sleep 60; done
