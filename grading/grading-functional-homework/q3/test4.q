int main(int arg) {
    Ref input  = ((1 . (2 . nil)) . nil) . ((3 . nil) . (((4 . (5 . nil)) . nil) . nil));
    Ref output = (((4 . (5 . nil)) . nil) . ((3 . nil) . (((1 . (2 . nil)) . nil) . nil)));
    return genericEquals(reverse(input), output);
}
