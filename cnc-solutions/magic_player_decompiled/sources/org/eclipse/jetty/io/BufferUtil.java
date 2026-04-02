package org.eclipse.jetty.io;

import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class BufferUtil {
    public static final byte MINUS = 45;
    public static final byte SPACE = 32;
    public static final byte[] DIGIT = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    private static final int[] decDivisors = {1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};
    private static final int[] hexDivisors = {268435456, 16777216, 1048576, 65536, 4096, 256, 16, 1};
    private static final long[] decDivisorsL = {1000000000000000000L, 100000000000000000L, 10000000000000000L, 1000000000000000L, 100000000000000L, 10000000000000L, 1000000000000L, 100000000000L, 10000000000L, 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10, 1};

    public static boolean isPrefix(Buffer buffer, Buffer buffer2) {
        if (buffer.length() > buffer2.length()) {
            return false;
        }
        int index = buffer2.getIndex();
        int index2 = buffer.getIndex();
        while (index2 < buffer.putIndex()) {
            int i4 = index + 1;
            if (buffer.peek(index2) != buffer2.peek(index)) {
                return false;
            }
            index2++;
            index = i4;
        }
        return true;
    }

    public static void prependHexInt(Buffer buffer, int i4) {
        if (i4 == 0) {
            int index = buffer.getIndex() - 1;
            buffer.poke(index, (byte) 48);
            buffer.setGetIndex(index);
            return;
        }
        boolean z3 = false;
        if (i4 < 0) {
            z3 = true;
            i4 = -i4;
        }
        int index2 = buffer.getIndex();
        while (i4 > 0) {
            int i5 = i4 & 15;
            i4 >>= 4;
            index2--;
            buffer.poke(index2, DIGIT[i5]);
        }
        if (z3) {
            index2--;
            buffer.poke(index2, MINUS);
        }
        buffer.setGetIndex(index2);
    }

    public static void putCRLF(Buffer buffer) {
        buffer.put((byte) 13);
        buffer.put((byte) 10);
    }

    public static void putDecInt(Buffer buffer, int i4) {
        if (i4 < 0) {
            buffer.put(MINUS);
            if (i4 == Integer.MIN_VALUE) {
                buffer.put((byte) 50);
                i4 = 147483648;
            } else {
                i4 = -i4;
            }
        }
        if (i4 < 10) {
            buffer.put(DIGIT[i4]);
            return;
        }
        int i5 = 0;
        boolean z3 = false;
        while (true) {
            int[] iArr = decDivisors;
            if (i5 >= iArr.length) {
                return;
            }
            if (i4 >= iArr[i5]) {
                int i6 = i4 / iArr[i5];
                buffer.put(DIGIT[i6]);
                i4 -= i6 * iArr[i5];
                z3 = true;
            } else if (z3) {
                buffer.put((byte) 48);
            }
            i5++;
        }
    }

    public static void putDecLong(Buffer buffer, long j4) {
        if (j4 < 0) {
            buffer.put(MINUS);
            if (j4 == Long.MIN_VALUE) {
                buffer.put((byte) 57);
                j4 = 223372036854775808L;
            } else {
                j4 = -j4;
            }
        }
        if (j4 < 10) {
            buffer.put(DIGIT[(int) j4]);
            return;
        }
        int i4 = 0;
        boolean z3 = false;
        while (true) {
            long[] jArr = decDivisorsL;
            if (i4 >= jArr.length) {
                return;
            }
            if (j4 >= jArr[i4]) {
                long j5 = j4 / jArr[i4];
                buffer.put(DIGIT[(int) j5]);
                j4 -= j5 * jArr[i4];
                z3 = true;
            } else if (z3) {
                buffer.put((byte) 48);
            }
            i4++;
        }
    }

    public static void putHexInt(Buffer buffer, int i4) {
        if (i4 < 0) {
            buffer.put(MINUS);
            if (i4 == Integer.MIN_VALUE) {
                buffer.put((byte) 56);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                buffer.put((byte) 48);
                return;
            }
            i4 = -i4;
        }
        if (i4 < 16) {
            buffer.put(DIGIT[i4]);
            return;
        }
        int i5 = 0;
        boolean z3 = false;
        while (true) {
            int[] iArr = hexDivisors;
            if (i5 >= iArr.length) {
                return;
            }
            if (i4 >= iArr[i5]) {
                int i6 = i4 / iArr[i5];
                buffer.put(DIGIT[i6]);
                i4 -= i6 * iArr[i5];
                z3 = true;
            } else if (z3) {
                buffer.put((byte) 48);
            }
            i5++;
        }
    }

    public static String to8859_1_String(Buffer buffer) {
        return buffer instanceof BufferCache.CachedBuffer ? buffer.toString() : buffer.toString(StringUtil.__ISO_8859_1_CHARSET);
    }

    public static Buffer toBuffer(long j4) {
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(32);
        putDecLong(byteArrayBuffer, j4);
        return byteArrayBuffer;
    }

    public static int toInt(Buffer buffer) {
        boolean z3 = false;
        int i4 = 0;
        boolean z4 = false;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte bPeek = buffer.peek(index);
            if (bPeek > 32) {
                if (bPeek >= 48 && bPeek <= 57) {
                    i4 = (bPeek - 48) + (i4 * 10);
                    z3 = true;
                } else {
                    if (bPeek != 45 || z3) {
                        break;
                    }
                    z4 = true;
                }
            } else {
                if (z3) {
                    break;
                }
            }
        }
        if (z3) {
            return z4 ? -i4 : i4;
        }
        throw new NumberFormatException(buffer.toString());
    }

    public static long toLong(Buffer buffer) {
        boolean z3 = false;
        long j4 = 0;
        boolean z4 = false;
        for (int index = buffer.getIndex(); index < buffer.putIndex(); index++) {
            byte bPeek = buffer.peek(index);
            if (bPeek > 32) {
                if (bPeek >= 48 && bPeek <= 57) {
                    j4 = (j4 * 10) + ((long) (bPeek - 48));
                    z3 = true;
                } else {
                    if (bPeek != 45 || z3) {
                        break;
                    }
                    z4 = true;
                }
            } else {
                if (z3) {
                    break;
                }
            }
        }
        if (z3) {
            return z4 ? -j4 : j4;
        }
        throw new NumberFormatException(buffer.toString());
    }
}
