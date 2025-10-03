int main(int arg) {
    Ref input1 = (1 . (2 . (3 . (4 . (5 . nil)))));                 
    Ref input2 = (11 . (22 . (33 . (44 . (55 . (66 . nil))))));    
    if (sameLength(input1, input2) == 0) {
        return 1;
    }
    return 0;
}
