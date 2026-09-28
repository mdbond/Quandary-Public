int main(int arg) {
    int bias = 3;
    if (arg >= 0) {
        int magnitude = arg;
        return magnitude + bias;
    } else {
        int magnitude = -arg;
        int shifted = magnitude + bias;
        if (shifted == 11) {
            int product = shifted * magnitude;
            return product - bias;
        }
        return shifted;
    }
    return 999;
}
