int main(int arg) {
    return 1 - isEven(arg);
}

int isOdd(int n) {
    if (n < 2) return n;
    return isEven(n - 1);
}

int isEven(int n) {
    if (n < 2) return 1 - n;
    return 1 - isOdd(n - 2);
}
