int main (int n) {
    return randomfun(n);
}

int randomfun(int n) {
    int val = randomInt(n);
    if (val >= n)
        return 2;
    else if (val == 0)
        return 3;
    else if (val < 0)
        return 4;
    return randomfun(val);
}
