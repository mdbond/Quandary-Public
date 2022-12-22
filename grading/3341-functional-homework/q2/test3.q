int main(int arg) {
    Ref input1 = (2 . (3 . nil));
    Ref input2 = (4 . (5 . nil));
    Ref output = (2 . (3 . (4 . (5 . nil))));
    return genericEquals(append(input1, input2), output);
}

