int main(int arg) {
    return plusTwo(8);
}

int plusTwo(int value) {
    return increment(increment(value));
}

int increment(int value) {
    return value + 1;
}
