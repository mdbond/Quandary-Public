mutable Q main(int arg) {
    Ref lock = arg . nil;
    return launchThreads(lock, arg);
}

mutable Q launchThreads(Ref lock, int count) {
    if (count == 0)
        return wait(lock);
    
    return [ launchThreads(lock, count - 1) . okay(lock) ];
}

mutable Q wait(Ref lock) {
    while (1 == 1) {
        acq(lock);
        int val = (int)left(lock);
        rel(lock);
        if (val == 0) return val;
    }
    return nil;
}

mutable Q okay(Ref lock) {
    acq(lock);
    setLeft(lock, (int)left(lock) - 1);
    rel(lock);
    return nil;
}
