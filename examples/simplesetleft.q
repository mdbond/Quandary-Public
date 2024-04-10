mutable Q main(int arg) {
  Ref val = 2 . 5;
  setLeft(val, 7);
  return (int)left(val) + (int)right(val);
}
