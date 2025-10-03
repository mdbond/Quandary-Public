int main(int arg) {
	Ref input1 = nil;
	Ref input2 = (4 . nil);
	Ref output = (4 . nil);
	return genericEquals(append(input1, input2), output);
} 
