Q main(int arg) {
    Ref list = 5 . nil;
    return length(list);
}

int length(Q val) {
    if (isNil(val) != 0)
        return 0;
    return length((int)val) + 1;
}
