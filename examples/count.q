
int count(int z) {
    if (z > 2) return 3 + count(z - 3);
    if (z > 1) return 2 + count(z - 2);
    if (z > 0) return 1 + count(z - 1);
    return 0;
}

int main(int arg) {
    return count(arg);
}
