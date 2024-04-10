Q main(int arg) {
    return isList(nil . nil) .
           isList(5 . (nil . 5)) .
           isList((5 . (5 . nil)) . ((3 . nil) . 3)) .
           isList(((5 . nil) . ((3 . 5) . nil)) . nil);
}

int isList(Q q) {
    if (isNil(q) != 0) {
        return 1;
    }
    if (isAtom(q) != 0) {
        return 0;
    }
    return isList(right((Ref)q));
}
