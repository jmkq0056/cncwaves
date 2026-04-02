package kotlinx.datetime.internal;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;

/* JADX INFO: compiled from: math.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\b\u001a\u0019\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0082\b\u001a\u0011\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\b\u001a(\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0000\u001a \u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0000\u001a \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0000\u001a\f\u0010\u0018\u001a\u00020\n*\u00020\u0005H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0019"}, d2 = {"POWERS_OF_TEN", "", "getPOWERS_OF_TEN", "()[I", "high", "", "x", "indexBit", "value", "bit", "", "low", "multiplyAddAndDivide", "d", "n", "r", "m", "multiplyAndAdd", "multiplyAndDivide", "Lkotlinx/datetime/internal/DivRemResult;", "a", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "c", "safeMultiplyOrZero", "clampToInt", "kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class MathKt {
    private static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, WinError.WSABASEERR, 100000, 1000000, 10000000, 100000000, 1000000000};

    public static final int clampToInt(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    private static final long high(long j) {
        return (j >> 32) & 4294967295L;
    }

    private static final long indexBit(long j, int i) {
        return (j >> i) & 1;
    }

    private static final long low(long j) {
        return j & 4294967295L;
    }

    public static final long safeMultiplyOrZero(long j, long j2) {
        if (j2 == -1) {
            if (j == Long.MIN_VALUE) {
                return 0L;
            }
            return -j;
        }
        if (j2 == 1) {
            return j;
        }
        long j3 = j * j2;
        if (j3 / j2 != j) {
            return 0L;
        }
        return j3;
    }

    public static final DivRemResult multiplyAndDivide(long j, long j2, long j3) {
        if (j == 0 || j2 == 0) {
            return new DivRemResult(0L, 0L);
        }
        long jSafeMultiplyOrZero = safeMultiplyOrZero(j, j2);
        if (jSafeMultiplyOrZero != 0) {
            return new DivRemResult(jSafeMultiplyOrZero / j3, jSafeMultiplyOrZero % j3);
        }
        if (j2 == j3) {
            return new DivRemResult(j, 0L);
        }
        if (j == j3) {
            return new DivRemResult(j2, 0L);
        }
        long j4 = j >= 0 ? 0L : -1L;
        long j5 = j2 >= 0 ? 0L : -1L;
        long j6 = j & 4294967295L;
        long j7 = (j >> 32) & 4294967295L;
        long j8 = j2 & 4294967295L;
        long j9 = (j2 >> 32) & 4294967295L;
        long j10 = (j4 * j9) + (j7 * j5);
        long j11 = (j4 * j8) + (j7 * j9) + (j5 * j6);
        long j12 = j7 * j8;
        long j13 = j9 * j6;
        long j14 = j6 * j8;
        long j15 = j14 & 4294967295L;
        long j16 = (j12 & 4294967295L) + (j13 & 4294967295L) + ((j14 >> 32) & 4294967295L);
        long j17 = j16 & 4294967295L;
        long j18 = ((j16 >> 32) & 4294967295L) + (j11 & 4294967295L) + ((j12 >> 32) & 4294967295L) + ((j13 >> 32) & 4294967295L);
        long j19 = (j17 << 32) | j15;
        long j20 = (j18 & 4294967295L) | (((((j18 >> 32) & 4294967295L) + ((j11 >> 32) & 4294967295L)) + (j10 & 4294967295L)) << 32);
        int i = ((j20 >> 63) & 1) == 1 ? -1 : 1;
        if (i == -1) {
            j19 = (~j19) + 1;
            j20 = ~j20;
            if (j19 == 0) {
                j20++;
            }
        }
        int i2 = 127;
        long j21 = 0;
        long j22 = 0;
        while (-1 < i2) {
            j22 = (j22 << 1) | ((i2 < 64 ? j19 >> i2 : j20 >> (i2 - 64)) & 1);
            if (j22 >= j3 || j22 < 0) {
                j22 -= j3;
                if (i2 >= 63) {
                    throw new ArithmeticException("The result of a multiplication followed by division overflows a long");
                }
                j21 |= 1 << i2;
            }
            i2--;
        }
        long j23 = i;
        return new DivRemResult(j21 * j23, j23 * j22);
    }

    public static final long multiplyAddAndDivide(long j, long j2, long j3, long j4) {
        if (j > 0 && j3 < 0) {
            j--;
            j3 += j2;
        } else if (j < 0 && j3 > 0) {
            j++;
            j3 -= j2;
        }
        long j5 = j;
        if (j5 == 0) {
            return j3 / j4;
        }
        DivRemResult divRemResultMultiplyAndDivide = multiplyAndDivide(j5, j2, j4);
        return MathJvmKt.safeAdd(divRemResultMultiplyAndDivide.getQ(), MathJvmKt.safeAdd(j3 / j4, MathJvmKt.safeAdd(j3 % j4, divRemResultMultiplyAndDivide.getR()) / j4));
    }

    public static final long multiplyAndAdd(long j, long j2, long j3) {
        if (j > 0 && j3 < 0) {
            j--;
            j3 += j2;
        } else if (j < 0 && j3 > 0) {
            j++;
            j3 -= j2;
        }
        return MathJvmKt.safeAdd(MathJvmKt.safeMultiply(j, j2), j3);
    }

    public static final int[] getPOWERS_OF_TEN() {
        return POWERS_OF_TEN;
    }
}
