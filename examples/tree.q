Q main(int arg) {
    Q tree = makeTree(arg);    
    return sum(tree);
}

Q makeTree(int depth) {
    if (depth == 0)
        return 1;
    Q child = makeTree(depth - 1);
    return child . child;
}

int sum(Q tree) {
    if (isAtom(tree) != 0)
        return (int)tree;
    return sum(left((Ref)tree)) + sum(right((Ref)tree));
}
