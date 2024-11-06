Q main(int arg) {
    Ref _ = randomList(arg);
    Ref list = (7718 . (3128 . (2 . (9111 . (977 . (3644 . (3473 . (7934 . (6133 . (8516 . (1546 . (5946 . (6987 . (7780 . (5846 . (9938 . (9439 . (9829 . (7763 . (1314 . (384 . (1125 . (6404 . (9448 . (7604 . (9637 . (3727 . (9401 . (7698 . (3753 . (3309 . (9226 . (54 . (1756 . (477 . (135 . (7264 . (2649 . (5553 . (8367 . (837 . (6291 . (9551 . (2741 . (1405 . (7150 . (4385 . (4257 . (5987 . (7603 . (5558 . (3005 . (680 . (9952 . (6047 . (7561 . (657 . (9318 . (7666 . (1448 . (4548 . (1546 . (2123 . (353 . (2383 . (6196 . (5574 . (6622 . (1169 . (962 . (5958 . (864 . (351 . (3238 . (8929 . (7097 . (2641 . (1476 . (4754 . (9456 . (1970 . (3622 . (2534 . (2657 . (9139 . (3208 . (5007 . (603 . (408 . (1339 . (340 . (5584 . (8313 . (9542 . (9471 . (9464 . (9731 . (960 . (2701 . (8382 . nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    return sort(list);
}

Ref sort(Ref list) {
    if (isNil(list) != 0 || isNil(right(list)) != 0) return list;
    int pivot = (int)left(list);
    return concat(sort(subList(list, pivot, -1)), concat(subList(list, pivot, 0), sort(subList(list, pivot, 1))));
}

Ref subList(Ref list, int pivot, int comparator) {
    if (isNil(list) != 0)
        return nil;
    int first = (int)left(list);
    Ref rest = (Ref)right(list);
    if ((comparator <  0 && first <  pivot) ||
        (comparator == 0 && first == pivot) ||
        (comparator >  0 && first >  pivot))
        return first . subList(rest, pivot, comparator);
    return subList(rest, pivot, comparator);
}

Ref concat(Ref first, Ref second) {
    if (isNil(first) != 0)
        return second;
    if (isNil(right(first)) != 0)
        return left(first) . second;
    return left(first) . concat((Ref)right(first), second);
}

int isSorted(Ref list) {
    if (isNil(list) != 0 || isNil(right(list)) != 0)
        return 1;
    if ((int)left(list) > (int)left((Ref)right(list)))
        return 0;
    return isSorted((Ref)right(list));
}

int length(Ref list) {
    if (isNil(list) != 0) return 0;
    return 1 + length((Ref)right(list));
}

Ref randomList(int n) {
    if (n == 0) return nil;
    return randomInt(10000) . randomList(n - 1);
}
