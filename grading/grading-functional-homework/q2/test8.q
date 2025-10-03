int main(int arg) {
	Ref input1 = ((1 . (2 . (3 . nil))) . (3 . (4 . (5 . nil))));
	Ref input2 = (6 . nil);
	Ref output = ((1 . (2 . (3 . nil))) . (3 . (4 . (5 . (6 . nil)))));
	return genericEquals(append(input1, input2), output);
}
