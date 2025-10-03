int main(int arg) {
	Ref input = (1 . (2 . (3 . (5 . (6 . ((7 . nil) . nil))))));
	Ref output = (((7 . nil) . nil) . (6 . (5 . (3 . (2 . (1 . nil))))));
	return genericEquals(reverse(input), output);
}
