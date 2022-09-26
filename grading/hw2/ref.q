int isList(Q obj) {
    if (isNil(obj) == 1) {
        return 1;
    }
    if (isAtom(obj) == 1) {
        return 0;
    }
    /* Obj is a Ref. */
    return isList(right((Ref)obj));
}

Ref append(Ref list1, Ref list2) {
    if (isNil(list1) == 1 && isNil(list2) == 1) {
        return nil;
    }
    if (isNil(list1) == 1) {
        return list2;
    }
    /* right() is guaranteed to return a Ref in a valid list. */
    return (left(list1) . append((Ref)right(list1), list2));
}

Ref reverse(Ref list) {
    if (isNil(list) == 1) {
        return nil;
    }
    /* right() is guaranteed to return a Ref in a valid list. */
    return append(reverse((Ref)right(list)), (left(list) . nil));
}

int isSorted(Ref list) {
    if (isNil(list) == 1) {
        return 1;
    }
    if (isNil(right(list)) == 1) {
        return 1;
    }
    if (length((Ref)left(list)) <= length((Ref)left((Ref)right(list)))) {
        return 1;
    }
    return 0; /* The list is not sorted. */
}

int length(Ref list) {
    if (isNil(list) == 1) {
        return 0;
    }
    return length((Ref)right(list)) + 1;
}
