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
int div2(int v)
{
    int topb = topbit(v);
    return div2helper(v, 0, topb);
}
int div2helper(int v, int r, int cb)
/* actually better named shift right */
{
    if (cb <= 0) return r;
    int bv = slowpow(2, cb - 1);
    int bv2 = 2 * bv;
    if (v >= bv2)
    {
        int newr = r + bv;
        return div2helper(v - bv2, newr, cb - 1);
    }
    return div2helper(v, r, cb - 1);
}
/* pointless because it relies on very slow
   implementations of division and remainder... */
int binarypow(int a, int b)
{
    if (b == 0)
        return 1;
    int p = binarypow(a, div2(b));
    int r = p * p;
    if (testbit(b, 0) == 0)
    {
        return r;
    }
    return a * r;
}
int main(int arg)
{
    return binarypow(2, arg) + binarypow(3, arg);
}
