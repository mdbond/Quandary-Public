mutable Q main(int arg) {
    mutable Ref lock = nil . nil;
    acq(lock);
    setLeft(lock, lock);
    rel(lock);
    acq(lock);
    setLeft(lock, right(lock));
    rel(lock);
    return isAtom(left(lock)) + isAtom(right(lock)) + isAtom(lock);
}
