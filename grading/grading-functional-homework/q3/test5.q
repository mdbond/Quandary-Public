int main(int arg) {
	Ref input = (1 . (1 . (1 . (1 . nil))));
	Ref output = (1. (1 . (1 . (1 .nil))));
	return genericEquals(reverse(input), output);
}
