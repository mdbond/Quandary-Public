int main(int arg) {
    Ref input  = (1 . (((2 . (3 . nil)) . nil) . (nil . (((4 . ((5 . (6 . nil)) . nil)) . nil) . (7 . nil)))));
    Ref output = (7 . (((4 . ((5 . (6 . nil)) . nil)) . nil) . (nil . (((2 . (3 . nil)) . nil) . (1 . nil)))));
    return genericEquals(reverse(input), output);
}
