int main(int arg) {
    int first = randomInt(arg);
    int second = randomInt(arg + 1);
    if (first < 0 || first >= arg) return 0;
    if (second < 0 || second >= arg + 1) return 0;
    return 1;
}
