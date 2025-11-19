mutable Q main(int arg) {
  Ref list = create(arg);
  print list;
  Ref revList = rev(list);
  print revList;
  Ref revrevList = rev(revList);
  return sameLists(revrevList, list) . sameLists(revList, list);
}

int sameLists(Ref list1, Ref list2) {
  if (isNil(list1) != 0)
    return isNil(list2);
  if ((int)left(list1) != (int)left(list2))
    return 0;
  return sameLists((Ref)right(list1), (Ref)right(list2));
}

Ref create(int length) {
  if (length == 0) {
    return nil;
  }
  return randomInt(1000) . create(length - 1);
}

Ref concat(Ref first, Ref second) {
    if (isNil(first) != 0)
        return second;
    if (isNil(right(first)) != 0)
        return left(first) . second;
    return left(first) . concat((Ref)right(first), second);
}

Ref rev(Ref list) {
  if (isNil(list) != 0)
    return nil;
  return concat(rev((Ref)right(list)), left(list) . nil);
}
