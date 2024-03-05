int slowpow(int a, int b)
{
    if (b == 0)
        return 1;
    return a * slowpow(a, b - 1);
}
int main(int arg)
{
    return slowpow(3, arg);
}
