int main(int arg){
	Ref input1 = ((1 . (3 . (4 . nil))) . nil);
	Ref input2 = ((2 . (3 . nil)) . nil);
	Ref output = ((1 . (3 . (4 . nil))) . ((2 . (3 . nil)) . nil));
	return genericEquals(append(input1, input2)); 
}
