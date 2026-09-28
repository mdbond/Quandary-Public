int main(int arg) {
    int x = arg + 2;
    {
        int y = x * 3;
        if (y == 24) {
            {
                int z = y - arg;
                print z;
                return z * x;
            }
            return 101;
        }
        return 102;
    }
    print 103;
    return 104;
}
