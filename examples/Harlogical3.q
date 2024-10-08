int main(int arg) {
    if (arg > 10 && !(arg < 15 || arg == 20)) {
        return arg * 2;
    }
    return arg + 1;
}

