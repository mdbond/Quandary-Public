int main(int arg) {
    Ref input = (((3 . nil) . nil) . (nil . (45 . (56 . ((777 . nil) . nil))))); /* Complicated example */
    Ref output = ((777 . nil) . (56 . (45 . (nil . (((3 . nil) . nil) . nil)))));
    return genericEquals(reverse(input), output);
}

