int main(int arg) {
    return even(arg);
}

int even(int n) {
    if (n == 0) return 1;
    return odd(n - 1);
}

int odd(int n) {
    if (n == 0) return 0;
    return even(n - 1);
}
