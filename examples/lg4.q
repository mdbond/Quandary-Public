int main (int arg0) {
    int arg1 = arg0 - 128;
    if (arg1 < 0) {
        int arg2 = arg1 + 64;
        if (arg2 < 0) {
            int arg3 = arg2 + 32;
            if (arg3 < 0) {
                int arg4 = arg3 + 16;
                if (arg4 < 0) {
                    int arg5 = arg4 + 8;
                    if (arg5 < 0) {
                        int arg6 = arg5 + 4;
                        if (arg6 < 0) {
                            int arg7 = arg6 + 2;
                            if (arg7 < 0) {
                                return 0;
                            }
                            return 1;
                        }
                        return 2;
                    }
                    return 3;
                }
                return 4;
            }
            return 5;
        }
        return 6;
    }
    return 7;
}
