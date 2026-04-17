#!/bin/bash

set -e

[ -f "./demo_bus.spl" ] && {
	echo "Bus exists; please remove ./demo_bus.spl to recreate it."
	exit 1
}

splinterpctl init demo_bus.spl

# Splinter signal groups start at 0 and end at 63.
# We can only use 63 bloom labels in total (the lowest bit is reserved) so we blank out the 64th segment
# The offset here accomplishes that mapping.
for i in {1..63}
do
	idx=$((i-1))
	splinterpctl --use demo_bus.spl --rc-file config/demo.rc set lcars_${i} "init"
	splinterpctl --use demo_bus.spl --rc-file config/demo.rc label lcars_${i} "user-label-${i}"
	splinterpctl --use demo_bus.spl --rc-file config/demo.rc bind "user-label-${i}" ${idx}
	echo "lcars demo: segment ${i} created, labeled and bound to group ${idx}."
done

echo ""
echo "Demo bus initialized."
echo ""
