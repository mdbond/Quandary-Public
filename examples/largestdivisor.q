int main(int arg) {
    return getDivisor(arg - 1, arg);
}

int getDivisor(int min, int n) {
    if (min == 1) {
        return -1;
    }
    if (gcd(min, n) == min) {
        return min;
    }
    return getDivisor(min - 1, n);
}

int gcd(int m, int n) {
   if (m == n)
      return m;
   else if (m > n)
      return gcd(m - n, n);
   return gcd(m, n - m);
}
