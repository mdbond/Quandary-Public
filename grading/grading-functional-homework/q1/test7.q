int main(int arg){
	Q input = ((1 . (2 . nil)) . (3 . (4 . (5 . (6. nil)))));
	if (isList(input) != 0)
	{
		return 1;
	}
	return 0;
}
