package org.seamless.util.io;

import android.support.v4.media.d;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;
import org.eclipse.jetty.http.HttpTokens;
import org.eclipse.jetty.io.BufferUtil;
import org.xbill.DNS.Flags;
import org.xbill.DNS.TTL;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public class Base64Coder {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "US-ASCII";
    public static final int URL_SAFE = 16;
    private static final byte[] _STANDARD_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final byte[] _STANDARD_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Flags.CD, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, BufferUtil.MINUS, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _URL_SAFE_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, BufferUtil.MINUS, 95};
    private static final byte[] _URL_SAFE_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Flags.CD, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, BufferUtil.MINUS, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] _ORDERED_ALPHABET = {BufferUtil.MINUS, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] _ORDERED_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, EQUALS_SIGN_ENC, -9, -9, -9, Flags.CD, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, BufferUtil.MINUS, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, EQUALS_SIGN, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    public static class InputStream extends FilterInputStream {
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i4;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i5 = 0;
                    for (int i6 = 0; i6 < 3; i6++) {
                        int i7 = ((FilterInputStream) this).in.read();
                        if (i7 < 0) {
                            break;
                        }
                        bArr[i6] = (byte) i7;
                        i5++;
                    }
                    if (i5 <= 0) {
                        return -1;
                    }
                    Base64Coder.encode3to4(bArr, 0, i5, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i8 = 0;
                    while (i8 < 4) {
                        do {
                            i4 = ((FilterInputStream) this).in.read();
                            if (i4 < 0) {
                                break;
                            }
                        } while (this.decodabet[i4 & WKSRecord.Service.LOCUS_CON] <= -5);
                        if (i4 < 0) {
                            break;
                        }
                        bArr2[i8] = (byte) i4;
                        i8++;
                    }
                    if (i8 != 4) {
                        if (i8 == 0) {
                            return -1;
                        }
                        throw new IOException("Improperly padded Base64 input.");
                    }
                    this.numSigBytes = Base64Coder.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                    this.position = 0;
                }
            }
            int i9 = this.position;
            if (i9 < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            }
            if (i9 >= this.numSigBytes) {
                return -1;
            }
            if (this.encode && this.breakLines && this.lineLength >= 76) {
                this.lineLength = 0;
                return 10;
            }
            this.lineLength++;
            byte[] bArr3 = this.buffer;
            int i10 = i9 + 1;
            this.position = i10;
            byte b4 = bArr3[i9];
            if (i10 >= this.bufferLength) {
                this.position = -1;
            }
            return b4 & Base64Coder.EQUALS_SIGN_ENC;
        }

        public InputStream(java.io.InputStream inputStream, int i4) {
            super(inputStream);
            this.options = i4;
            this.breakLines = (i4 & 8) > 0;
            boolean z3 = (i4 & 1) > 0;
            this.encode = z3;
            int i5 = z3 ? 4 : 3;
            this.bufferLength = i5;
            this.buffer = new byte[i5];
            this.position = -1;
            this.lineLength = 0;
            this.decodabet = Base64Coder.getDecodabet(i4);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i4, int i5) throws IOException {
            int i6 = 0;
            while (true) {
                if (i6 >= i5) {
                    break;
                }
                int i7 = read();
                if (i7 >= 0) {
                    bArr[i4 + i6] = (byte) i7;
                    i6++;
                } else if (i6 == 0) {
                    return -1;
                }
            }
            return i6;
        }
    }

    public static class OutputStream extends FilterOutputStream {
        private byte[] b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            ((FilterOutputStream) this).out = null;
        }

        public void flushBase64() throws IOException {
            int i4 = this.position;
            if (i4 > 0) {
                if (!this.encode) {
                    throw new IOException("Base64 input not properly padded.");
                }
                ((FilterOutputStream) this).out.write(Base64Coder.encode3to4(this.b4, this.buffer, i4, this.options));
                this.position = 0;
            }
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i4) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(i4);
                return;
            }
            if (this.encode) {
                byte[] bArr = this.buffer;
                int i5 = this.position;
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) i4;
                int i7 = this.bufferLength;
                if (i6 >= i7) {
                    ((FilterOutputStream) this).out.write(Base64Coder.encode3to4(this.b4, bArr, i7, this.options));
                    int i8 = this.lineLength + 4;
                    this.lineLength = i8;
                    if (this.breakLines && i8 >= 76) {
                        ((FilterOutputStream) this).out.write(10);
                        this.lineLength = 0;
                    }
                    this.position = 0;
                    return;
                }
                return;
            }
            byte[] bArr2 = this.decodabet;
            int i9 = i4 & WKSRecord.Service.LOCUS_CON;
            if (bArr2[i9] <= -5) {
                if (bArr2[i9] != -5) {
                    throw new IOException("Invalid character in Base64 data.");
                }
                return;
            }
            byte[] bArr3 = this.buffer;
            int i10 = this.position;
            int i11 = i10 + 1;
            this.position = i11;
            bArr3[i10] = (byte) i4;
            if (i11 >= this.bufferLength) {
                ((FilterOutputStream) this).out.write(this.b4, 0, Base64Coder.decode4to3(bArr3, 0, this.b4, 0, this.options));
                this.position = 0;
            }
        }

        public OutputStream(java.io.OutputStream outputStream, int i4) {
            super(outputStream);
            this.breakLines = (i4 & 8) != 0;
            boolean z3 = (i4 & 1) != 0;
            this.encode = z3;
            int i5 = z3 ? 3 : 4;
            this.bufferLength = i5;
            this.buffer = new byte[i5];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.b4 = new byte[4];
            this.options = i4;
            this.decodabet = Base64Coder.getDecodabet(i4);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i4, int i5) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(bArr, i4, i5);
                return;
            }
            for (int i6 = 0; i6 < i5; i6++) {
                write(bArr[i4 + i6]);
            }
        }
    }

    private Base64Coder() {
    }

    public static byte[] decode(byte[] bArr) {
        return decode(bArr, 0, bArr.length, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i4, byte[] bArr2, int i5, int i6) {
        int i7;
        int i8;
        Objects.requireNonNull(bArr, "Source array was null.");
        Objects.requireNonNull(bArr2, "Destination array was null.");
        if (i4 < 0 || (i7 = i4 + 3) >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i4)));
        }
        if (i5 < 0 || (i8 = i5 + 2) >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i5)));
        }
        byte[] decodabet = getDecodabet(i6);
        int i9 = i4 + 2;
        if (bArr[i9] == 61) {
            bArr2[i5] = (byte) ((((decodabet[bArr[i4 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i4]] & EQUALS_SIGN_ENC) << 18)) >>> 16);
            return 1;
        }
        if (bArr[i7] == 61) {
            int i10 = ((decodabet[bArr[i9]] & EQUALS_SIGN_ENC) << 6) | ((decodabet[bArr[i4 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i4]] & EQUALS_SIGN_ENC) << 18);
            bArr2[i5] = (byte) (i10 >>> 16);
            bArr2[i5 + 1] = (byte) (i10 >>> 8);
            return 2;
        }
        int i11 = (decodabet[bArr[i7]] & EQUALS_SIGN_ENC) | ((decodabet[bArr[i4 + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i4]] & EQUALS_SIGN_ENC) << 18) | ((decodabet[bArr[i9]] & EQUALS_SIGN_ENC) << 6);
        bArr2[i5] = (byte) (i11 >> 16);
        bArr2[i5 + 1] = (byte) (i11 >> 8);
        bArr2[i8] = (byte) i11;
        return 3;
    }

    public static void decodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        byte[] bArrDecodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedOutputStream.write(bArrDecodeFromFile);
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e4) {
                bufferedOutputStream2 = bufferedOutputStream;
                throw e4;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e5) {
        }
    }

    public static byte[] decodeFromFile(String str) throws Throwable {
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                if (file.length() > TTL.MAX_VALUE) {
                    throw new IOException("File is too big for this convenience method (" + file.length() + " bytes).");
                }
                byte[] bArr = new byte[(int) file.length()];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                int i4 = 0;
                while (true) {
                    try {
                        int i5 = inputStream2.read(bArr, i4, 4096);
                        if (i5 < 0) {
                            break;
                        }
                        i4 += i5;
                    } catch (IOException e4) {
                        throw e4;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, 0, bArr2, 0, i4);
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
                return bArr2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            throw e5;
        }
    }

    public static String decodeString(String str) {
        try {
            return new String(decode(str));
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static void decodeToFile(String str, String str2) throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str2), 0);
            } catch (IOException e4) {
                throw e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStream.write(str.getBytes(PREFERRED_ENCODING));
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
        } catch (IOException e5) {
        } catch (Throwable th2) {
            th = th2;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception unused2) {
            }
            throw th;
        }
    }

    public static Object decodeToObject(String str) {
        return decodeToObject(str, 0, null);
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int iMin = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, iMin);
            encode3to4(bArr2, bArr, iMin, 0);
            byteBuffer2.put(bArr2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i4, int i5) {
        encode3to4(bArr2, 0, i4, bArr, 0, i5);
        return bArr;
    }

    public static String encodeBytes(byte[] bArr) {
        try {
            return encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        try {
            return encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        String strEncodeFromFile = encodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedOutputStream.write(strEncodeFromFile.getBytes(PREFERRED_ENCODING));
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused) {
                }
            } catch (IOException e4) {
                bufferedOutputStream2 = bufferedOutputStream;
                throw e4;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e5) {
        }
    }

    public static String encodeFromFile(String str) throws Throwable {
        InputStream inputStream = null;
        try {
            try {
                File file = new File(str);
                double length = file.length();
                Double.isNaN(length);
                byte[] bArr = new byte[Math.max((int) ((length * 1.4d) + 1.0d), 40)];
                InputStream inputStream2 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
                int i4 = 0;
                while (true) {
                    try {
                        int i5 = inputStream2.read(bArr, i4, 4096);
                        if (i5 < 0) {
                            break;
                        }
                        i4 += i5;
                    } catch (IOException e4) {
                        throw e4;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                String str2 = new String(bArr, 0, i4, PREFERRED_ENCODING);
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
                return str2;
            } catch (IOException e5) {
                throw e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String encodeObject(Serializable serializable) {
        return encodeObject(serializable, 0);
    }

    public static String encodeString(String str) {
        return encodeBytes(str.getBytes());
    }

    public static void encodeToFile(byte[] bArr, String str) throws Throwable {
        OutputStream outputStream;
        Objects.requireNonNull(bArr, "Data to encode was null.");
        OutputStream outputStream2 = null;
        try {
            try {
                outputStream = new OutputStream(new FileOutputStream(str), 1);
            } catch (IOException e4) {
                throw e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStream.write(bArr);
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
        } catch (IOException e5) {
        } catch (Throwable th2) {
            th = th2;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception unused2) {
            }
            throw th;
        }
    }

    private static final byte[] getAlphabet(int i4) {
        return (i4 & 16) == 16 ? _URL_SAFE_ALPHABET : (i4 & 32) == 32 ? _ORDERED_ALPHABET : _STANDARD_ALPHABET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] getDecodabet(int i4) {
        return (i4 & 16) == 16 ? _URL_SAFE_DECODABET : (i4 & 32) == 32 ? _ORDERED_DECODABET : _STANDARD_DECODABET;
    }

    public static byte[] decode(byte[] bArr, int i4, int i5, int i6) throws IOException {
        int i7;
        Objects.requireNonNull(bArr, "Cannot decode null source array.");
        if (i4 < 0 || (i7 = i4 + i5) > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i4), Integer.valueOf(i5)));
        }
        if (i5 == 0) {
            return new byte[0];
        }
        if (i5 < 4) {
            throw new IllegalArgumentException(d.a("Base64-encoded string must have at least four characters, but length specified was ", i5));
        }
        byte[] decodabet = getDecodabet(i6);
        byte[] bArr2 = new byte[(i5 * 3) / 4];
        byte[] bArr3 = new byte[4];
        int i8 = 0;
        int iDecode4to3 = 0;
        while (i4 < i7) {
            byte b4 = decodabet[bArr[i4] & EQUALS_SIGN_ENC];
            if (b4 < -5) {
                throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", Integer.valueOf(bArr[i4] & EQUALS_SIGN_ENC), Integer.valueOf(i4)));
            }
            if (b4 >= -1) {
                int i9 = i8 + 1;
                bArr3[i8] = bArr[i4];
                if (i9 > 3) {
                    iDecode4to3 += decode4to3(bArr3, 0, bArr2, iDecode4to3, i6);
                    if (bArr[i4] == 61) {
                        break;
                    }
                    i8 = 0;
                } else {
                    i8 = i9;
                }
            }
            i4++;
        }
        byte[] bArr4 = new byte[iDecode4to3];
        System.arraycopy(bArr2, 0, bArr4, 0, iDecode4to3);
        return bArr4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.ClassLoader] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public static Object decodeToObject(String str, int i4, final ClassLoader classLoader) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        byte[] bArrDecode = decode(str, i4);
        ByteArrayInputStream byteArrayInputStream2 = null;
        objectInputStream = null;
        objectInputStream = null;
        ObjectInputStream objectInputStream = null;
        byteArrayInputStream2 = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArrDecode);
            } catch (Throwable th) {
                th = th;
            }
            try {
                objectInputStream = classLoader == 0 ? new ObjectInputStream(byteArrayInputStream) : new ObjectInputStream(byteArrayInputStream) { // from class: org.seamless.util.io.Base64Coder.1
                    @Override // java.io.ObjectInputStream
                    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException {
                        Class<?> cls = Class.forName(objectStreamClass.getName(), false, classLoader);
                        return cls == null ? super.resolveClass(objectStreamClass) : cls;
                    }
                };
                Object object = objectInputStream.readObject();
                try {
                    byteArrayInputStream.close();
                } catch (Exception unused) {
                }
                try {
                    objectInputStream.close();
                } catch (Exception unused2) {
                }
                return object;
            } catch (IOException e4) {
                throw e4;
            } catch (ClassNotFoundException e5) {
                throw e5;
            } catch (Throwable th2) {
                th = th2;
                classLoader = objectInputStream;
                byteArrayInputStream2 = byteArrayInputStream;
                try {
                    byteArrayInputStream2.close();
                } catch (Exception unused3) {
                }
                try {
                    classLoader.close();
                    throw th;
                } catch (Exception unused4) {
                    throw th;
                }
            }
        } catch (IOException e6) {
            throw e6;
        } catch (ClassNotFoundException e7) {
            throw e7;
        } catch (Throwable th3) {
            th = th3;
            classLoader = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i4, int i5, byte[] bArr2, int i6, int i7) {
        byte[] alphabet = getAlphabet(i7);
        int i8 = (i5 > 0 ? (bArr[i4] << 24) >>> 8 : 0) | (i5 > 1 ? (bArr[i4 + 1] << 24) >>> 16 : 0) | (i5 > 2 ? (bArr[i4 + 2] << 24) >>> 24 : 0);
        if (i5 == 1) {
            bArr2[i6] = alphabet[i8 >>> 18];
            bArr2[i6 + 1] = alphabet[(i8 >>> 12) & 63];
            bArr2[i6 + 2] = EQUALS_SIGN;
            bArr2[i6 + 3] = EQUALS_SIGN;
            return bArr2;
        }
        if (i5 == 2) {
            bArr2[i6] = alphabet[i8 >>> 18];
            bArr2[i6 + 1] = alphabet[(i8 >>> 12) & 63];
            bArr2[i6 + 2] = alphabet[(i8 >>> 6) & 63];
            bArr2[i6 + 3] = EQUALS_SIGN;
            return bArr2;
        }
        if (i5 != 3) {
            return bArr2;
        }
        bArr2[i6] = alphabet[i8 >>> 18];
        bArr2[i6 + 1] = alphabet[(i8 >>> 12) & 63];
        bArr2[i6 + 2] = alphabet[(i8 >>> 6) & 63];
        bArr2[i6 + 3] = alphabet[i8 & 63];
        return bArr2;
    }

    public static String encodeBytes(byte[] bArr, int i4) {
        return encodeBytes(bArr, 0, bArr.length, i4);
    }

    public static byte[] encodeBytesToBytes(byte[] bArr, int i4, int i5, int i6) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        OutputStream outputStream2;
        GZIPOutputStream gZIPOutputStream;
        Objects.requireNonNull(bArr, "Cannot serialize a null array.");
        if (i4 < 0) {
            throw new IllegalArgumentException(d.a("Cannot have negative offset: ", i4));
        }
        if (i5 < 0) {
            throw new IllegalArgumentException(d.a("Cannot have length offset: ", i5));
        }
        if (i4 + i5 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(bArr.length)));
        }
        if ((i6 & 2) == 0) {
            boolean z3 = (i6 & 8) != 0;
            int i7 = ((i5 / 3) * 4) + (i5 % 3 > 0 ? 4 : 0);
            if (z3) {
                i7 += i7 / 76;
            }
            int i8 = i7;
            byte[] bArr2 = new byte[i8];
            int i9 = i5 - 2;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i10 < i9) {
                encode3to4(bArr, i10 + i4, 3, bArr2, i11, i6);
                int i13 = i12 + 4;
                if (!z3 || i13 < 76) {
                    i12 = i13;
                } else {
                    bArr2[i11 + 4] = 10;
                    i11++;
                    i12 = 0;
                }
                i10 += 3;
                i11 += 4;
            }
            if (i10 < i5) {
                encode3to4(bArr, i10 + i4, i5 - i10, bArr2, i11, i6);
                i11 += 4;
            }
            if (i11 > i8 - 1) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i11];
            System.arraycopy(bArr2, 0, bArr3, 0, i11);
            return bArr3;
        }
        GZIPOutputStream gZIPOutputStream2 = null;
        gZIPOutputStream2 = null;
        OutputStream outputStream3 = null;
        gZIPOutputStream2 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i6 | 1);
                try {
                    gZIPOutputStream = new GZIPOutputStream(outputStream);
                } catch (IOException e4) {
                    e = e4;
                    gZIPOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    try {
                        gZIPOutputStream2.close();
                    } catch (Exception unused) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception unused2) {
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (Exception unused3) {
                        throw th;
                    }
                }
            } catch (IOException e5) {
                e = e5;
                gZIPOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (IOException e6) {
            e = e6;
            outputStream2 = null;
            gZIPOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            outputStream = null;
        }
        try {
            gZIPOutputStream.write(bArr, i4, i5);
            gZIPOutputStream.close();
            try {
                gZIPOutputStream.close();
            } catch (Exception unused4) {
            }
            try {
                outputStream.close();
            } catch (Exception unused5) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception unused6) {
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            e = e7;
            outputStream3 = outputStream;
            outputStream2 = outputStream3;
            byteArrayOutputStream2 = byteArrayOutputStream;
            try {
                throw e;
            } catch (Throwable th4) {
                th = th4;
                outputStream = outputStream2;
                byteArrayOutputStream = byteArrayOutputStream2;
                gZIPOutputStream2 = gZIPOutputStream;
                gZIPOutputStream2.close();
                outputStream.close();
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream2 = gZIPOutputStream;
            gZIPOutputStream2.close();
            outputStream.close();
            byteArrayOutputStream.close();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.io.OutputStream, java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8 */
    public static String encodeObject(Serializable serializable, int i4) throws Throwable {
        ?? gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        ObjectOutputStream objectOutputStream;
        Objects.requireNonNull(serializable, "Cannot serialize a null object.");
        ObjectOutputStream objectOutputStream2 = null;
        objectOutputStream2 = null;
        objectOutputStream2 = null;
        objectOutputStream2 = null;
        objectOutputStream2 = null;
        objectOutputStream2 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i4 | 1);
                try {
                    if ((i4 & 2) != 0) {
                        gZIPOutputStream = new GZIPOutputStream(outputStream);
                        try {
                            objectOutputStream2 = new ObjectOutputStream(gZIPOutputStream);
                            gZIPOutputStream = gZIPOutputStream;
                        } catch (IOException e4) {
                            e = e4;
                            objectOutputStream = objectOutputStream2;
                            byteArrayOutputStream2 = byteArrayOutputStream;
                            gZIPOutputStream = gZIPOutputStream;
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                ObjectOutputStream objectOutputStream3 = objectOutputStream;
                                byteArrayOutputStream = byteArrayOutputStream2;
                                objectOutputStream2 = objectOutputStream3;
                                try {
                                    objectOutputStream2.close();
                                } catch (Exception unused) {
                                }
                                try {
                                    gZIPOutputStream.close();
                                } catch (Exception unused2) {
                                }
                                try {
                                    outputStream.close();
                                } catch (Exception unused3) {
                                }
                                try {
                                    byteArrayOutputStream.close();
                                    throw th;
                                } catch (Exception unused4) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            objectOutputStream2.close();
                            gZIPOutputStream.close();
                            outputStream.close();
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    } else {
                        objectOutputStream2 = new ObjectOutputStream(outputStream);
                        gZIPOutputStream = 0;
                    }
                    objectOutputStream2.writeObject(serializable);
                    try {
                        objectOutputStream2.close();
                    } catch (Exception unused5) {
                    }
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception unused6) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception unused7) {
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception unused8) {
                    }
                    try {
                        return new String(byteArrayOutputStream.toByteArray(), PREFERRED_ENCODING);
                    } catch (UnsupportedEncodingException unused9) {
                        return new String(byteArrayOutputStream.toByteArray());
                    }
                } catch (IOException e5) {
                    e = e5;
                    ObjectOutputStream objectOutputStream4 = objectOutputStream2;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    objectOutputStream = objectOutputStream4;
                    gZIPOutputStream = objectOutputStream4;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = objectOutputStream2;
                }
            } catch (IOException e6) {
                e = e6;
                gZIPOutputStream = 0;
                outputStream = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
                objectOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = 0;
                outputStream = null;
            }
        } catch (IOException e7) {
            e = e7;
            gZIPOutputStream = 0;
            objectOutputStream = null;
            outputStream = null;
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream = 0;
            byteArrayOutputStream = null;
            outputStream = null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i4, int i5) {
        try {
            return encodeBytes(bArr, i4, i5, 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String encodeBytes(byte[] bArr, int i4, int i5, int i6) throws Throwable {
        byte[] bArrEncodeBytesToBytes = encodeBytesToBytes(bArr, i4, i5, i6);
        try {
            return new String(bArrEncodeBytesToBytes, PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArrEncodeBytesToBytes);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int iMin = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, iMin);
            encode3to4(bArr2, bArr, iMin, 0);
            for (int i4 = 0; i4 < 4; i4++) {
                charBuffer.put((char) (bArr2[i4] & EQUALS_SIGN_ENC));
            }
        }
    }

    public static byte[] encode(byte[] bArr) {
        return encodeBytes(bArr).getBytes();
    }

    public static byte[] decode(String str) {
        return decode(str, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.ByteArrayInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:55:0x005c
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static byte[] decode(java.lang.String r5, int r6) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "Input string was null."
            java.util.Objects.requireNonNull(r5, r0)
            java.lang.String r0 = "US-ASCII"
            byte[] r5 = r5.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> Lc
            goto L10
        Lc:
            byte[] r5 = r5.getBytes()
        L10:
            int r0 = r5.length
            r1 = 0
            byte[] r5 = decode(r5, r1, r0, r6)
            r0 = 4
            r6 = r6 & r0
            r2 = 1
            if (r6 == 0) goto L1d
            r6 = 1
            goto L1e
        L1d:
            r6 = 0
        L1e:
            if (r5 == 0) goto L90
            int r3 = r5.length
            if (r3 < r0) goto L90
            if (r6 != 0) goto L90
            r6 = r5[r1]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r5[r2]
            int r0 = r0 << 8
            r2 = 65280(0xff00, float:9.1477E-41)
            r0 = r0 & r2
            r6 = r6 | r0
            r0 = 35615(0x8b1f, float:4.9907E-41)
            if (r0 != r6) goto L90
            r6 = 2048(0x800, float:2.87E-42)
            byte[] r6 = new byte[r6]
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L7b
            r2.<init>()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L7b
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L72
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L72
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6a
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6a
        L4b:
            int r0 = r4.read(r6)     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            if (r0 < 0) goto L55
            r2.write(r6, r1, r0)     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            goto L4b
        L55:
            byte[] r5 = r2.toByteArray()     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            r2.close()     // Catch: java.lang.Exception -> L5c
        L5c:
            r4.close()     // Catch: java.lang.Exception -> L5f
        L5f:
            r3.close()     // Catch: java.lang.Exception -> L90
            goto L90
        L63:
            r5 = move-exception
            goto L70
        L65:
            r6 = move-exception
            goto L75
        L67:
            r5 = move-exception
            r4 = r0
            goto L70
        L6a:
            r6 = move-exception
            r4 = r0
            goto L75
        L6d:
            r5 = move-exception
            r3 = r0
            r4 = r3
        L70:
            r0 = r2
            goto L86
        L72:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L75:
            r0 = r2
            goto L7e
        L77:
            r5 = move-exception
            r3 = r0
            r4 = r3
            goto L86
        L7b:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L7e:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L85
            r0.close()     // Catch: java.lang.Exception -> L5c
            goto L5c
        L85:
            r5 = move-exception
        L86:
            r0.close()     // Catch: java.lang.Exception -> L89
        L89:
            r4.close()     // Catch: java.lang.Exception -> L8c
        L8c:
            r3.close()     // Catch: java.lang.Exception -> L8f
        L8f:
            throw r5
        L90:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.Base64Coder.decode(java.lang.String, int):byte[]");
    }
}
