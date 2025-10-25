int identity(int n) {
    int identity = n;
    return identity;
}

int square(int n) {
    int square = identity(n) * identity(n);
    return square;
}

int main(int n) {
    int cube = cube(n);
    return cube;
}

int cube(int n) {
    int cube = identity(n) * square(n);
    return cube;
}
