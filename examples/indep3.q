mutable Q main(int arg) {
    Ref counters = 0 . 0;
    Q dummy = [ incLeft(counters, arg) . incRight(counters, arg) ];
    return counters;
}
mutable Q incLeft(Ref counters, mutable int n) {
    acq(counters);
    while (n > 0) {
        int value = (int)left(counters);
        setLeft(counters, value + n);
        n = n - 1;
    }
    rel(counters);
    return nil;
}
mutable Q incRight(Ref counters, mutable int n) {
    acq(counters);
    while (n > 0) {
        int value = (int)right(counters);
        setRight(counters, value + 1);
        n = n - 1;
    }
    rel(counters);
    return nil;
}
