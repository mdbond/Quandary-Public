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
int main(int arg)
{
    return topbit(arg);
}
