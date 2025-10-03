int main(int arg) {
    Ref input1 = ((1 . ((2 . nil) . nil)) . ((3 . nil) . nil));
    Ref input2 = (((4 . nil) . nil) . (((5 . (6 . nil)) . nil) . nil));
    Ref output = ((1 . ((2 . nil) . nil)) . ((3 . nil) . ((((4 . nil) . nil) . (((5 . (6 . nil)) . nil) . nil)))));
    return genericEquals(append(input1, input2), output);
}
