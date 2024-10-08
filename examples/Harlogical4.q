int main(int arg) {
    int x = 10;
    if (arg > 5 && arg < 15) {
        if (x == 20 || !(x > 25)) {
            if (x - 20 == 0) {
                return x * 2;
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
        int z = 1;
        while (z < arg && z < 20) {
            if (z * 2 != 10 || z == 3) {
                int f= z * 66;
                return f;
            } else {
                int f = z + 1;
                return f;
            }
        }
        return z;
    }
    return x * 2;
}
