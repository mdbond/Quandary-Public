mutable Q main(int arg) {
    Ref set = 3 . nil;
    Ref unused = [ add(set, 3) . add(set, 5) ];
    return set;
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
