int increment(int value) {
    return value + 1;
}

int main(int arg) {
    int first = increment(arg);
    int second = increment(arg + 2);
    return first * 10 + second;
}
