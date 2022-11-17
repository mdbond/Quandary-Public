Q main(int arg) {
    return max(5 . (34 . (22 . (3 . nil))));
}

int max(Ref list) { /* list is a non-empty list of integers */
    if (isNil(right(list)) != 0) return (int)left(list);
    if ((int)left(list) > max((Ref)right(list))) {
        return (int)left(list);
    }
    return max((Ref)right(list));
}
