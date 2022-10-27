int main(int n) {
    return series(n);
}

int series(int n) {
    if (n == 0) return 0;
    return series(n - 1) + n;
}
