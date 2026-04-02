package o1;

import android.os.Build;
import android.support.v4.media.f;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f2847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public static HashMap<String, String> f2848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f2849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f2850d;

    static {
        f2847a = "R".equals(Build.VERSION.CODENAME) ? 30 : Build.VERSION.SDK_INT;
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        f2849c = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f2850d = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
    }

    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int b(int i4, int i5, int i6) {
        return Math.max(i5, Math.min(i4, i6));
    }

    public static long c(long j4, long j5, long j6) {
        return Math.max(j5, Math.min(j4, j6));
    }

    public static String d(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String e(StringBuilder sb, Formatter formatter, long j4) {
        if (j4 == -9223372036854775807L) {
            j4 = 0;
        }
        String str = j4 < 0 ? "-" : "";
        long jAbs = (Math.abs(j4) + 500) / 1000;
        long j5 = jAbs % 60;
        long j6 = (jAbs / 60) % 60;
        long j7 = jAbs / 3600;
        sb.setLength(0);
        return j7 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j7), Long.valueOf(j6), Long.valueOf(j5)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j6), Long.valueOf(j5)).toString();
    }

    public static String f(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !"und".equals(strReplace)) {
            str = strReplace;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        int i4 = 0;
        String str2 = lowerCase.split("-", 2)[0];
        if (f2848b == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            HashMap<String, String> map = new HashMap<>(iSOLanguages.length + f2849c.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        map.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            int i5 = 0;
            while (true) {
                String[] strArr = f2849c;
                if (i5 >= strArr.length) {
                    break;
                }
                map.put(strArr[i5], strArr[i5 + 1]);
                i5 += 2;
            }
            f2848b = map;
        }
        String str4 = f2848b.get(str2);
        if (str4 != null) {
            StringBuilder sbA = f.a(str4);
            sbA.append(lowerCase.substring(str2.length()));
            lowerCase = sbA.toString();
            str2 = str4;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return lowerCase;
        }
        while (true) {
            String[] strArr2 = f2850d;
            if (i4 >= strArr2.length) {
                return lowerCase;
            }
            if (lowerCase.startsWith(strArr2[i4])) {
                return strArr2[i4 + 1] + lowerCase.substring(strArr2[i4].length());
            }
            i4 += 2;
        }
    }
}
