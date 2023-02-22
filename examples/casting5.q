Q main(int arg) {
    Ref list = 5 . nil;
    return length(list);
}

int length(Ref val) {
    if (isNil(val) != 0) {
        return 0;
    } else {
        return (int)val;
    }
    return length(val) + 1;
}
