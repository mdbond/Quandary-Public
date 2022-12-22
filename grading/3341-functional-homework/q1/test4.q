int main(int arg) {
    Q input = (2 . (((3 . nil) . nil) . (56 . (78 . nil)))); /* Complicated example */
    if (isList(input) != 0) {
        return 1;
    }
    return 0;
}

