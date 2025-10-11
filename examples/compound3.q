int main (int arg) {
  {
    {
        { int x = 5;
          if (arg == 1) { return 2; } }
    }
    {
        { int x = arg;
          { if (x == 5) { return 10; } }
          { { { return 30; } } } }
    }
    return 100;
  }
  return -100;
}
