int main(int arg) {
    Ref input  = ((1 . nil) . nil) . (((2 . nil) . nil) . (((3 . nil) . nil) . (((4 . nil) . nil) . nil)));
    Ref output = ((4 . nil) . nil) . (((3 . nil) . nil) . (((2 . nil) . nil) . (((1 . nil) . nil) . nil)));
    return genericEquals(reverse(input), output);
}
