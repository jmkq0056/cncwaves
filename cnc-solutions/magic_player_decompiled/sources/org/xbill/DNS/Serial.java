package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public final class Serial {
    private static final long MAX32 = 4294967295L;

    private Serial() {
    }

    public static int compare(long j4, long j5) {
        if (j4 < 0 || j4 > MAX32) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(j4);
            stringBuffer.append(" out of range");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        if (j5 < 0 || j5 > MAX32) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(j5);
            stringBuffer2.append(" out of range");
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        long j6 = j4 - j5;
        if (j6 >= MAX32) {
            j6 -= 4294967296L;
        } else if (j6 < -4294967295L) {
            j6 += 4294967296L;
        }
        return (int) j6;
    }

    public static long increment(long j4) {
        if (j4 >= 0 && j4 <= MAX32) {
            if (j4 == MAX32) {
                return 0L;
            }
            return j4 + 1;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(j4);
        stringBuffer.append(" out of range");
        throw new IllegalArgumentException(stringBuffer.toString());
    }
}
