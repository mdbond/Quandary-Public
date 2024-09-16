int main(int arg) {
    Ref input = (2 . (3 . nil));
    Ref output = (3 . (2 . nil));
    return genericEquals(reverse(input), output);
}

