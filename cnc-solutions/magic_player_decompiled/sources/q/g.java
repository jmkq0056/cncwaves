package q;

import cn.huidu.lcd.core.util.NativeIO;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static String a() {
        byte[] bArr = new byte[6];
        try {
            NativeIO.getLocalMac("eth0", bArr);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return h.a.j(bArr);
    }

    public static int b(char c4) {
        int i4;
        int i5;
        if (c4 < '0' || c4 > '9') {
            if (c4 < 'a' || c4 > 'z') {
                i5 = c4;
                if (c4 >= 'A') {
                    i5 = c4;
                    if (c4 <= 'Z') {
                        i4 = c4 - 'A';
                    }
                }
            } else {
                i4 = c4 - 'a';
            }
            i5 = i4 + 10;
        } else {
            i5 = c4 - '0';
        }
        return i5 % 16;
    }
}
