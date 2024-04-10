Q main (int n) {
    if (n > 0) {
        return main(n - 1) . n;
    }
    return nil;
}
