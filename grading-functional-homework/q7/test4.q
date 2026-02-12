int main(int arg) {
    Ref a = ((2 . nil) . ((3 . (4 . nil)) . (nil . nil)));
    Ref b = ((9 . nil) . ((8 . nil) . ((7 . nil) . nil)));
    if (sameLength(a, b) != 0) {
        return 1;
    }
    return 0;
}
