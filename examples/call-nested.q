int increment(int value) {
    return value + 1;
}

int twice(int value) {
    return value * 2;
}

int main(int arg) {
    return twice(increment(3)) + increment(twice(4));
}
