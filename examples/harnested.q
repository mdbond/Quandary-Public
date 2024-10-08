int main(int arg) {
    if (arg > 10) {
        int x = arg; 
        if (x > 5) {
            int f = x * 2;
            return f;
        }
        else { int f = x + 10;}
    }
    else{
        int x = arg + 4;
        return x;
    }
    return 0;
}
