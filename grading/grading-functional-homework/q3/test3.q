int main(int arg) {
    Ref input = (2 . (3 . (5 . nil)));
    Ref output = (5 . (3 . (2 . nil)));
    return genericEquals(reverse(input), output);
}

