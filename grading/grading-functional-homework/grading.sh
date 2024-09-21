# Input check
if [ $# -lt 2 ]
then
	echo "Expected input:"
	echo "grade.sh <ref interpreter> <hw submission>"
fi

# Setup
score=0
quandary=$1
homework=$2

# Functions
run_test() {
	# Setup test file
	cat $homework util/newline util/genericEquals.q util/newline $1 > test.q
	chmod 777 test.q
	
	# Run test file
	output=$($quandary ./test.q 20)
	points=`expr "$output" : 'Interpreter returned \(.*\)Quandary'`
	# echo $output
	if [[ $output != *"error"* ]]
	then
		score=$((score + $points))
	fi
}

# Q1
run_test ./q1/test1.q
run_test ./q1/test2.q
run_test ./q1/test3.q
run_test ./q1/test4.q

# Q2
run_test ./q2/test1.q
run_test ./q2/test2.q
run_test ./q2/test3.q
run_test ./q2/test4.q

# Q3
run_test ./q3/test1.q
run_test ./q3/test2.q
run_test ./q3/test3.q
run_test ./q3/test4.q

# Q4
run_test ./q4/test1.q
run_test ./q4/test2.q
run_test ./q4/test3.q
run_test ./q4/test4.q

# Q5
run_test ./q5/test1.q
run_test ./q5/test2.q
run_test ./q5/test3.q
run_test ./q5/test4.q

# Results
echo "Score: $score"