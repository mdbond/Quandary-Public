int adjust(int x) {
    int y = x + 1;
    return y * 2;
}

int main(int arg) {
    int x = arg;
    int y = 10;
    int value = adjust(x);
    return x + y + value;
}
