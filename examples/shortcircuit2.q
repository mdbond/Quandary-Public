int main(int arg) {
  if (arg == 3 || oh_no(arg) == 0) {
    return arg + 1;
  }
  return arg + 2;
}

int oh_no(int val) {
  return oh_no(val + 1);
}
