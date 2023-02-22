mutable Q main(int arg) {
    return f(arg . arg);
}

int f(Ref x) {
    return setLeft(x, 0);
}
