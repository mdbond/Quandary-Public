int main(int arg) {
    return log(arg);
}

int log(int n) {
    return logHelper(n, 10);
}

int logHelper(int n, int mult) {
    if (n < mult) {
        return 0;
    }
    return 1 + logHelper(n, mult * 10);
}
