int main(int arg) {
    int base = arg * 2;
    {
        int offset = base + 10;
        int result = offset * 3;
        if (result != 12) return 101;
        print result;
    }
    {
        int offset = base - 10;
        int result = offset * 2;
        if (result != -32) return 102;
        print result;
    }
    int offset = base + 1;
    int result = offset * base;
    return result;
}
