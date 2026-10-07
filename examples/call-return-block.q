int choose(int value) {
    if (value > 0) {
        int result = value * 3;
        return result;
    }
    return -value;
}

int main(int arg) {
    return choose(arg) + 2;
}
