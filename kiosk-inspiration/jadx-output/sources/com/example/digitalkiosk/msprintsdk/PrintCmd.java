package com.example.digitalkiosk.msprintsdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.zxing.common.StringUtils;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes.dex */
public abstract class PrintCmd {
    public static int CheckStatus1(byte b) {
        return (b & Ascii.SYN) != 22 ? 2 : 0;
    }

    public static int CheckStatus2(byte b) {
        return (b & 4) == 4 ? 3 : 0;
    }

    public static int CheckStatus3(byte b) {
        if ((b & 8) == 8) {
            return 4;
        }
        if ((b & SignedBytes.MAX_POWER_OF_TWO) == 64) {
            return 5;
        }
        return (b & 32) == 32 ? 6 : 0;
    }

    public static int CheckStatus4(byte b) {
        if ((b & 96) == 96) {
            return 7;
        }
        return (b & 12) == 12 ? 8 : 0;
    }

    public static int CheckStatus5(byte b) {
        if ((b & 128) == 128) {
            return 4;
        }
        if ((b & 1) == 1) {
            return 5;
        }
        if ((b & 8) == 8) {
            return 6;
        }
        if ((b & 2) == 2) {
            return 7;
        }
        return (b & 4) == 4 ? 8 : 0;
    }

    public static byte[] PrintQrcode51(String str, int i, int i2, int i3) {
        return null;
    }

    public static int SetRotation_Intomode() {
        return 1;
    }

    public static byte[] SetCommmandmode(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 121;
        if (i == 2 || i == 3) {
            bArr[2] = (byte) i;
            return bArr;
        }
        bArr[2] = 3;
        return bArr;
    }

    public static byte[] SetClean() {
        return new byte[]{Ascii.ESC, SignedBytes.MAX_POWER_OF_TWO};
    }

    public static byte[] SetLinespace(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = TarHeader.LF_CHR;
        if (i > 127) {
            bArr[2] = 127;
            return bArr;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] SetSpacechar(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 32;
        if (i > 64) {
            bArr[2] = SignedBytes.MAX_POWER_OF_TWO;
            return bArr;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] SetSpacechinese(int i, int i2) {
        byte[] bArr = new byte[4];
        bArr[0] = Ascii.FS;
        bArr[1] = 83;
        if (i > 64) {
            bArr[2] = SignedBytes.MAX_POWER_OF_TWO;
        } else {
            bArr[2] = (byte) i;
        }
        if (i2 > 64) {
            bArr[3] = SignedBytes.MAX_POWER_OF_TWO;
            return bArr;
        }
        bArr[3] = (byte) i2;
        return bArr;
    }

    public static byte[] SetLeftmargin(int i) {
        byte[] bArr = new byte[4];
        bArr[0] = Ascii.GS;
        bArr[1] = 76;
        if (i > 576) {
            bArr[2] = 0;
            bArr[3] = 0;
            return bArr;
        }
        bArr[2] = (byte) (i % 256);
        bArr[3] = (byte) (i / 256);
        return bArr;
    }

    public static byte[] SetMarkoffsetcut(int i) {
        byte[] bArr = new byte[6];
        bArr[0] = 19;
        bArr[1] = 116;
        bArr[2] = TarHeader.LF_CHR;
        bArr[3] = 120;
        if (i > 1600) {
            return bArr;
        }
        bArr[4] = (byte) (i >> 8);
        bArr[5] = (byte) i;
        return bArr;
    }

    public static byte[] SetMarkoffsetprint(int i) {
        byte[] bArr = new byte[6];
        bArr[0] = 19;
        bArr[1] = 116;
        bArr[2] = 17;
        bArr[3] = 120;
        if (i > 1600) {
            return bArr;
        }
        bArr[4] = (byte) (i >> 8);
        bArr[5] = (byte) i;
        return bArr;
    }

    public static byte[] SetSizechinese(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[3];
        if (i > 1) {
            i = 1;
        }
        if (i2 > 1) {
            i2 = 1;
        }
        if (i3 > 1) {
            i3 = 1;
        }
        bArr[0] = Ascii.FS;
        bArr[1] = 33;
        bArr[2] = (byte) ((i * 8) + (i2 * 4) + (i3 * 128) + i4);
        return bArr;
    }

    public static byte[] SetSizechar(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[3];
        if (i > 1) {
            i = 1;
        }
        if (i2 > 1) {
            i2 = 1;
        }
        if (i3 > 1) {
            i3 = 1;
        }
        if (i4 > 1) {
            i4 = 1;
        }
        bArr[0] = Ascii.ESC;
        bArr[1] = 33;
        bArr[2] = (byte) ((i * 16) + (i2 * 32) + (i3 * 128) + i4);
        return bArr;
    }

    public static byte[] SetSizetext(int i, int i2) {
        return new byte[]{Ascii.GS, 33, (byte) (i2 + (i * 16))};
    }

    public static byte[] SetAlignment(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 97;
        if (i > 2) {
            bArr[2] = 2;
            return bArr;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] SetBold(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 71;
        if (i != 1) {
            bArr[2] = 0;
            return bArr;
        }
        bArr[2] = 1;
        return bArr;
    }

    public static byte[] SetRotate(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 86;
        if (i != 1) {
            bArr[2] = 0;
            return bArr;
        }
        bArr[2] = 1;
        return bArr;
    }

    public static byte[] SetDirection(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 123;
        if (i != 1) {
            bArr[2] = 0;
            return bArr;
        }
        bArr[2] = 1;
        return bArr;
    }

    public static byte[] SetWhitemodel(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.GS;
        bArr[1] = 66;
        if (i != 1) {
            bArr[2] = 0;
            return bArr;
        }
        bArr[2] = 1;
        return bArr;
    }

    public static byte[] SetItalic(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 37;
        if (i == 1) {
            bArr[2] = 71;
            return bArr;
        }
        bArr[2] = 72;
        return bArr;
    }

    public static byte[] SetUnderline(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 45;
        if (i > 2) {
            bArr[2] = 2;
            return bArr;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] SetReadZKmode(int i) {
        byte[] bArr = new byte[2];
        bArr[0] = Ascii.FS;
        if (i == 1) {
            bArr[1] = 46;
            return bArr;
        }
        bArr[1] = 38;
        return bArr;
    }

    public static byte[] SetHTseat(byte[] bArr, int i) {
        byte[] bArr2 = new byte[35];
        if (i > 32) {
            i = 32;
        }
        bArr2[0] = Ascii.ESC;
        bArr2[1] = 68;
        int i2 = 2;
        int i3 = 0;
        while (i3 < i) {
            bArr2[i2] = bArr[i3];
            i3++;
            i2++;
        }
        bArr2[i2] = 0;
        return bArr2;
    }

    public static byte[] SetCodepage(int i, int i2) {
        byte[] bArr = new byte[6];
        bArr[0] = Ascii.ESC;
        bArr[1] = 82;
        if (i < 11) {
            bArr[2] = (byte) i;
        } else {
            bArr[2] = 0;
        }
        bArr[3] = Ascii.ESC;
        bArr[4] = 116;
        if (i2 < 27) {
            bArr[5] = (byte) i2;
            return bArr;
        }
        bArr[5] = 0;
        return bArr;
    }

    public static byte[] PrintSelfcheck() {
        return new byte[]{Ascii.GS, 40, 65, 2, 0, 0, 2};
    }

    public static byte[] PrintFeedline(int i) {
        return new byte[]{Ascii.ESC, 100, (byte) i};
    }

    public static byte[] PrintString(String str, int i) {
        try {
            byte[] bytes = str.getBytes("cp850");
            int length = bytes.length;
            if (i == 0) {
                length++;
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            if (i == 0) {
                bArr[length - 1] = 10;
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] PrintChargeRow() {
        return new byte[]{10, 0};
    }

    public static byte[] PrintFeedDot(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = Ascii.ESC;
        bArr[1] = 74;
        if (i > 250) {
            bArr[2] = -6;
            return bArr;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] PrintNextHT() {
        return new byte[]{9};
    }

    public static byte[] PrintCutpaper(int i) {
        byte[] bArr = new byte[3];
        if (i != 1) {
            bArr[0] = Ascii.ESC;
            bArr[1] = 105;
        } else {
            bArr[0] = Ascii.ESC;
            bArr[1] = 109;
        }
        bArr[2] = (byte) i;
        return bArr;
    }

    public static byte[] PrintMarkposition() {
        return new byte[]{12};
    }

    public static byte[] PrintMarkpositionPrint() {
        return new byte[]{Ascii.ESC, 12};
    }

    public static byte[] PrintMarkpositioncut() {
        return new byte[]{Ascii.GS, 12};
    }

    public static byte[] PrintMarkcutpaper(int i) {
        byte[] bArr = new byte[4];
        bArr[0] = Ascii.GS;
        bArr[1] = 86;
        if (i == 0) {
            bArr[2] = 66;
            bArr[3] = 0;
            return bArr;
        }
        bArr[2] = 1;
        return bArr;
    }

    public static byte[] PrintQrCodeT500II(int i, String str) {
        try {
            byte[] bytes = str.getBytes(StringUtils.GB2312);
            byte[] bArr = new byte[bytes.length + 25];
            bArr[0] = 19;
            bArr[1] = 80;
            bArr[2] = 72;
            bArr[3] = 1;
            bArr[4] = 1;
            bArr[5] = 19;
            bArr[6] = 80;
            bArr[7] = 72;
            bArr[8] = 2;
            bArr[9] = 1;
            bArr[10] = 19;
            bArr[11] = 80;
            bArr[12] = 72;
            bArr[13] = 3;
            int i2 = 14;
            if (i >= 1 && i <= 9) {
                bArr[14] = (byte) i;
                i2 = 15;
            }
            bArr[i2] = 19;
            bArr[i2 + 1] = 80;
            int i3 = i2 + 3;
            bArr[i2 + 2] = 72;
            int i4 = i2 + 4;
            bArr[i3] = 4;
            int i5 = 0;
            while (i5 < bytes.length) {
                bArr[i4] = bytes[i5];
                i5++;
                i4++;
            }
            bArr[i4] = 0;
            bArr[i4 + 1] = 19;
            bArr[i4 + 2] = 80;
            bArr[i4 + 3] = 72;
            bArr[i4 + 4] = 5;
            return bArr;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] PrintPdf417(int i, int i2, int i3, int i4, String str) {
        int i5 = 6;
        if (i < 2 || i > 6) {
            i = 2;
        }
        int length = str.length();
        byte[] bArr = new byte[128];
        int i6 = 0;
        bArr[0] = Ascii.GS;
        bArr[1] = 119;
        bArr[2] = (byte) i;
        bArr[3] = Ascii.GS;
        bArr[4] = 104;
        bArr[5] = (byte) i2;
        bArr[0] = Ascii.GS;
        bArr[1] = 107;
        bArr[2] = 76;
        bArr[3] = (byte) i3;
        bArr[4] = (byte) i4;
        bArr[5] = (byte) length;
        byte[] bArr2 = new byte[length];
        byte[] bytes = str.getBytes();
        while (i6 < length) {
            bArr[i5] = bytes[i6];
            i6++;
            i5++;
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] Print1Dbar(int r19, int r20, int r21, int r22, int r23, java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.msprintsdk.PrintCmd.Print1Dbar(int, int, int, int, int, java.lang.String):byte[]");
    }

    public static byte[] PrintDiskImagefile(String str) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileInputStream = null;
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
        if (bitmapDecodeStream == null) {
            return null;
        }
        if (!str.substring(str.toLowerCase().indexOf(".") + 1).equals("bmp")) {
            Bitmap bitmapConvertToBlackWhite = UtilsTools.convertToBlackWhite(bitmapDecodeStream);
            int width = bitmapConvertToBlackWhite.getWidth();
            int height = bitmapConvertToBlackWhite.getHeight();
            int[] iArr = new int[width * height];
            bitmapConvertToBlackWhite.getPixels(iArr, 0, width, 0, 0, width, height);
            return PrintDiskImagefile(iArr, width, height);
        }
        int width2 = bitmapDecodeStream.getWidth();
        int height2 = bitmapDecodeStream.getHeight();
        int[] iArr2 = new int[width2 * height2];
        bitmapDecodeStream.getPixels(iArr2, 0, width2, 0, 0, width2, height2);
        return PrintDiskImagefile(iArr2, width2, height2);
    }

    public static byte[] PrintDiskImagefile(int[] iArr, int i, int i2) {
        int i3;
        int i4 = i / 8;
        int i5 = i % 8;
        if (i5 > 0) {
            i4++;
        }
        byte[] bArr = new byte[(i4 * i2) + 8];
        bArr[0] = Ascii.GS;
        bArr[1] = 118;
        bArr[2] = TarHeader.LF_NORMAL;
        bArr[3] = 0;
        bArr[4] = (byte) i4;
        bArr[5] = (byte) (i4 >> 8);
        bArr[6] = (byte) i2;
        bArr[7] = (byte) (i2 >> 8);
        int i6 = 8;
        int i7 = 0;
        int i8 = 0;
        while (i7 < i2) {
            int i9 = 0;
            while (i9 < i4 - 1) {
                int i10 = i8 + 1;
                int i11 = iArr[i8] < -1 ? 128 : 0;
                int i12 = i8 + 2;
                if (iArr[i10] < -1) {
                    i11 += 64;
                }
                int i13 = i8 + 3;
                if (iArr[i12] < -1) {
                    i11 += 32;
                }
                int i14 = i8 + 4;
                if (iArr[i13] < -1) {
                    i11 += 16;
                }
                int i15 = i8 + 5;
                if (iArr[i14] < -1) {
                    i11 += 8;
                }
                int i16 = i8 + 6;
                if (iArr[i15] < -1) {
                    i11 += 4;
                }
                int i17 = i8 + 7;
                if (iArr[i16] < -1) {
                    i11 += 2;
                }
                i8 += 8;
                if (iArr[i17] < -1) {
                    i11++;
                }
                bArr[i6] = (byte) i11;
                i9++;
                i6++;
            }
            if (i5 == 0) {
                int i18 = 8;
                i3 = 0;
                while (i18 > i5) {
                    int i19 = i8 + 1;
                    if (iArr[i8] < -1) {
                        i3 += 1 << i18;
                    }
                    i18--;
                    i8 = i19;
                }
            } else {
                int i20 = 0;
                i3 = 0;
                while (i20 < i5) {
                    int i21 = i8 + 1;
                    if (iArr[i8] < -1) {
                        i3 += 1 << (8 - i20);
                    }
                    i20++;
                    i8 = i21;
                }
            }
            bArr[i6] = (byte) i3;
            i7++;
            i6++;
        }
        return bArr;
    }

    public static byte[] PrintNvbmp(int i, int i2) {
        byte[] bArr = new byte[4];
        int i3 = i2 >= 48 ? i2 : 48;
        if (i2 > 51) {
            i3 = 51;
        }
        bArr[0] = Ascii.FS;
        bArr[1] = 112;
        bArr[2] = (byte) i;
        bArr[3] = (byte) i3;
        return bArr;
    }

    public static byte[] GetStatus() {
        try {
            return new byte[]{16, 4, 1, 16, 4, 2, 16, 4, 3, 16, 4, 4};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] GetStatus1() {
        try {
            return new byte[]{16, 4, 1};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] GetStatus2() {
        try {
            return new byte[]{16, 4, 2};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] GetStatus3() {
        try {
            return new byte[]{16, 4, 3};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] GetStatus4() {
        try {
            return new byte[]{16, 4, 4};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] GetStatus5() {
        try {
            return new byte[]{16, 4, 5};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int CheckStatus(byte[] bArr) {
        if ((bArr[0] & Ascii.SYN) != 22) {
            return 2;
        }
        if ((bArr[1] & 4) == 4) {
            return 3;
        }
        byte b = bArr[2];
        if ((b & 8) == 8) {
            return 4;
        }
        if ((b & SignedBytes.MAX_POWER_OF_TWO) == 64) {
            return 5;
        }
        if ((b & 32) == 32) {
            return 6;
        }
        byte b2 = bArr[3];
        if ((b2 & 96) == 96) {
            return 7;
        }
        return (b2 & 12) == 12 ? 8 : 0;
    }

    public static byte[] GetProductinformation(int i) {
        byte[] bArr = new byte[3];
        try {
            bArr[0] = Ascii.GS;
            bArr[1] = 73;
            bArr[2] = (byte) i;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }

    public static String CheckProductinformation(byte[] bArr) {
        if (bArr != null) {
            try {
                return new String(bArr, HTTP.UTF_8);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "Failed to get printer product information!";
    }

    public static String GetSDKinformation() {
        return "V3.0.0.0";
    }

    public static byte[] SetRightmargin(int i) {
        return new byte[]{Ascii.ESC, 32, (byte) i};
    }

    public static byte[] Set1DBarCodeAlign(int i) {
        return new byte[]{Ascii.GS, 80, (byte) i};
    }

    public static byte[] SetCommandmode(int i) {
        return SetCommmandmode(i);
    }

    public static byte[] PrintRotation_Data() {
        return new byte[]{11};
    }

    public static byte[] PrintRotation_Sendtext(String str, int i) {
        byte[] bArr = new byte[1];
        int length = str.length();
        byte[] bArr2 = new byte[length + 1];
        byte[] bytes = str.getBytes();
        System.arraycopy(bytes, 0, bArr, 0, length);
        if (i != 1) {
            bytes[length] = 10;
        }
        System.getenv(new String(bytes));
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0137 A[Catch: Exception -> 0x01db, TryCatch #0 {Exception -> 0x01db, blocks: (B:3:0x000a, B:5:0x001b, B:10:0x0027, B:15:0x0034, B:22:0x0044, B:28:0x0060, B:30:0x0065, B:32:0x006b, B:33:0x0075, B:35:0x0078, B:37:0x007e, B:38:0x0088, B:40:0x008b, B:45:0x0094, B:49:0x009c, B:52:0x00a3, B:53:0x00ad, B:55:0x00b0, B:58:0x00b6, B:62:0x00be, B:66:0x00c6, B:69:0x00cd, B:70:0x00d7, B:72:0x00da, B:77:0x00e3, B:81:0x00eb, B:84:0x00f2, B:85:0x00fc, B:87:0x00ff, B:92:0x0108, B:96:0x0110, B:99:0x0117, B:100:0x0121, B:102:0x0124, B:104:0x0129, B:108:0x0130, B:111:0x0137, B:113:0x013d, B:115:0x0141, B:117:0x015b, B:116:0x014c, B:121:0x016c, B:118:0x015e, B:120:0x0162, B:123:0x016f, B:125:0x0175, B:126:0x017f, B:128:0x0182, B:130:0x0187, B:134:0x018e, B:135:0x0191, B:137:0x0195, B:140:0x019b, B:141:0x01a5, B:143:0x01a8, B:145:0x01b0, B:151:0x01ba, B:155:0x01c1, B:159:0x01ca, B:160:0x01d4, B:16:0x0038, B:11:0x002b, B:6:0x001f), top: B:165:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x015e A[Catch: Exception -> 0x01db, TryCatch #0 {Exception -> 0x01db, blocks: (B:3:0x000a, B:5:0x001b, B:10:0x0027, B:15:0x0034, B:22:0x0044, B:28:0x0060, B:30:0x0065, B:32:0x006b, B:33:0x0075, B:35:0x0078, B:37:0x007e, B:38:0x0088, B:40:0x008b, B:45:0x0094, B:49:0x009c, B:52:0x00a3, B:53:0x00ad, B:55:0x00b0, B:58:0x00b6, B:62:0x00be, B:66:0x00c6, B:69:0x00cd, B:70:0x00d7, B:72:0x00da, B:77:0x00e3, B:81:0x00eb, B:84:0x00f2, B:85:0x00fc, B:87:0x00ff, B:92:0x0108, B:96:0x0110, B:99:0x0117, B:100:0x0121, B:102:0x0124, B:104:0x0129, B:108:0x0130, B:111:0x0137, B:113:0x013d, B:115:0x0141, B:117:0x015b, B:116:0x014c, B:121:0x016c, B:118:0x015e, B:120:0x0162, B:123:0x016f, B:125:0x0175, B:126:0x017f, B:128:0x0182, B:130:0x0187, B:134:0x018e, B:135:0x0191, B:137:0x0195, B:140:0x019b, B:141:0x01a5, B:143:0x01a8, B:145:0x01b0, B:151:0x01ba, B:155:0x01c1, B:159:0x01ca, B:160:0x01d4, B:16:0x0038, B:11:0x002b, B:6:0x001f), top: B:165:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] PrintRotation_Sendcode(int r16, int r17, int r18, int r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.msprintsdk.PrintCmd.PrintRotation_Sendcode(int, int, int, int, java.lang.String):byte[]");
    }

    public static byte[] PrintRotation_Changeline() {
        return new byte[]{10};
    }

    public static byte[] SetRotation_Leftspace(int i) {
        byte[] bArr = new byte[3];
        bArr[0] = 19;
        bArr[1] = 118;
        if (i < 72) {
            bArr[2] = (byte) i;
            return bArr;
        }
        bArr[2] = 0;
        return bArr;
    }

    private static String getHexResult(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                String strValueOf = String.valueOf(str.charAt(i));
                if (UtilsTools.isCN(strValueOf)) {
                    sb.append(UtilsTools.encodeCN(strValueOf));
                } else {
                    sb.append(UtilsTools.encodeStr(strValueOf));
                }
            }
        }
        return sb.toString();
    }

    public static byte[] JNAStringToByte(String str, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            int i4 = i3 + 1;
            bArr[i2] = (byte) ((Integer.valueOf(str.substring(i3, i4), 16).intValue() * 16) + Integer.valueOf(str.substring(i4, i3 + 2), 16).intValue());
        }
        return bArr;
    }

    public static String JNAByteToString(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            int i = (b + 256) % 256;
            str = (str + String.format("%x", Integer.valueOf(i >> 4))) + String.format("%x", Integer.valueOf(i % 16));
        }
        return str.toUpperCase();
    }

    public static String JNAByteToString(byte[] bArr, int i, int i2) {
        String str = "";
        while (i < i2) {
            try {
                int i3 = (bArr[i] + 256) % 256;
                str = (str + String.format("%x", Integer.valueOf(i3 >> 4))) + String.format("%x", Integer.valueOf(i3 % 16));
            } catch (Exception e) {
                e.printStackTrace();
            }
            i++;
        }
        return str.toUpperCase();
    }

    public static byte[] PrintDataMatrix(String str, int i) {
        try {
            int iData1PrintDataMatrix = JNAData1.INSTANCE.Data1PrintDataMatrix(str, i);
            if (iData1PrintDataMatrix <= 0) {
                return null;
            }
            byte[] bArrJNAStringToByte = JNAStringToByte(JNAData1.INSTANCE.Data1GetPrintDataA(), iData1PrintDataMatrix);
            JNAData1.INSTANCE.Data1Release();
            return bArrJNAStringToByte;
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] PrintQrcode(String str, int i, int i2, int i3) {
        try {
            int iData1PrintQrcode = JNAData1.INSTANCE.Data1PrintQrcode(str, i, i2, i3);
            if (iData1PrintQrcode <= 0) {
                return null;
            }
            byte[] bArrJNAStringToByte = JNAStringToByte(JNAData1.INSTANCE.Data1GetPrintDataA(), iData1PrintQrcode);
            JNAData1.INSTANCE.Data1Release();
            return bArrJNAStringToByte;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static byte[] PrintDiskbmpfile(String str) {
        try {
            int iData1PrintDiskbmpfile = JNAData1.INSTANCE.Data1PrintDiskbmpfile(str);
            if (iData1PrintDiskbmpfile <= 0) {
                return null;
            }
            byte[] bArrJNAStringToByte = JNAStringToByte(JNAData1.INSTANCE.Data1GetPrintDataA(), iData1PrintDiskbmpfile);
            JNAData1.INSTANCE.Data1Release();
            return bArrJNAStringToByte;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static byte[] SetNvbmp(int i, String str) {
        try {
            int iData1SetNvbmp = JNAData1.INSTANCE.Data1SetNvbmp(i, str);
            if (iData1SetNvbmp <= 0) {
                return null;
            }
            byte[] bArrJNAStringToByte = JNAStringToByte(JNAData1.INSTANCE.Data1GetPrintDataA(), iData1SetNvbmp);
            JNAData1.INSTANCE.Data1Release();
            return bArrJNAStringToByte;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static String getStatusDescriptionEn(int i) {
        switch (i) {
            case 0:
                return "Printer is ready";
            case 1:
                return "Printer is offline or no power";
            case 2:
                return "Printer called unmatched library";
            case 3:
                return "Printer head is opened";
            case 4:
                return "Cutter is not reset";
            case 5:
                return "Printer head temp is abnormal";
            case 6:
                return "Printer does not detect blackmark";
            case 7:
                return "Paper out";
            case 8:
                return "Paper low";
            default:
                return "";
        }
    }
}
