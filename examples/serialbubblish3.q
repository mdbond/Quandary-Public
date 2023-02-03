mutable Q main(int arg) {
    Ref list = (8980 . (36492 . (851563 . (1301 . (2978 . (8724 . (56512 . (882 . (34127 . (5278 . (655 . (6535 . (603 . (2766 . (1907 . (1974 . (3899 . (2318 . (834129 . (88635 . (730359 . (8342 . (64569 . (64208 . (1211 . (78127 . (17288 . (1463 . (12000 . (24627 . (59642 . (605344 . (2922 . (5147 . (48581 . (6029 . (1877 . (5160 . (6932 . (246508 . (8020 . (14675 . (8993 . (6282 . (76513 . (8865 . (6716 . (38033 . (4479 . (42300 . (2469 . (7570 . (1361 . (356836 . (3645 . (14731 . (569551 . (4635742 . (69168 . (6610 . (5744 . (336833 . (5671 . (9436 . (94403 . (2552 . (6105 . (826199 . (59061 . (30641 . (1268 . (136913 . (46768 . (9829 . (9299 . (2686 . (89587 . (4185 . (9603 . (4038 . (62822 . (5848 . (7385 . (536092 . (9969 . (25670 . (2361 . (9504 . (9807 . (8157 . (60347 . (4022 . (40736 . (8692 . (1018 . (2741 . (5847 . (9459 . (5164 . (9025 . nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    sort(list);
    return list;
}

mutable Q sort(Ref list) {
    mutable Ref tmp1 = list;
    int len = length(list);
    mutable int pos1 = 0;
    while (isNil(tmp1) == 0) {
        mutable Ref tmp2 = list;
        mutable int pos2 = 0;
        while (pos2 < pos1) {
            if ((int)left(tmp2) > (int)left(tmp1)) {
                int value = (int)left(tmp1);
                setLeft(tmp1, left(tmp2));
                setLeft(tmp2, value);
            }
            Ref newTmp2 = (Ref)right(tmp2);
            tmp2 = newTmp2;
            pos2 = pos2 + 1;
        }
        Ref newTmp1 = (Ref)right(tmp1);
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
