int main(int arg) {
    Ref input1 = (1 . (2 . (3 . nil)));                    
    Ref input2 = (4 . (5 . (6 . (7 . nil))));              
    if (sameLength(input1, input2) == 0) {
        return 1;
    }
    return 0;
}
