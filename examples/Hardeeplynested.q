int main(int arg) {
    int x = 5;
    if (arg > 10) {
        {
            int y = 10;
            if (arg > 20) {
                return y + x; 
            }
            return y - x; 
        }
    }
    return x * 2; 
}
