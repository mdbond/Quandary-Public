mutable Q main(int arg) {
    Ref set = 3 . nil;
    Q unused = addMultiple(set, arg);
    return set;
}

mutable Q addMultiple(Ref set, int count) {
    if (count == 0)
        return add(set, 5);
    Q unused = [ addMultiple(set, count - 1) . add(set, 3) ];
    return nil;
}

mutable Q add(Ref set, int elem) {
    int contained = contains(set, elem);
    if (contained == 0) {
        setRight(set, elem . right(set));
    }
    return nil;
}

int contains(Ref set, int elem) {
    if (isNil(set) != 0)
        return 0;
    if ((int)left(set) == elem)
        return 1;
    return contains((Ref)right(set), elem);
}
