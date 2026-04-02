package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class TimeUtils {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int i4, int i5, boolean z3, int i6) {
        if (i4 > 99 || (z3 && i6 >= 3)) {
            return i5 + 3;
        }
        if (i4 > 9 || (z3 && i6 >= 2)) {
            return i5 + 2;
        }
        if (z3 || i4 > 0) {
            return i5 + 1;
        }
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j4, 0));
        }
    }

    private static int formatDurationLocked(long j4, int i4) {
        char c4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        long j5 = j4;
        if (sFormatStr.length < i4) {
            sFormatStr = new char[i4];
        }
        char[] cArr = sFormatStr;
        if (j5 == 0) {
            int i10 = i4 - 1;
            while (i10 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j5 > 0) {
            c4 = '+';
        } else {
            c4 = '-';
            j5 = -j5;
        }
        int i11 = (int) (j5 % 1000);
        int iFloor = (int) Math.floor(j5 / 1000);
        if (iFloor > SECONDS_PER_DAY) {
            i5 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i5;
        } else {
            i5 = 0;
        }
        if (iFloor > SECONDS_PER_HOUR) {
            i6 = iFloor / SECONDS_PER_HOUR;
            iFloor -= i6 * SECONDS_PER_HOUR;
        } else {
            i6 = 0;
        }
        if (iFloor > 60) {
            int i12 = iFloor / 60;
            i7 = iFloor - (i12 * 60);
            i8 = i12;
        } else {
            i7 = iFloor;
            i8 = 0;
        }
        if (i4 != 0) {
            int iAccumField = accumField(i5, 1, false, 0);
            int iAccumField2 = iAccumField + accumField(i6, 1, iAccumField > 0, 2);
            int iAccumField3 = iAccumField2 + accumField(i8, 1, iAccumField2 > 0, 2);
            int iAccumField4 = iAccumField3 + accumField(i7, 1, iAccumField3 > 0, 2);
            i9 = 0;
            for (int iAccumField5 = accumField(i11, 2, true, iAccumField4 > 0 ? 3 : 0) + 1 + iAccumField4; iAccumField5 < i4; iAccumField5++) {
                cArr[i9] = ' ';
                i9++;
            }
        } else {
            i9 = 0;
        }
        cArr[i9] = c4;
        int i13 = i9 + 1;
        boolean z3 = i4 != 0;
        int iPrintField = printField(cArr, i5, 'd', i13, false, 0);
        int iPrintField2 = printField(cArr, i6, 'h', iPrintField, iPrintField != i13, z3 ? 2 : 0);
        int iPrintField3 = printField(cArr, i8, 'm', iPrintField2, iPrintField2 != i13, z3 ? 2 : 0);
        int iPrintField4 = printField(cArr, i7, 's', iPrintField3, iPrintField3 != i13, z3 ? 2 : 0);
        int iPrintField5 = printField(cArr, i11, 'm', iPrintField4, true, (!z3 || iPrintField4 == i13) ? 0 : 3);
        cArr[iPrintField5] = 's';
        return iPrintField5 + 1;
    }

    private static int printField(char[] cArr, int i4, char c4, int i5, boolean z3, int i6) {
        int i7;
        if (!z3 && i4 <= 0) {
            return i5;
        }
        if ((!z3 || i6 < 3) && i4 <= 99) {
            i7 = i5;
        } else {
            int i8 = i4 / 100;
            cArr[i5] = (char) (i8 + 48);
            i7 = i5 + 1;
            i4 -= i8 * 100;
        }
        if ((z3 && i6 >= 2) || i4 > 9 || i5 != i7) {
            int i9 = i4 / 10;
            cArr[i7] = (char) (i9 + 48);
            i7++;
            i4 -= i9 * 10;
        }
        cArr[i7] = (char) (i4 + 48);
        int i10 = i7 + 1;
        cArr[i10] = c4;
        return i10 + 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter, int i4) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j4, i4)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter) {
        formatDuration(j4, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, long j5, PrintWriter printWriter) {
        if (j4 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j4 - j5, printWriter, 0);
        }
    }
}
