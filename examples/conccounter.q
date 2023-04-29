mutable Q main(int arg) {
    Ref c1 = 1 . 0;
    Ref c2 = 2 . 0;
    Ref c3 = 3 . 0;
    Q unused = [ max(c1, c2) . max(c1, c3) ];
    return c1;
}

mutable Q max(Ref a, Ref b) {
    acq(b);
    if ((int)left(b) > (int)left(a)) {
        acq(a);
        setLeft(a, left(b));
        rel(a);
    }
    rel(b);
    return nil;
}