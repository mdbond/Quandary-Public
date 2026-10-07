int main(int arg) {
    if (arg <= 1) return 1;
    int smaller = main(arg - 1);
    return arg * smaller;
}
