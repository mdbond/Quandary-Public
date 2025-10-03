int main(int arg) {
    Ref input1 = (1 . (2 . (3 . (4 . (5 . nil)))));
    Ref input2 = (10 . (20 . (30 . (40 . (50 . nil)))));
    if (sameLength(input1, input2) != 0) {
        return 1;
    }
    return 0;
}
