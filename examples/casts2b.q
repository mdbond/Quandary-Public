int foo(int i, Q q, Ref c) {
  int i1 = i;
  mutable int counter = 0;
  if (isAtom(q) != 0 && isNil(q) == 0) {
    int i2 = (int)q;
    counter = counter + 1;
  }

  Q q1 = i;
  Q q2 = q;
  Q q3 = c;

  if (isAtom(q) == 0 || isNil(q) != 0) {
    Ref c2 = (Ref)q;
    counter = counter + 2;
  }
  Ref c3 = c;

  return counter;
}

int main(int arg) {
  if (arg == 50) {
    return foo (arg, arg, arg . arg) + 3;
  }
  return foo (arg, arg . arg, arg . arg);
}
