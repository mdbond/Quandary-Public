int main(int arg) {
    if (arg == 0)
        return 1;
    return [ main(arg - 1) + main(arg - 1) ];
}
