Q main(int arg) {
    {
        mutable int x = 5;
        x = x + 1;
    }
    int x = arg;
    return x;
}
