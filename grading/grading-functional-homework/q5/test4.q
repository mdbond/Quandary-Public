int main(int arg) {
    Ref input1 = ((3 . 4) . (2 . 3) . nil);
    Ref input2 = (3 . (3 . 4 . 5). nil);
    if (sameLength(input1, input2) != 0) {
        return 1;  
    }
    return 0;  
}
