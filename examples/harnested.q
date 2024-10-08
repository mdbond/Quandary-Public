int main(int arg) {
    int x = 100;
    if (arg > 0) {
        int x = arg; // Shadowing the outer x
        if (x > 5) {
            return x * 2;
        }
    }
    return x;
}
