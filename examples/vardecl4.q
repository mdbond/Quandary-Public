Q main(int arg) {
    foo(arg, arg . arg);
    return 6;
}

mutable int foo(Q n, Q k) {
    return (int)n * (int)left((Ref)k);
}
