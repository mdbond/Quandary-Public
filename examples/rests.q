Q main(int arg) {
    Ref list = randomList(1000);
    return length(rests(list, arg));
}

Ref rests(Ref list, int n) {
    if (n == 0) return list;
    return rests((Ref)right(list), n - 1);
}

Ref randomList(int n) {
    if (n == 0) return nil;
    return randomInt(10000) . randomList(n - 1);
}

int length(Ref list) {
    if (isNil(list) != 0)
        return 0;
    return 1 + length((Ref)right(list));
}
