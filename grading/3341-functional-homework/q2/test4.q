int main(int arg) {
    Ref input1 = ((2 . nil) . ((458 . (9 . nil)) . (nil . nil))); /* Complicated example */
    Ref input2 = ((3 . nil) . nil);
    Ref output = ((2 . nil) . ((458 . (9 . nil)) . (nil . ((3 . nil) . nil))));
    return genericEquals(append(input1, input2), output);
}

