#!/bin/bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 REF_IMPL YOUR_PROGRAM"
    echo "Example: grading/grade-mem-mgmt-hw.sh ref/quandary prog.q"
    exit 1
fi

QUANDARY="$1"
PROG="$2"

# Helper: run a command, extract the last "Quandary process returned X" line, print X
run_and_get_code() {
    # Use a subshell so we don't pollute caller environment
    local output
    output="$("$QUANDARY" "$@" 2>&1)"
    echo "$output" | tail -n 1 | awk '{print $NF}'
}

score=0

#######################################
# Problem 1
#######################################
echo "Problem 1:"
echo "  Expect: MS 384 → 5,  MS 408 → 0"

code1=$(run_and_get_code -gc MarkSweep -heapsize 384 "$PROG" 1)
code2=$(run_and_get_code -gc MarkSweep -heapsize 408 "$PROG" 1)

echo "    Returned: $code1 , $code2"

if [[ "$code1" == "5" && "$code2" == "0" ]]; then
    echo "    ✓ Correct (5 pts)"
    score=$((score + 5))
else
    echo "    ✗ Incorrect"
fi
echo

#######################################
# Problem 2
#######################################
echo "Problem 2:"
echo "  Expect: RefCount 384 → 5,  MarkSweep 384 → 0"

code1=$(run_and_get_code -gc RefCount -heapsize 384 "$PROG" 2)
code2=$(run_and_get_code -gc MarkSweep -heapsize 384 "$PROG" 2)

echo "    Returned: $code1 , $code2"

if [[ "$code1" == "5" && "$code2" == "0" ]]; then
    echo "    ✓ Correct (5 pts)"
    score=$((score + 5))
else
    echo "    ✗ Incorrect"
fi
echo

#######################################
# Problem 3
#######################################
echo "Problem 3:"
echo "  Expect: MS 384 → 5,  Explicit 384 → 0"

code1=$(run_and_get_code -gc MarkSweep -heapsize 384 "$PROG" 3)
code2=$(run_and_get_code -gc Explicit -heapsize 384 "$PROG" 3)

echo "    Returned: $code1 , $code2"

if [[ "$code1" == "5" && "$code2" == "0" ]]; then
    echo "    ✓ Correct (5 pts)"
    score=$((score + 5))
else
    echo "    ✗ Incorrect"
fi
echo

#######################################
# Problem 4
#######################################
echo "Problem 4:"
echo "  Expect: Explicit 384 → 5,  MarkSweep 384 → 0"

code1=$(run_and_get_code -gc Explicit -heapsize 384 "$PROG" 4)
code2=$(run_and_get_code -gc MarkSweep -heapsize 384 "$PROG" 4)

echo "    Returned: $code1 , $code2"

if [[ "$code1" == "5" && "$code2" == "0" ]]; then
    echo "    ✓ Correct (5 pts)"
    score=$((score + 5))
else
    echo "    ✗ Incorrect"
fi
echo

echo "Total Score: $score / 20"
