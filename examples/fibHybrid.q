int main (int arg){
    return fib(arg);
}

int fib(int n) {
  return fibHybrid(n, 0, 1);
}

int fibHybrid(int n, int val0, int val1) {
    if (n == 0) {
        return val0;
    }
    return fibHybrid(n - 1, val1, val0 + val1);
}
