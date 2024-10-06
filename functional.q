    
int isList(Q value) {
	if (isNil(value)) {
		return 1;
	}
	if (isAtom(value)) {
		return 0;
		}
	return isList(right(value));
}
  
Ref append(Ref list1, Ref list2) {
    if (isNil(list1)) {
        return list2;
    	}
    return left(list1) . append(right(list1), list2);
}

  
Ref reversed(Ref list) {
	Ref revlist;
	while(!isNil(list)){
		revlist = left(list) . revlist;
		list = right(list);
	}
	return revlist;
}
  
int length(Ref list) {
    if (isNil(list) != 0) {
    	return 0;
  	}
  	return 1 + length((Ref)right(list));
}

int isSorted(Ref list) {
	if (isNil(list)) {
		return 1;
	}
	if (isNil(right(list))) {
		return 1;
	}
	if (length(left(list)) > length(right(list))) {
		return 0;
		}
	else {return isSorted(right(list));}
}
	int sameLength(Ref list1, Ref list2) {
		Length1 = 0;
		temp1 = list1;
		while (!isNil(temp1)){
			Length1 = Length1 +1;
			temp1 = right(temp1);
			}
		Length2 = 0;
		temp2= list2;
		while (!isNil(temp2)){
			Length2 = Length2 +1;
			temp2 = right(temp2);
			}
		if (length1 ==length2) {
			return 1;
		} else { return 0;}
    }		