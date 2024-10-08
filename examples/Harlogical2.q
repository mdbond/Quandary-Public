int main(int arg) {
    if (arg > 5 && arg < 10) {
        return arg * 2;
    } else if (arg > 10 || arg == 0) {
        return arg + 5;
    }
    return arg - 5;
}
