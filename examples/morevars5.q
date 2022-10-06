int main (int arg) {
    {
        int x = arg;
        if (x > 6) {
            return x + x;
        }
    }
    if (arg > 10) {
        int x = arg + arg;
        return x;
    }
    int x = arg * arg;
    return x;
}
