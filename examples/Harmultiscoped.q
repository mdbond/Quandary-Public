int main(int arg) {
    if (arg > 0) {
        int x = arg + 10;
        if (x > 20) {
            return x - 10; // Returns arg + 10 - 10 = arg
        }
        return x;
    } else {
        int y = -arg;
        return y + 10; // Returns -arg + 10
    }
}
