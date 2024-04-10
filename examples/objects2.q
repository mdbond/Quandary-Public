mutable Q main(int arg) {
  Ref x = 3 . 4;
  doStuff(x);
  return x;
}

mutable Q doStuff(Ref y) {
    setLeft(y, 5);
    return nil;
}
