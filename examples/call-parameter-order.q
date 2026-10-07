int combine(int a, int b, int c) {
    return a * 100 + b * 10 + c;
}

int main(int arg) {
    return combine(arg, arg + 1, arg + 2);
}
