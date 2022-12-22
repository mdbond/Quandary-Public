int main(int arg) {
    Ref input1 = nil;
    Ref input2 = (2 . nil);
    Ref output = (2 . nil);
    return genericEquals(append(input1, input2), output);
}

