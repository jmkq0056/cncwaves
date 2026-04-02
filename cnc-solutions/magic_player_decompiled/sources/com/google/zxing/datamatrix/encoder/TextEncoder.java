package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes2.dex */
final class TextEncoder extends C40Encoder {
    @Override // com.google.zxing.datamatrix.encoder.C40Encoder
    public int encodeChar(char c4, StringBuilder sb) {
        if (c4 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c4 >= '0' && c4 <= '9') {
            sb.append((char) ((c4 - '0') + 4));
            return 1;
        }
        if (c4 >= 'a' && c4 <= 'z') {
            sb.append((char) ((c4 - 'a') + 14));
            return 1;
        }
        if (c4 < ' ') {
            sb.append((char) 0);
            sb.append(c4);
            return 2;
        }
        if (c4 <= '/') {
            sb.append((char) 1);
            sb.append((char) (c4 - '!'));
            return 2;
        }
        if (c4 <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c4 - ':') + 15));
            return 2;
        }
        if (c4 >= '[' && c4 <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c4 - '[') + 22));
            return 2;
        }
        if (c4 == '`') {
            sb.append((char) 2);
            sb.append((char) (c4 - '`'));
            return 2;
        }
        if (c4 <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c4 - 'A') + 1));
            return 2;
        }
        if (c4 > 127) {
            sb.append("\u0001\u001e");
            return encodeChar((char) (c4 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) ((c4 - '{') + 27));
        return 2;
    }

    @Override // com.google.zxing.datamatrix.encoder.C40Encoder, com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 2;
    }
}
