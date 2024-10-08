int main(int arg) {
    int b = 5;
    if (arg > 0) {
        int b = 10; // Shadowed inside the if block
        if (b == 10) {
            return b * 2;
        }
    } else {
        int b = 20; // Shadowed inside the else block
        return b / 2;
    }
    return b; // Refers to the outer 'b'
}
