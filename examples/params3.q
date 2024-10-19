int main (int arg){
  return f(f(arg +  0, arg +  1, arg + 2, arg +   3, arg +  4, arg +  5),
           f(arg +  6, arg +  7, arg + 8, arg +   9, arg + 10, arg + 11),
           f(arg + 12, arg + 13, arg + 14, arg + 15, arg + 16, arg + 17),
           f(arg + 18, arg + 19, arg + 20, arg + 21, arg + 22, arg + 23),
           f(arg + 24, arg + 25, arg + 26, arg + 27, arg + 28, arg + 29),
           f(arg + 30, arg + 31, arg + 32, arg + 33, arg + 34, arg + 35));
}

int f(int a, int b, int c, int d, int e, int f) {
  int g = a + b + c + d + e + f;
  return g;
}
