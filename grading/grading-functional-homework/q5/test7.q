int main(int arg) {
    Ref input1 = (7 . nil);
    Ref input2 = (8 . nil);
    if (sameLength(input1, input2) != 0) {
        return 1;
    }
    return 0;
}
