package r1;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static String a(int i4, int i5, @NullableDecl String str) {
        if (i4 < 0) {
            return e("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i5 >= 0) {
            return e("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i5));
        }
        throw new IllegalArgumentException(android.support.v4.media.d.a("negative size: ", i5));
    }

    @CanIgnoreReturnValue
    public static int b(int i4, int i5) {
        String strE;
        if (i4 >= 0 && i4 < i5) {
            return i4;
        }
        if (i4 < 0) {
            strE = e("%s (%s) must not be negative", "index", Integer.valueOf(i4));
        } else {
            if (i5 < 0) {
                throw new IllegalArgumentException(android.support.v4.media.d.a("negative size: ", i5));
            }
            strE = e("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i4), Integer.valueOf(i5));
        }
        throw new IndexOutOfBoundsException(strE);
    }

    @CanIgnoreReturnValue
    public static int c(int i4, int i5) {
        if (i4 < 0 || i4 > i5) {
            throw new IndexOutOfBoundsException(a(i4, i5, "index"));
        }
        return i4;
    }

    public static void d(int i4, int i5, int i6) {
        if (i4 < 0 || i5 < i4 || i5 > i6) {
            throw new IndexOutOfBoundsException((i4 < 0 || i4 > i6) ? a(i4, i6, "start index") : (i5 < 0 || i5 > i6) ? a(i5, i6, "end index") : e("end index (%s) must not be less than start index (%s)", Integer.valueOf(i5), Integer.valueOf(i4)));
        }
    }

    public static String e(@NullableDecl String str, @NullableDecl Object... objArr) {
        int iIndexOf;
        String strValueOf;
        int i4 = 0;
        for (int i5 = 0; i5 < objArr.length; i5++) {
            Object obj = objArr[i5];
            try {
                strValueOf = String.valueOf(obj);
            } catch (Exception e4) {
                String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e4);
                strValueOf = "<" + str2 + " threw " + e4.getClass().getName() + ">";
            }
            objArr[i5] = strValueOf;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + str.length());
        int i6 = 0;
        while (i4 < objArr.length && (iIndexOf = str.indexOf("%s", i6)) != -1) {
            sb.append((CharSequence) str, i6, iIndexOf);
            sb.append(objArr[i4]);
            i6 = iIndexOf + 2;
            i4++;
        }
        sb.append((CharSequence) str, i6, str.length());
        if (i4 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i4]);
            for (int i7 = i4 + 1; i7 < objArr.length; i7++) {
                sb.append(", ");
                sb.append(objArr[i7]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
