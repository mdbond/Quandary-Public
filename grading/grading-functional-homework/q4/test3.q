int main(int arg) {
    Ref input = ((1 . nil) . ((2 . nil) . ((3 . (4 . nil)) . ((5 . (6 . nil)) . nil))));
    if (isSorted(input) != 0) {
	return 1;
    }
    return 0;
}
