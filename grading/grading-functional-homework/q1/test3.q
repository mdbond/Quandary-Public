int main(int arg) {
    Q input = (3 . (1 . nil) . (2 . (2 . 3)));
    if ( isList(input) == 0 ) {
        return 1;
    }
    return 0;
}

