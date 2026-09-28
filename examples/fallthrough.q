int main(int arg) {
    if (arg > 0) return 101;
    {
        int magnitude = -arg;
        if (magnitude < 5) return 102;
        if (magnitude > 5) {
            return 103;
        }
        print magnitude;
    }
    int result = arg * arg + 7;
    if (result != 32) return 104;
    return result;
}
