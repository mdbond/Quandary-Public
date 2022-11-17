
Q main(int arg) {
    Ref list = (7613 . (3448 . (42692 . (5157 . (8631 . (49112 . (91414 . (19956 . (71958 . (5525 . (47189 . (14446 . (28521 . (52049 . (52665 . (55068 . (9988 . (51065 . (1087 . (12152 . (2375 . (2966 . (8271 . (11200 . (1169 . (5521 . (84873 . (2619 . (38620 . (2376 . (9050 . (57610 . (76930 . (443 . (12686 . (4764 . (9752 . (8051 . (9217 . (66209 . (7683 . (3647 . nil))))))))))))))))))))))))))))))))))))))))));
    Ref sortedList = sort(list);
    return sortedList;
}

Ref sort(Ref list) {
    if (isNil(list) != 0) return nil;
    return insert((int)left(list), sort((Ref)right(list)));
}

Ref insert(int elem, Ref list) {
    if (isNil(list) != 0) {
        return elem . nil;
    }
    if ((int)elem <= (int)left(list)) {
        return elem . list;
    }
    return left(list) . insert(elem, (Ref)right(list));
}
