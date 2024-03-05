int main(int arg)
{
    if (arg == 0)
        return 0;
    return arg + main(arg - 1);
}
