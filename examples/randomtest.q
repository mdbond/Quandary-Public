int main(int n) {
    int total = test(n);
    print 250000 * n;
    print total;
    print 750000 * n;
    if (250000 * n <= total && total < 750000 * n) {
      return 3341;
    }
    return total;

}

int test(int n) {
  if (n == 0) return 0;
  return test(n - 1) + randomInt(1000000);
}
