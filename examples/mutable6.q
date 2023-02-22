Q main(int arg) {
    mutable int x = arg;
    {
        int x = 5;
    }
    return x;
}
