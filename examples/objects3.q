mutable Q main(int arg) {
  Ref x = 3 . 4;
  doStuff(x);
  return x;
}

mutable Q doStuff(mutable Ref y) {
    y = 5 . 6;
    return y;
}
