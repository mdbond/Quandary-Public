int main(int arg) {
    Ref a = (2 . (3 . nil));
    Ref b = (5 . (7 . nil));
    if (sameLength(a, b) != 0) {
        return 1;
    }
    return 0;
}
