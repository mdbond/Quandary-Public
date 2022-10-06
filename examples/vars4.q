int main(int arg) {
    int x = 5;
    int y = x + 5;
    int z = y + 10;
    if (x != 5 || y != x + 5 || z != y + 10)
        return -1;
    if (x == 5 && y == x + 5 && z == y + 10)
        return 0;
    return x * y * z;
}
