Q main(int arg) {
    Q tree = makeTree(arg);
    return isAtom(tree);
}

Q makeTree(int depth) {
    if (depth == 0)
        return 1;
    return makeTree(depth - 1) . makeTree(depth - 1);
}
