#!/bin/bash

do_one_test() {
    POINTS=$1
    PROGRAM=$2
    INPUT=$3
    shift 3
    OPTIONS=$(echo $* | sed -e 's/#.*$//') # removes comments
    echo -n "Testing $OPTIONS $PROGRAM $INPUT, worth $POINTS points: "
    # Compare the last line if process returns nonzero code; otherwise compare last two lines

    #Uncomment to see reference interpreter output only:
    # echo ""
    # $REF_IMPL $OPTIONS $TESTCASE_DIR/$PROGRAM $INPUT
    # echo ""
    # return

    # Get interpreter return and quandary process return (last 2 lines) of ref and sub implementations
    REF_OUT=$("$REF_IMPL" $OPTIONS "$TESTCASE_DIR/$PROGRAM" $INPUT 2>&1 | tail -2)
    SUB_OUT=$($TIMEOUT ./quandary $OPTIONS "$TESTCASE_DIR/$PROGRAM" $INPUT 2>&1 | tail -2)
    # If the ref quandary process exited with a nonzero code, we only care about
    # the quandary process return value (the last line)
    if [[ $(echo "$REF_OUT" | tail -1) != "Quandary process returned 0" ]]; then
        REF_OUT=$(echo "$REF_OUT" | tail -1)
        SUB_OUT=$(echo "$SUB_OUT" | tail -1)
    fi

    MAX_SCORE=$((MAX_SCORE + POINTS))
    if [ "$REF_OUT" == "$SUB_OUT" ]; then
        echo PASSED
        SCORE=$((SCORE + POINTS))
    else
        if [ "$SUB_OUT" == "" ]; then
            echo 'FAILED (timeout?)'
        else
            echo FAILED
        fi
        # Uncomment to debug FAILED test cases only:
        # echo REF_OUT is $REF_OUT
        # echo SUB_OUT is $SUB_OUT
    fi
    # Uncomment to debug ALL test cases:
    # echo REF_OUT is $REF_OUT
    # echo SUB_OUT is $SUB_OUT
}

if [ "$#" -ne 4 ] && [ "$#" -ne 5 ]; then
    echo Usage: grade.sh SUBMISSION_TGZ REF_IMPL TESTCASES_FILE TESTCASE_DIR [TIMEOUT_IN_SECONDS]
    exit
fi

if [ -z "$JFLEX_DIR" ]; then
    echo JFLEX_DIR isn\'t set
    exit
fi
if [ -z "$CUP_DIR" ]; then
    echo CUP_DIR isn\'t set
    exit
fi

SUBMISSION_TGZ="$1"

SUBMISSION_DIR="./tmp.$RANDOM$RANDOM"
mkdir "$SUBMISSION_DIR"

# Remove tmp directory on exit
INITIAL_DIR=$(pwd)
trap "cd '$INITIAL_DIR' && rm -rf '$SUBMISSION_DIR'" EXIT

if [[ "$2" = /* ]]
then
  REF_IMPL="$2"
else
  REF_IMPL="../$2"
fi

if [[ "$3" = /* ]]
then
  TESTCASES_FILE="$3"
else
  TESTCASES_FILE="../$3"
fi

if [[ "$4" = /* ]]
then
  TESTCASE_DIR="$4"
else
  TESTCASE_DIR="../$4"
fi

TIMEOUT=""
if [ "$#" -eq 5 ]; then
    TIMEOUT="timeout $5"
fi

# Extract the submitted .tgz to a new directory
echo Extracting submission to $SUBMISSION_DIR, will perform testing there
gzip -cd "$SUBMISSION_TGZ" | tar xf - -C "$SUBMISSION_DIR"

# Build the submitted project
cd "$SUBMISSION_DIR"
make clean
make classes
if [[ $? -ne 0 ]]; then
    echo Couldn\'t run make.
    exit 1
fi

# Test each test case
SCORE=0
while IFS= read -r line; do
    #echo do_one_test $line
    do_one_test $line
done < "$TESTCASES_FILE"

echo Total score: $SCORE out of $MAX_SCORE

if [[ $SCORE -ne $MAX_SCORE ]]; then
    exit 2
fi
