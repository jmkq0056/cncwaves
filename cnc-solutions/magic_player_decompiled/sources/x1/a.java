package x1;

import android.support.v4.media.f;
import com.google.android.material.datepicker.UtcDates;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f3957a = TimeZone.getTimeZone(UtcDates.UTC);

    public static boolean a(String str, int i4, char c4) {
        return i4 < str.length() && str.charAt(i4) == c4;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00e1 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:46:0x00b6, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:86:0x0197, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:71:0x011b, B:88:0x01c8, B:89:0x01cf, B:50:0x00c6, B:51:0x00c9, B:45:0x00b2), top: B:106:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c8 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:46:0x00b6, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:86:0x0197, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:71:0x011b, B:88:0x01c8, B:89:0x01cf, B:50:0x00c6, B:51:0x00c9, B:45:0x00b2), top: B:106:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date b(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instruction units count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.a.b(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int c(String str, int i4, int i5) {
        int i6;
        int i7;
        if (i4 < 0 || i5 > str.length() || i4 > i5) {
            throw new NumberFormatException(str);
        }
        if (i4 < i5) {
            i7 = i4 + 1;
            int iDigit = Character.digit(str.charAt(i4), 10);
            if (iDigit < 0) {
                StringBuilder sbA = f.a("Invalid number: ");
                sbA.append(str.substring(i4, i5));
                throw new NumberFormatException(sbA.toString());
            }
            i6 = -iDigit;
        } else {
            i6 = 0;
            i7 = i4;
        }
        while (i7 < i5) {
            int i8 = i7 + 1;
            int iDigit2 = Character.digit(str.charAt(i7), 10);
            if (iDigit2 < 0) {
                StringBuilder sbA2 = f.a("Invalid number: ");
                sbA2.append(str.substring(i4, i5));
                throw new NumberFormatException(sbA2.toString());
            }
            i6 = (i6 * 10) - iDigit2;
            i7 = i8;
        }
        return -i6;
    }
}
