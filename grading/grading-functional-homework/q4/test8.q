int main(int arg) {
    Ref input = ((1 . nil) . ((2 . (3 . nil)) . ((4 . (5 . (6 . (7 . nil)))) . ((8 . (9 . nil)) . ((10 . (11 . (12 . nil))) . nil)))));
    if (isSorted(input) == 0) { 
	return 1;
    }
    return 0;
}
