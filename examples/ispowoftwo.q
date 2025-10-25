
int ispowoftwo(int num) {
    return helper(num, 1);
}

int main(int arg) {
    return ispowoftwo(arg);
}

int helper(int num, int val) {
    if (num == val)
        return 1;
    else if (num > val)
        return helper(num, val * 2);
    return 0;
}
