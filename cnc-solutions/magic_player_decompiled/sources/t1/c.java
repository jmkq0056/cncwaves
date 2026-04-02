package t1;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements t1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f3530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ c[] f3531b;

    public enum a extends c {
        public a(String str, int i4) {
            super(str, i4, null);
        }

        @Override // t1.d
        public String a(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        f3530a = aVar;
        f3531b = new c[]{aVar, new c("UPPER_CAMEL_CASE", 1) { // from class: t1.c.b
            @Override // t1.d
            public String a(Field field) {
                return c.c(field.getName());
            }
        }, new c("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: t1.c.c
            @Override // t1.d
            public String a(Field field) {
                return c.c(c.b(field.getName(), " "));
            }
        }, new c("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: t1.c.d
            @Override // t1.d
            public String a(Field field) {
                return c.b(field.getName(), "_").toLowerCase(Locale.ENGLISH);
            }
        }, new c("LOWER_CASE_WITH_DASHES", 4) { // from class: t1.c.e
            @Override // t1.d
            public String a(Field field) {
                return c.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        }, new c("LOWER_CASE_WITH_DOTS", 5) { // from class: t1.c.f
            @Override // t1.d
            public String a(Field field) {
                return c.b(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public c(String str, int i4, a aVar) {
    }

    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int length = str.length() - 1;
        int i4 = 0;
        while (!Character.isLetter(str.charAt(i4)) && i4 < length) {
            i4++;
        }
        char cCharAt = str.charAt(i4);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i4 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i4) + upperCase + str.substring(i4 + 1);
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f3531b.clone();
    }
}
