
int main(int arg) {
    if (arg < 2) return arg;
    return main(arg - 1) + main(arg - 2);
}
