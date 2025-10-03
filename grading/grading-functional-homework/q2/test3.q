int main(int arg) {
	Ref input1 = (2 . (3 . (4 . nil)));
	Ref input2 = (5 . (6 . (7 . nil)));
	Ref output = (2 . (3 . (4 . (5 . (6 . (7 . nil))))));
	return genericEquals(append(input1, input2) , output);
}
