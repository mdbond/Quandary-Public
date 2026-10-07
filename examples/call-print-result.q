int show(int value) {
    print value;
    return value + 1;
}

int main(int arg) {
    int value = show(4);
    return value * 2;
}
