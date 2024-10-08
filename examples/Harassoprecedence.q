int main(int arg) {
    int result = 1 - arg * ---2;  // Multiple negations in arithmetic

    if (!(7 == 5) && (result > 0 || arg == 0)) {  // Logical conditions with precedence
        return result + 5;  // Arithmetic result plus 5 if condition passes
    }

    return result - 5;  // Arithmetic result minus 5 if condition fails
}
