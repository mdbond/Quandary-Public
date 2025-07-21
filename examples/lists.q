
Q main(int arg) {
  Ref list = randomList(arg);
  int max = max(list);
  return list . max;
}

Ref randomList(int length) {
  if (length == 0) {
    return nil;
  }
  return randomInt(1000) . randomList(length - 1);
}

int max(Ref list) {
  int first = (int)left(list);
  Ref rest = (Ref)right(list);
  if (isNil(rest) != 0) {
    return first;
  }
  int max_of_rest = max(rest);
  if (first > max_of_rest) {
    return first;
  }
  return max_of_rest;
}

int maxRecursive(Ref list) {
  return maxHelper(right(list),
                   (int)left(list));
}

int maxHelper(Ref list, int max) {
  if (isNil(list) != 0) {
    return max;
  }
  if ((int)left(list) > max) {
    return maxHelper(right(list),
                     (int)left(list));
  }
  return maxHelper(right(list), max);
}

int length(Ref list) {
  if (isNil(list) != 0) {
    return 0;
  }
  return 1 + length(right(list));
}
