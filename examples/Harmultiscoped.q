int main(int arg) {
    if (arg > 0) {
        int x = arg + 10;
        if (x > 20) {
            return x - 10; 
        }
        return x;
    } else {
        int y = -arg;
        return y + 10; 
    }
    return 0;
}
