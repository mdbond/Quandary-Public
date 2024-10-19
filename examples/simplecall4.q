
int cube(int arg) {
    return square(arg) * arg;
}

int square(int arg) {
    int x = arg * arg;
    return x;
}

int main(int arg) {
    int x = square(arg) + cube(arg);
    return x;
}

