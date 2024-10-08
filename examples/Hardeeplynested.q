int main(int arg) {
    int x = 5;
    if (arg > 10) {
        {
            int y = 10;
            if (arg > 20) {
                return y + x; // Returns 15
            }
            return y - x; // Returns 5
        }
    }
    return x * 2; // Returns 10
}
