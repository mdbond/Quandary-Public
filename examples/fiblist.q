Q main(int n) {
  return fiblist(n);
}

Ref fiblist(int n) {
  if (n == 0)
    return 0 . nil;
  if (n == 1)
    return 1 . (0 . nil);
  Ref sublist = fiblist(n - 1);
  return (int)left(sublist) + (int)left((Ref)right(sublist)) . sublist;
}
