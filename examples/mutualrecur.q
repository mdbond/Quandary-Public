int main(int x) {
    int y = x;
    if (y == 0) return y;
    return y + main2(y - 1);
}

int main2(int x) {
    int y = x;
    if (y == 0) return y;
    return y + main(y - 1);
}
