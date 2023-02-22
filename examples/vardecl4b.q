Q main(mutable int arg) {
    arg = foo(arg, arg . arg);
    return arg;
}

int foo(Q n, Q k) {
    return (int)n * (int)left((Ref)k);
}
