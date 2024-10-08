int main(int arg) {
    int x = 10;
    if (arg > 5 && arg < 15) {
        int x = arg + 10;  // Variable shadowing within the block
        if (x == 20 || !(x > 25)) {
            x = x + 5;
            if (x % 2 == 0) {
                return x / 2;
            } else {
                return x;
            }
        }
    } else if (arg == 5 || arg < 0) {
        int y = -arg;
        if (!(y < 0)) {
            return y + 10;
        }
    } else {
        int z = 0;
        while (z < arg && z < 20) {
            if (z % 2 == 0 || z == 3) {
                z += 3;
            } else {
                z += 1;
            }
        }
        return z;
    }
    return x * 2;
}
