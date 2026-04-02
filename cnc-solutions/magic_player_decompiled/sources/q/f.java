package q;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Objects;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static String a(Context context) {
        String language = context.getResources().getConfiguration().locale.getLanguage();
        String string = context.getSharedPreferences("language", 0).getString("country", "");
        return !TextUtils.isEmpty(string) ? string : language;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Locale b(String str) {
        String str2;
        Objects.requireNonNull(str);
        String str3 = "es";
        switch (str.hashCode()) {
            case 3201:
                str2 = "el";
                if (str.equals("de")) {
                    b = 0;
                }
                break;
            case 3239:
                str2 = "el";
                if (str.equals(str2)) {
                    b = 1;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    b = 2;
                }
                str2 = "el";
                break;
            case 3246:
                b = str.equals(str3) ? (byte) 3 : (byte) -1;
                str3 = str3;
                str2 = "el";
                break;
            case 3259:
                if (str.equals("fa")) {
                    b = 4;
                }
                str2 = "el";
                break;
            case 3276:
                if (str.equals("fr")) {
                    b = 5;
                }
                str2 = "el";
                break;
            case 3329:
                if (str.equals("hi")) {
                    b = 6;
                }
                str2 = "el";
                break;
            case 3371:
                if (str.equals("it")) {
                    b = 7;
                }
                str2 = "el";
                break;
            case 3383:
                if (str.equals("ja")) {
                    b = 8;
                }
                str2 = "el";
                break;
            case 3428:
                if (str.equals("ko")) {
                    b = 9;
                }
                str2 = "el";
                break;
            case 3494:
                if (str.equals("ms")) {
                    b = 10;
                }
                str2 = "el";
                break;
            case 3580:
                if (str.equals("pl")) {
                    b = Flags.CD;
                }
                str2 = "el";
                break;
            case 3588:
                if (str.equals("pt")) {
                    b = 12;
                }
                str2 = "el";
                break;
            case 3651:
                if (str.equals("ru")) {
                    b = 13;
                }
                str2 = "el";
                break;
            case 3679:
                if (str.equals("sr")) {
                    b = 14;
                }
                str2 = "el";
                break;
            case 3700:
                if (str.equals("th")) {
                    b = 15;
                }
                str2 = "el";
                break;
            case 3710:
                if (str.equals("tr")) {
                    b = 16;
                }
                str2 = "el";
                break;
            case 3715:
                if (str.equals("tw")) {
                    b = 17;
                }
                str2 = "el";
                break;
            case 3763:
                if (str.equals("vi")) {
                    b = 18;
                }
                str2 = "el";
                break;
            case 3886:
                if (str.equals("zh")) {
                    b = 19;
                }
                str2 = "el";
                break;
            default:
                str2 = "el";
                break;
        }
        switch (b) {
            case 0:
                return new Locale("de");
            case 1:
                return new Locale(str2);
            case 2:
                return Locale.US;
            case 3:
                return new Locale(str3);
            case 4:
                return new Locale("fa");
            case 5:
                return new Locale("fr");
            case 6:
                return new Locale("hi");
            case 7:
                return new Locale("it");
            case 8:
                return Locale.JAPAN;
            case 9:
                return Locale.KOREAN;
            case 10:
                return new Locale("ms");
            case 11:
                return new Locale("pl");
            case 12:
                return new Locale("pt");
            case 13:
                return new Locale("ru");
            case 14:
                return new Locale("sr");
            case 15:
                return new Locale("th");
            case 16:
                return new Locale("tr");
            case 17:
                return new Locale("tw");
            case 18:
                return new Locale("vi");
            case 19:
                return Locale.SIMPLIFIED_CHINESE;
            default:
                return Locale.US;
        }
    }

    public static void c(Context context) {
        try {
            d(context, b(a(context)));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void d(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocale(locale);
            configuration.setLocales(new LocaleList(locale));
        } else {
            configuration.locale = locale;
            configuration.setLayoutDirection(locale);
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }
}
