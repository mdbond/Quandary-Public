int main(int arg) {
    int result = gcd2(3341, 2028);
    return result;
}

int gcd2(mutable int a, mutable int b) {
        while (a != b) {
            if (a > b)
                a = a - b;
            else
                b = b - a;
        }
        return a;
}

int gcd(int a, int b) {
    if (a == b)
        return a;
    else if (a > b)
        return gcd(b, a - b);
    return gcd(a, b - a);
}
