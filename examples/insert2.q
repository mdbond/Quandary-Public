mutable Q main(mutable int arg) {
    mutable int current = 0;
    mutable Ref list = nil;
    while (arg > 0) {
      list = insert(current, list);
      current = next(current);
      arg = arg - 1;
    }
    return list;
}

int next(mutable int current) {
  mutable int next = current + 17;
  while (next >= 100) {
    next = next - 100;
  }
  return next;
}

Ref insert(int elem, Ref list) { /* list is already sorted */
    if (isNil(list) != 0) return elem . nil;
    if (elem < (int)left(list)) {
        return elem . list;
    }
    return left(list) . insert(elem, (Ref)right(list));
}
