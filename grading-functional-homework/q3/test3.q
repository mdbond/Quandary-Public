int main(int arg) {
    Ref input = (2 . ((3 . nil) . nil));
    Ref output = ((3 . nil) . (2 . nil));
    return genericEquals(reverse(input), output);
}

