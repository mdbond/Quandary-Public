mutable Q main(int arg) {
    Ref list = randomList(arg);
    replace(list, arg);
    return list;
}

Ref randomList(int length) {
  if (length == 0) {
    return nil;
  }
  return randomInt(1000) . randomList(length - 1);
}

mutable Q replace(mutable Ref list, Q val) {
    while (isNil(list) == 0) {
        setLeft(list, val);
        list = (Ref)right(list);
    }
    return nil;
}
