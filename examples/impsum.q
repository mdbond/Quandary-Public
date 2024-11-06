int sum(mutable int n) {
  mutable int sum = 0;
  while (n > 0) {
    sum = sum + n;
    n = n - 1;
  }
  return sum;
}

Q main(int arg) {
  return sum(arg) - sum(arg) + sum(arg);
}
