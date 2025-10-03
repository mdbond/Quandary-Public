int main(int arg) {
    Ref input = ((1 . (2 . nil)) . ((4 . nil) . ((5 . nil) . nil)));
    if (isSorted(input) == 0) {
	return 1;
    }
    return 0;
}
