#!/bin/bash

# Input check
if [ $# -lt 2 ]
then
	echo "Expected input:"
	echo "grade.sh <ref interpreter> <hw submission>"
  exit 1
fi

# Setup
score=0
quandary=$1
homework=$2

# Functions
run_test() {
	# Setup test file
	cat $homework util/newline util/genericEquals.q util/newline $1 > test.q
	
	# Run test file
	output=$($quandary ./test.q 20)
	points=$(expr "$output" : 'Interpreter returned \(.*\)Quandary')
	# echo $output
	if [[ $output != *"error"* ]]
	then
		score=$((score + $points))
	fi
}

# Q1
run_test ./q1/test1.q
###run_test ./q1/test2.q
run_test ./q1/test3.q
###run_test ./q1/test4.q
run_test ./q1/test5.q
###run_test ./q1/test6.q
run_test ./q1/test7.q
###run_test ./q1/test8.q

# Q2
run_test ./q2/test1.q
###run_test ./q2/test2.q
###run_test ./q2/test3.q
###run_test ./q2/test4.q
run_test ./q2/test5.q
run_test ./q2/test6.q
run_test ./q2/test7.q
###run_test ./q2/test8.q

# Q3
run_test ./q3/test1.q
###run_test ./q3/test2.q
###run_test ./q3/test3.q
run_test ./q3/test4.q
###run_test ./q3/test5.q
###run_test ./q3/test6.q
run_test ./q3/test7.q
run_test ./q3/test8.q

# Q4
run_test ./q4/test1.q
###run_test ./q4/test2.q
run_test ./q4/test3.q
###run_test ./q4/test4.q
run_test ./q4/test5.q
###run_test ./q4/test6.q
###run_test ./q4/test7.q
run_test ./q4/test8.q

# Q5
###run_test ./q5/test1.q
run_test ./q5/test2.q
###run_test ./q5/test3.q
run_test ./q5/test4.q
run_test ./q5/test5.q
###run_test ./q5/test6.q
run_test ./q5/test7.q
###run_test ./q5/test8.q

# Results
echo "Score: $score"
