int main(int arg) {
    int a = 5;
    {
        int a = 10; // Local to this block
        if (a == 10) {
            return a;
        }
    }
    return a; // Refers to the outer 'a'
}
