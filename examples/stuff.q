Q main(int n) {
    Ref x = n + 1 . n + 2;
    return (int)left(x) + (int)right(x) + isAtom(x) + isNil(x);
}
