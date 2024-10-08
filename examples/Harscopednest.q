int main(int arg) {
    int a = arg + 5;
    {
        int f = 10; 
        if (a >= 10) {
            return a + f;
        }
    }
    return a; 
}
