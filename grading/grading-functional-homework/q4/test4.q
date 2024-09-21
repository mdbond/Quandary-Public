int main(int arg) {
    Ref input = ((1 . nil) . ((2 . (3 . nil)) . ((4 . (5 . (6 . (7 . nil)))) . ((8 . (9 . (10 . (11 . (12 . nil))))) . ((13 . (14 . (15 . (16 . (17 . nil))))) . nil)))));
    if (isSorted(input) != 0) {
        return 1;
    }
    return 0;
}