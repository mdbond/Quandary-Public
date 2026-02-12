int main(int arg) {
    Q input = ((2 . nil) . (3 . ( (4 . nil) . (5 . (7 . nil))))); /* Complicated example */
    if (isList(input) != 0) {
        return 1;
    }
    return 0;
}

