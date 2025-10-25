int main(int n) {
    return times(n, 42);
}

int times(int a, int b) {
    if (b == 0) return 0;
    return a + times(a, b - 1);
}
