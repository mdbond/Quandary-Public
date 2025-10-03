int main(int arg) {
    Ref input1 = (1 . (((2 . (3 . nil)) . nil) . (4 . nil)));
    Ref input2 = (((5 . (6 . nil)) . nil) . nil);
    Ref output = (1 . (((2 . (3 . nil)) . nil) . (4 . (((5 . (6 . nil)) . nil) . nil))));
    return genericEquals(append(input1, input2), output);
}
