int main(int arg){
    return mod_five(arg);
}

int mod_five(int n) {
    if (n >= 5)
        return mod_five(n - 5);
    return n;
}
