int main(int arg) {
    if (arg <= 0) return 7;
    return main(arg - 1);
}
