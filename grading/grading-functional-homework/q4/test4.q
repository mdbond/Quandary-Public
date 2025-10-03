int main(int arg) {
    Ref input = ((0 . nil) . ((1 . (2 . nil)) . ((3 . (4 . (5 . nil))) . ((6 . (7 . (8 . (9 . nil)))) . ((10 . (11 . (12 . (13 . (14 . nil))))) . nil)))));
    if (isSorted(input) != 0) { 
	return 1;
    }
    return 0;
}
