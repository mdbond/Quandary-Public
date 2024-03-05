int slowpow(int a, int b)
{
    if (b == 0)
        return 1;
    return a * slowpow(a, b - 1);
}
int topbit(int v)
{
    return topbithelper(v, 0, 1);
}
int topbithelper(int v, int b, int p)
{
    if (p > v)
        return b;
    return topbithelper(v, b + 1, p * 2);
}
int testbit(int v, int b)
{
    int topb = topbit(v);
    return testbithelper(v, b, topb);
}
int testbithelper(int v, int b, int cb)
{
    if (cb < 0) return 0;
    int bv = slowpow(2, cb);
    if (v >= bv)
    {
        if (cb == b) return 1;
        return testbithelper(v - bv, b, cb - 1);
    }
    else
    {
        if (cb == b) return 0;
        return testbithelper(v, b, cb - 1);
    }
    return -999999999;
}
int main(int arg)
{
    return testbit(1437230745, arg);
}
