mutable Q main(int arg) {
    return nth(reverse(fibs(arg)), arg);
}

Ref fibs(int n) {
    if (n <= 0)
        return (0 . nil);
    if (n == 1)
        return 1 . fibs(0);
    Ref tmp = fibs(n - 1);
    return ((int)left(tmp) + (int)left((Ref)right(tmp))) . tmp;
}

Ref reverse(Ref list) {
    if (isNil(list) != 0) return nil;
    return append(reverse((Ref)right(list)), left(list));
}

Ref append(Ref list, Q elem) {
    if (isNil(list) != 0) return elem . nil;
    return left(list) . append((Ref)right(list), elem);
}

Q nth(Ref list, int n) {
    if (n == 0)
        return left(list);
    return nth((Ref)right(list), n - 1);
}