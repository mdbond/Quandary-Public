int main(int arg) {
    Ref input1 = ((1 . (2 . nil)) . (3 . nil));  
    Ref input2 = ((4 . nil) . ((5 . nil) . nil));  
    Ref output = ((1 . (2 . nil)) . (3 . ((4 . nil) . ((5 . nil) . nil)))); 
    return genericEquals(append(input1, input2), output);
}