Q main(int arg) {
  Q tmp = combine(((5 . 8). foo(arg)), foo(arg));
  return nil;
}

int size(Q val) {
    if (isAtom(val) != 0) return 1;
    return size(left((Ref)val)) + size(right((Ref)val));
}

Q foo(mutable int arg) {
  mutable Q x = nil;
  while (arg > 0) {
    x = x . x;
    arg = arg - 1;
  }
  return x;
}

Ref combine(Q a, Q b) {
  return a . b;
}
