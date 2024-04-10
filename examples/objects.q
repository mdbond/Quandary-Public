mutable Q main(int arg) {
  Ref x = 3 . 4;
  Ref y = x;
  setLeft(y, 5);
  return x;
}
