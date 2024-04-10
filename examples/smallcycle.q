mutable Q main(int arg) {
    Ref x = nil . nil;
    setLeft(x, x);
    setRight(x, x);
    return isNil(l(r(l(r(x))))) . isNil(l(l(r(r(x))))) . isNil(l(r(r(r(x))))) . isNil(l(r(l(r(r(x))))));
}

Ref l(Ref r) {
    return (Ref)left(r);
}

Ref r(Ref r) {
    return (Ref)right(r);
}