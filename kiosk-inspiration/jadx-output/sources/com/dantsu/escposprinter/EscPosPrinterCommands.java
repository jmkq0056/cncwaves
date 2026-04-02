package com.dantsu.escposprinter;

import com.dantsu.escposprinter.barcode.Barcode;
import com.dantsu.escposprinter.connection.DeviceConnection;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.EnumMap;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.apache.http.protocol.HTTP;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes.dex */
public class EscPosPrinterCommands {
    public static final int BARCODE_TEXT_POSITION_ABOVE = 1;
    public static final int BARCODE_TEXT_POSITION_BELOW = 2;
    public static final int BARCODE_TEXT_POSITION_NONE = 0;
    public static final int BARCODE_TYPE_128 = 73;
    public static final int BARCODE_TYPE_39 = 69;
    public static final int BARCODE_TYPE_EAN13 = 67;
    public static final int BARCODE_TYPE_EAN8 = 68;
    public static final int BARCODE_TYPE_ITF = 70;
    public static final int BARCODE_TYPE_UPCA = 65;
    public static final int BARCODE_TYPE_UPCE = 66;
    public static final byte LF = 10;
    public static final int QRCODE_1 = 49;
    public static final int QRCODE_2 = 50;
    private EscPosCharsetEncoding charsetEncoding;
    private byte[] currentTextBold;
    private byte[] currentTextColor;
    private byte[] currentTextDoubleStrike;
    private byte[] currentTextReverseColor;
    private byte[] currentTextSize;
    private byte[] currentTextUnderline;
    private DeviceConnection printerConnection;
    private boolean useEscAsteriskCommand;
    public static final byte[] RESET_PRINTER = {Ascii.ESC, SignedBytes.MAX_POWER_OF_TWO};
    public static final byte[] TEXT_ALIGN_LEFT = {Ascii.ESC, 97, 0};
    public static final byte[] TEXT_ALIGN_CENTER = {Ascii.ESC, 97, 1};
    public static final byte[] TEXT_ALIGN_RIGHT = {Ascii.ESC, 97, 2};
    public static final byte[] TEXT_WEIGHT_NORMAL = {Ascii.ESC, 69, 0};
    public static final byte[] TEXT_WEIGHT_BOLD = {Ascii.ESC, 69, 1};
    public static final byte[] LINE_SPACING_24 = {Ascii.ESC, TarHeader.LF_CHR, Ascii.CAN};
    public static final byte[] LINE_SPACING_30 = {Ascii.ESC, TarHeader.LF_CHR, Ascii.RS};
    public static final byte[] TEXT_FONT_A = {Ascii.ESC, 77, 0};
    public static final byte[] TEXT_FONT_B = {Ascii.ESC, 77, 1};
    public static final byte[] TEXT_FONT_C = {Ascii.ESC, 77, 2};
    public static final byte[] TEXT_FONT_D = {Ascii.ESC, 77, 3};
    public static final byte[] TEXT_FONT_E = {Ascii.ESC, 77, 4};
    public static final byte[] TEXT_SIZE_NORMAL = {Ascii.GS, 33, 0};
    public static final byte[] TEXT_SIZE_DOUBLE_HEIGHT = {Ascii.GS, 33, 1};
    public static final byte[] TEXT_SIZE_DOUBLE_WIDTH = {Ascii.GS, 33, 16};
    public static final byte[] TEXT_SIZE_BIG = {Ascii.GS, 33, 17};
    public static final byte[] TEXT_SIZE_BIG_2 = {Ascii.GS, 33, 34};
    public static final byte[] TEXT_SIZE_BIG_3 = {Ascii.GS, 33, TarHeader.LF_CHR};
    public static final byte[] TEXT_SIZE_BIG_4 = {Ascii.GS, 33, 68};
    public static final byte[] TEXT_SIZE_BIG_5 = {Ascii.GS, 33, 85};
    public static final byte[] TEXT_SIZE_BIG_6 = {Ascii.GS, 33, 102};
    public static final byte[] TEXT_UNDERLINE_OFF = {Ascii.ESC, 45, 0};
    public static final byte[] TEXT_UNDERLINE_ON = {Ascii.ESC, 45, 1};
    public static final byte[] TEXT_UNDERLINE_LARGE = {Ascii.ESC, 45, 2};
    public static final byte[] TEXT_DOUBLE_STRIKE_OFF = {Ascii.ESC, 71, 0};
    public static final byte[] TEXT_DOUBLE_STRIKE_ON = {Ascii.ESC, 71, 1};
    public static final byte[] TEXT_COLOR_BLACK = {Ascii.ESC, 114, 0};
    public static final byte[] TEXT_COLOR_RED = {Ascii.ESC, 114, 1};
    public static final byte[] TEXT_COLOR_REVERSE_OFF = {Ascii.GS, 66, 0};
    public static final byte[] TEXT_COLOR_REVERSE_ON = {Ascii.GS, 66, 1};

    public static byte[] initGSv0Command(int i, int i2) {
        int i3 = i / 256;
        int i4 = i - (i3 * 256);
        int i5 = i2 / 256;
        byte[] bArr = new byte[(i * i2) + 8];
        bArr[0] = Ascii.GS;
        bArr[1] = 118;
        bArr[2] = TarHeader.LF_NORMAL;
        bArr[3] = 0;
        bArr[4] = (byte) i4;
        bArr[5] = (byte) i3;
        bArr[6] = (byte) (i2 - (i5 * 256));
        bArr[7] = (byte) i5;
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006c A[PHI: r17 r18
      0x006c: PHI (r17v8 byte[]) = (r17v6 byte[]), (r17v6 byte[]), (r17v6 byte[]), (r17v10 byte[]) binds: [B:18:0x0066, B:19:0x0068, B:20:0x006a, B:13:0x005b] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r18v7 int) = (r18v5 int), (r18v5 int), (r18v5 int), (r18v8 int) binds: [B:18:0x0066, B:19:0x0068, B:20:0x006a, B:13:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] bitmapToBytes(android.graphics.Bitmap r22, boolean r23) {
        /*
            int r0 = r22.getWidth()
            int r1 = r22.getHeight()
            float r2 = (float) r0
            r3 = 1090519040(0x41000000, float:8.0)
            float r2 = r2 / r3
            double r2 = (double) r2
            double r2 = java.lang.Math.ceil(r2)
            int r2 = (int) r2
            byte[] r2 = initGSv0Command(r2, r1)
            r3 = 95
            double r3 = (double) r3
            r5 = 4649940226980970496(0x4087e80000000000, double:765.0)
            double r5 = r5 / r3
            r3 = 8
            r9 = r3
            r7 = 0
            r8 = 0
        L24:
            if (r7 >= r1) goto Lc1
            int r10 = r7 % 6
            r12 = r8
            r11 = 0
        L2a:
            if (r11 >= r0) goto La6
            r14 = 0
            r15 = 0
        L2e:
            if (r14 >= r3) goto L8f
            int r3 = r11 + r14
            r4 = r22
            if (r3 >= r0) goto L7e
            int r3 = r4.getPixel(r3, r7)
            int r13 = r3 >> 16
            r13 = r13 & 255(0xff, float:3.57E-43)
            r16 = r0
            int r0 = r3 >> 8
            r0 = r0 & 255(0xff, float:3.57E-43)
            r3 = r3 & 255(0xff, float:3.57E-43)
            if (r23 == 0) goto L5e
            int r17 = r13 + r0
            r18 = r1
            int r1 = r17 + r3
            r17 = r2
            double r1 = (double) r1
            int r19 = r12 * 6
            r20 = r1
            int r1 = r19 + r10
            double r1 = (double) r1
            double r1 = r1 * r5
            int r1 = (r20 > r1 ? 1 : (r20 == r1 ? 0 : -1))
            if (r1 < 0) goto L6c
            goto L62
        L5e:
            r18 = r1
            r17 = r2
        L62:
            if (r23 != 0) goto L73
            r1 = 160(0xa0, float:2.24E-43)
            if (r13 < r1) goto L6c
            if (r0 < r1) goto L6c
            if (r3 >= r1) goto L73
        L6c:
            int r0 = 7 - r14
            r1 = 1
            int r0 = r1 << r0
            r0 = r0 | r15
            r15 = r0
        L73:
            int r0 = r12 + 5
            r1 = 15
            if (r0 <= r1) goto L7c
            int r12 = r12 + (-11)
            goto L84
        L7c:
            r12 = r0
            goto L84
        L7e:
            r16 = r0
            r18 = r1
            r17 = r2
        L84:
            int r14 = r14 + 1
            r0 = r16
            r2 = r17
            r1 = r18
            r3 = 8
            goto L2e
        L8f:
            r4 = r22
            r16 = r0
            r18 = r1
            r17 = r2
            int r0 = r9 + 1
            byte r1 = (byte) r15
            r17[r9] = r1
            int r11 = r11 + 8
            r9 = r0
            r0 = r16
            r1 = r18
            r3 = 8
            goto L2a
        La6:
            r4 = r22
            r16 = r0
            r18 = r1
            r17 = r2
            int r8 = r8 + 2
            r1 = 15
            if (r8 <= r1) goto Lb5
            r8 = 0
        Lb5:
            int r7 = r7 + 1
            r0 = r16
            r2 = r17
            r1 = r18
            r3 = 8
            goto L24
        Lc1:
            r17 = r2
            return r17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dantsu.escposprinter.EscPosPrinterCommands.bitmapToBytes(android.graphics.Bitmap, boolean):byte[]");
    }

    public static byte[][] convertGSv0ToEscAsterisk(byte[] bArr) {
        int i;
        char c = 4;
        int i2 = 5;
        int i3 = ((bArr[5] & 255) * 256) + (bArr[4] & 255);
        int i4 = i3 * 8;
        int i5 = i4 / 256;
        int i6 = i4 % 256;
        int iCeil = (int) Math.ceil(((double) (((bArr[7] & 255) * 256) + (bArr[6] & 255))) / 24.0d);
        int i7 = i3 * 24;
        int i8 = i7 + 6;
        byte[][] bArr2 = new byte[iCeil + 2][];
        int i9 = 0;
        bArr2[0] = LINE_SPACING_24;
        int i10 = 0;
        while (true) {
            int i11 = 1;
            if (i10 < iCeil) {
                int i12 = i10 * 24;
                byte[] bArr3 = new byte[i8];
                bArr3[i9] = Ascii.ESC;
                bArr3[1] = 42;
                bArr3[2] = 33;
                char c2 = c;
                bArr3[3] = (byte) i6;
                bArr3[c2] = (byte) i5;
                int i13 = i2;
                while (i13 < i8) {
                    int i14 = i13 - 5;
                    int i15 = i14 % 3;
                    int i16 = i14 / 3;
                    int i17 = i2;
                    int i18 = i11 << (7 - (i16 % 8));
                    int i19 = 8;
                    int i20 = i12 + (i15 * 8);
                    while (true) {
                        if (i9 >= i19) {
                            i = i11;
                            break;
                        }
                        int i21 = i19;
                        int i22 = ((i20 + i9) * i3) + (i16 / 8) + 8;
                        i = i11;
                        if (i22 >= bArr.length) {
                            break;
                        }
                        if ((bArr[i22] & i18) == i18) {
                            bArr3[i13] = (byte) (bArr3[i13] | (i << (7 - i9)));
                        }
                        i9++;
                        i11 = i;
                        i19 = i21;
                    }
                    i13++;
                    i2 = i17;
                    i11 = i;
                    i9 = 0;
                }
                bArr3[i7 + 5] = 10;
                i10++;
                bArr2[i10] = bArr3;
                c = c2;
                i2 = i2;
                i9 = 0;
            } else {
                bArr2[iCeil + 1] = LINE_SPACING_30;
                return bArr2;
            }
        }
    }

    public static byte[] QRCodeDataToBytes(String str, int i) throws EscPosBarcodeException {
        byte b;
        try {
            EnumMap enumMap = new EnumMap(EncodeHintType.class);
            enumMap.put(EncodeHintType.CHARACTER_SET, HTTP.UTF_8);
            ByteMatrix matrix = Encoder.encode(str, ErrorCorrectionLevel.L, enumMap).getMatrix();
            int i2 = 0;
            if (matrix == null) {
                return initGSv0Command(0, 0);
            }
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int iRound = Math.round(i / width);
            int i3 = height * iRound;
            int iCeil = (int) Math.ceil((width * iRound) / 8.0f);
            byte b2 = 1;
            if (iRound < 1) {
                return initGSv0Command(0, 0);
            }
            byte[] bArrInitGSv0Command = initGSv0Command(iCeil, i3);
            int i4 = 0;
            int i5 = 8;
            while (i4 < height) {
                byte[] bArr = new byte[iCeil];
                int i6 = -1;
                int i7 = i2;
                int i8 = i7;
                int i9 = iRound;
                while (i7 < iCeil) {
                    int i10 = i2;
                    while (i2 < 8) {
                        if (i9 == iRound) {
                            i6++;
                            i8 = (i6 >= width || matrix.get(i6, i4) != b2) ? (byte) 0 : b2;
                            i9 = 0;
                        }
                        if (i8 != 0) {
                            b = b2;
                            i10 |= b2 << (7 - i2);
                        } else {
                            b = b2;
                        }
                        i9++;
                        i2++;
                        b2 = b;
                    }
                    bArr[i7] = (byte) i10;
                    i7++;
                    b2 = b2;
                    i2 = 0;
                }
                byte b3 = b2;
                for (int i11 = 0; i11 < iRound; i11++) {
                    System.arraycopy(bArr, 0, bArrInitGSv0Command, i5, iCeil);
                    i5 += iCeil;
                }
                i4++;
                i2 = 0;
                b2 = b3;
            }
            return bArrInitGSv0Command;
        } catch (WriterException e) {
            e.printStackTrace();
            throw new EscPosBarcodeException("Unable to encode QR code");
        }
    }

    public EscPosPrinterCommands(DeviceConnection deviceConnection) {
        this(deviceConnection, null);
    }

    public EscPosPrinterCommands(DeviceConnection deviceConnection, EscPosCharsetEncoding escPosCharsetEncoding) {
        this.currentTextSize = new byte[0];
        this.currentTextColor = new byte[0];
        this.currentTextReverseColor = new byte[0];
        this.currentTextBold = new byte[0];
        this.currentTextUnderline = new byte[0];
        this.currentTextDoubleStrike = new byte[0];
        this.printerConnection = deviceConnection;
        this.charsetEncoding = escPosCharsetEncoding == null ? new EscPosCharsetEncoding("windows-1252", 6) : escPosCharsetEncoding;
    }

    public EscPosPrinterCommands connect() throws EscPosConnectionException {
        this.printerConnection.connect();
        return this;
    }

    public void disconnect() {
        this.printerConnection.disconnect();
    }

    public EscPosPrinterCommands reset() {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        this.printerConnection.write(RESET_PRINTER);
        return this;
    }

    public EscPosPrinterCommands setAlign(byte[] bArr) {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        this.printerConnection.write(bArr);
        return this;
    }

    public EscPosPrinterCommands printText(String str) throws EscPosEncodingException {
        return printText(str, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr) throws EscPosEncodingException {
        return printText(str, bArr, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr, byte[] bArr2) throws EscPosEncodingException {
        return printText(str, bArr, bArr2, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws EscPosEncodingException {
        return printText(str, bArr, bArr2, bArr3, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws EscPosEncodingException {
        return printText(str, bArr, bArr2, bArr3, bArr4, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws EscPosEncodingException {
        return printText(str, bArr, bArr2, bArr3, bArr4, bArr5, null);
    }

    public EscPosPrinterCommands printText(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) throws EscPosEncodingException {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        if (bArr == null) {
            bArr = TEXT_SIZE_NORMAL;
        }
        if (bArr2 == null) {
            bArr2 = TEXT_COLOR_BLACK;
        }
        if (bArr3 == null) {
            bArr3 = TEXT_COLOR_REVERSE_OFF;
        }
        if (bArr4 == null) {
            bArr4 = TEXT_WEIGHT_NORMAL;
        }
        if (bArr5 == null) {
            bArr5 = TEXT_UNDERLINE_OFF;
        }
        if (bArr6 == null) {
            bArr6 = TEXT_DOUBLE_STRIKE_OFF;
        }
        try {
            byte[] bytes = str.getBytes(this.charsetEncoding.getName());
            this.printerConnection.write(this.charsetEncoding.getCommand());
            if (!Arrays.equals(this.currentTextSize, bArr)) {
                this.printerConnection.write(bArr);
                this.currentTextSize = bArr;
            }
            if (!Arrays.equals(this.currentTextDoubleStrike, bArr6)) {
                this.printerConnection.write(bArr6);
                this.currentTextDoubleStrike = bArr6;
            }
            if (!Arrays.equals(this.currentTextUnderline, bArr5)) {
                this.printerConnection.write(bArr5);
                this.currentTextUnderline = bArr5;
            }
            if (!Arrays.equals(this.currentTextBold, bArr4)) {
                this.printerConnection.write(bArr4);
                this.currentTextBold = bArr4;
            }
            if (!Arrays.equals(this.currentTextColor, bArr2)) {
                this.printerConnection.write(bArr2);
                this.currentTextColor = bArr2;
            }
            if (!Arrays.equals(this.currentTextReverseColor, bArr3)) {
                this.printerConnection.write(bArr3);
                this.currentTextReverseColor = bArr3;
            }
            this.printerConnection.write(bytes);
            return this;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            throw new EscPosEncodingException(e.getMessage());
        }
    }

    public EscPosPrinterCommands printAllCharsetsEncodingCharacters() {
        for (int i = 0; i < 256; i++) {
            printCharsetEncodingCharacters(i);
        }
        return this;
    }

    public EscPosPrinterCommands printCharsetsEncodingCharacters(int[] iArr) {
        for (int i : iArr) {
            printCharsetEncodingCharacters(i);
        }
        return this;
    }

    public EscPosPrinterCommands printCharsetEncodingCharacters(int i) {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        try {
            this.printerConnection.write(new byte[]{Ascii.ESC, 116, (byte) i});
            this.printerConnection.write(TEXT_SIZE_NORMAL);
            this.printerConnection.write(TEXT_COLOR_BLACK);
            this.printerConnection.write(TEXT_COLOR_REVERSE_OFF);
            this.printerConnection.write(TEXT_WEIGHT_NORMAL);
            this.printerConnection.write(TEXT_UNDERLINE_OFF);
            this.printerConnection.write(TEXT_DOUBLE_STRIKE_OFF);
            this.printerConnection.write((":::: Charset n°" + i + " : ").getBytes());
            this.printerConnection.write(new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, TarHeader.LF_NORMAL, TarHeader.LF_LINK, TarHeader.LF_SYMLINK, TarHeader.LF_CHR, TarHeader.LF_BLK, TarHeader.LF_DIR, TarHeader.LF_FIFO, TarHeader.LF_CONTIG, 56, 57, 58, 59, 60, Base64.padSymbol, 62, Utf8.REPLACEMENT_BYTE, SignedBytes.MAX_POWER_OF_TWO, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, -128, -127, -126, -125, -124, -123, -122, -121, -120, -119, -118, -117, -116, -115, -114, -113, -112, -111, -110, -109, -108, -107, -106, -105, -104, -103, -102, -101, -100, -99, -98, -97, -96, -95, -94, -93, -92, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -53, -52, -51, -50, -49, -48, -47, -46, -45, -44, -43, -42, -41, -40, -39, -38, -37, -36, -35, -34, -33, -32, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -21, -20, -19, -18, -17, -16, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1});
            this.printerConnection.write(new byte[]{10, 10, 10, 10});
            this.printerConnection.send();
            return this;
        } catch (EscPosConnectionException e) {
            e.printStackTrace();
            return this;
        }
    }

    public EscPosPrinterCommands useEscAsteriskCommand(boolean z) {
        this.useEscAsteriskCommand = z;
        return this;
    }

    public EscPosPrinterCommands printImage(byte[] bArr) throws EscPosConnectionException {
        if (this.printerConnection.isConnected()) {
            for (byte[] bArr2 : this.useEscAsteriskCommand ? convertGSv0ToEscAsterisk(bArr) : new byte[][]{bArr}) {
                this.printerConnection.write(bArr2);
                this.printerConnection.send();
            }
        }
        return this;
    }

    public EscPosPrinterCommands printBarcode(Barcode barcode) {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        String code = barcode.getCode();
        int codeLength = barcode.getCodeLength();
        byte[] bArr = new byte[codeLength + 4];
        System.arraycopy(new byte[]{Ascii.GS, 107, (byte) barcode.getBarcodeType(), (byte) codeLength}, 0, bArr, 0, 4);
        for (int i = 0; i < codeLength; i++) {
            bArr[i + 4] = (byte) code.charAt(i);
        }
        this.printerConnection.write(new byte[]{Ascii.GS, 72, (byte) barcode.getTextPosition()});
        this.printerConnection.write(new byte[]{Ascii.GS, 119, (byte) barcode.getColWidth()});
        this.printerConnection.write(new byte[]{Ascii.GS, 104, (byte) barcode.getHeight()});
        this.printerConnection.write(bArr);
        return this;
    }

    public EscPosPrinterCommands printQRCode(int i, String str, int i2) throws EscPosEncodingException {
        int i3 = i2;
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        if (i3 < 1) {
            i3 = 1;
        } else if (i3 > 16) {
            i3 = 16;
        }
        try {
            byte[] bytes = str.getBytes(HTTP.UTF_8);
            int length = bytes.length + 3;
            this.printerConnection.write(new byte[]{Ascii.GS, 40, 107, 4, 0, TarHeader.LF_LINK, 65, (byte) i, 0});
            this.printerConnection.write(new byte[]{Ascii.GS, 40, 107, 3, 0, TarHeader.LF_LINK, 67, (byte) i3});
            this.printerConnection.write(new byte[]{Ascii.GS, 40, 107, 3, 0, TarHeader.LF_LINK, 69, TarHeader.LF_NORMAL});
            byte[] bArr = new byte[bytes.length + 8];
            System.arraycopy(new byte[]{Ascii.GS, 40, 107, (byte) (length % 256), (byte) (length / 256), TarHeader.LF_LINK, 80, TarHeader.LF_NORMAL}, 0, bArr, 0, 8);
            System.arraycopy(bytes, 0, bArr, 8, bytes.length);
            this.printerConnection.write(bArr);
            this.printerConnection.write(new byte[]{Ascii.GS, 40, 107, 3, 0, TarHeader.LF_LINK, 81, TarHeader.LF_NORMAL});
            return this;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            throw new EscPosEncodingException(e.getMessage());
        }
    }

    public EscPosPrinterCommands newLine() throws EscPosConnectionException {
        return newLine(null);
    }

    public EscPosPrinterCommands newLine(byte[] bArr) throws EscPosConnectionException {
        if (this.printerConnection.isConnected()) {
            this.printerConnection.write(new byte[]{10});
            this.printerConnection.send();
            if (bArr != null) {
                this.printerConnection.write(bArr);
            }
        }
        return this;
    }

    public EscPosPrinterCommands feedPaper(int i) throws EscPosConnectionException {
        if (this.printerConnection.isConnected() && i > 0) {
            this.printerConnection.write(new byte[]{Ascii.ESC, 74, (byte) i});
            this.printerConnection.send(i);
        }
        return this;
    }

    public EscPosPrinterCommands cutPaper() throws EscPosConnectionException {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        this.printerConnection.write(new byte[]{Ascii.GS, 86, 1});
        this.printerConnection.send(100);
        return this;
    }

    public EscPosPrinterCommands openCashBox() throws EscPosConnectionException {
        if (!this.printerConnection.isConnected()) {
            return this;
        }
        this.printerConnection.write(new byte[]{Ascii.ESC, 112, 0, 60, -1});
        this.printerConnection.send(100);
        return this;
    }

    public EscPosCharsetEncoding getCharsetEncoding() {
        return this.charsetEncoding;
    }
}
