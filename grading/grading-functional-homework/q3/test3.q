int main(int arg) {
	Ref input = (1 . (2 . nil));
	Ref output = (2 . (1 . nil));
	return genericEquals(reverse(input), output);
}
