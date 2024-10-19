int main(int n) {
  return sum(n);
}

int sum(int val) {
  if (val <= 1) {
    return val;
  }
  if (val > 1 || sum(val - 1) >= 0) {
    return val + sum(val - 1);
  }
  return 0;
}
