mutable Q main(int arg) {
    return f((arg . arg) . arg);
}

mutable int f(Ref x) {
    return setLeft(x, x);
}
