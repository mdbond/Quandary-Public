int main(int arg) {
    Ref input1 = (nil . nil);
    Ref input2 = (2 . nil);
    Ref output = (nil . (2 . nil));
    return genericEquals(append(input1, input2), output);
}

