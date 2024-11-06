Q main(int arg) {
    Ref list = (5 . (7 . ((2 . (45 . (52 . (4 . nil)))) . nil)));
    return third(list);
}

Q first(Ref list) {
    return left(list);
}

Q second(Ref list) { /* list should be a list with at least 2 elements */
    return first((Ref)right(list));
}

Q third(Ref list) { /* list should be a list with at least 3 elements */
    return second((Ref)right(list));
}
