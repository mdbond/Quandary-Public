int magnitude(int value) {
    if (value < 0) return -value;
    return value;
}

int main(int arg) {
    if (magnitude(arg) > 5) return magnitude(arg) + 1;
    return magnitude(arg) - 1;
}
