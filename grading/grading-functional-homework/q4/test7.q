int main(int arg) {
    Ref input = ((1 . nil) . ((2 . (3 . nil)) . (4 . nil)));
    if (isSorted(input) == 0) {
	return 1;
    }
    return 0;
}
