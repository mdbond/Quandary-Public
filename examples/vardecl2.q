mutable Q main(int arg) {
    foo(arg);
    return 6;
}

mutable int foo(int n) {
    return n * n;
}
