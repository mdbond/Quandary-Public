int main(int arg)
{
    if (randomInt(1) + randomInt(2) > 1)
        return 1048576;
    if (randomInt(6) == 4)
        return 0;
    return main(arg);
}
