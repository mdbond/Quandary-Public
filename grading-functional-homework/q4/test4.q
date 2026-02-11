int main(int arg) {
    Ref input = (nil . ((314 . nil) . ((15 . nil) . ((926 . (535 . (89 . (79 . nil)))) . ((3 . (2 . (3 . (8 . (4 . nil))))) . nil))))); /* Complicated example */
    if (isSorted(input) != 0) {
        return 1;
    }
    return 0;
}

