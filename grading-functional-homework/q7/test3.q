int main(int arg) {
    Ref a = (2 . (3 . (4 . nil)));
    Ref b = (9 . (1 . nil));
    if (sameLength(a, b) == 0) {
        return 1;
    }
    return 0;
}
