Q main(int arg) {
    return fibs(arg);
}

Ref fibs(int n) {
    if (n <= 0)
        return (0 . nil);
    if (n == 1)
        return 1 . fibs(0);
    Ref tmp = fibs(n - 1);
    return ((int)left(tmp) + (int)left((Ref)right(tmp))) . tmp;
}
