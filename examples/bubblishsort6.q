mutable Q main(int arg) {
    Ref list = (760335 . (27267 . (147736 . (74819 . (40040 . (364114 . (38854 . (47916 . (83657 . (9564 . (59927 . (353762 . (30112 . (82040 . (41773 . (76454 . (28313 . (89813 . (29184 . (291370 . (7478 . (39381 . (9850 . (62641 . (52618 . (73260 . (29273 . (8529 . (91423 . (36549 . (2928 . (80760 . (83248 . (33245 . (79110 . (983652 . (37775 . (2470 . (3605 . (56266 . (6176 . (473718 . (55628 . (72768 . (81788 . (940369 . (95342 . (73298 . (54512 . (79875 . (230881 . (67561 . (413339 . (34223 . (28896 . (48863 . (90515 . (64529 . (16026 . (56388 . (36801 . (37905 . (6640 . (6396 . (44160 . (1741 . (26827 . (76895 . (36386 . (20599 . (33731 . (89784 . (33003 . (993637 . (7337 . (64967 . (68596 . (17760 . (66430 . (111335 . (86249 . (108353 . (58330 . (97192 . (75659 . (25159 . (40454 . (93374 . (8112 . (393962 . (85538 . (8624 . (29278 . (883810 . (20736 . (63970 . (343387 . (90962 . (25366 . (75051 . nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    Q dummy = [ [ sort(list) . sort(list) ] . [ sort(list) . sort(list) ] ];
    return isSorted(list) . list;
}

mutable Q sort(Ref list) {
    mutable Ref tmp1 = list;
    int len = length(list);
    mutable int pos1 = 0;
    while (isNil(tmp1) == 0) {
        mutable Ref tmp2 = list;
        mutable int pos2 = 0;
        acq(tmp1);
        while (pos2 < pos1) {
            acq(tmp2);
            if ((int)left(tmp2) > (int)left(tmp1)) {
                int value = (int)left(tmp1);
                setLeft(tmp1, left(tmp2));
                setLeft(tmp2, value);
            }
            Ref newTmp2 = (Ref)right(tmp2);
            rel(tmp2);
            tmp2 = newTmp2;
            pos2 = pos2 + 1;
        }
        Ref newTmp1 = (Ref)right(tmp1);
        rel(tmp1);
        tmp1 = newTmp1;
        pos1 = pos1 + 1;
    }
    return pos1;
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
