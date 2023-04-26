mutable Q main(int arg) {
    Ref lock = nil . nil;
    return [ wait(lock) . okay(lock) ];
}

mutable Q wait(Ref lock) {
    while (1 == 1) {
        acq(lock);
        Q val = left(lock);
        rel(lock);
        if (isNil(val) == 0) return val;
    }
    return nil;
}

mutable Q okay(Ref lock) {
    acq(lock);
    setLeft(lock, nil . nil);
    rel(lock);
    return nil;
}
