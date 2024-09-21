int main(int arg) {
    Ref input1 = ((2 . nil) . ((458 . (9 . nil)) . (nil . nil)));
    Ref input2 = ((3 .nil) .((28 . (2 . nil)) . (nil . nil)));
    if (sameLength(input1, input2) != 0) {
        return 1;  
    }
    return 0;  
}
