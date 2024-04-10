mutable Q main(int arg) {
  Ref data = (3 . (4 . (5 . (2 . (3 . (6 . nil))))));
  return sum(data);
}

int sum(Ref list) {
  if (isNil(list) != 0) {
    return 0;
  }
  return (int)left(list) + sum((Ref)right(list));
}
