package v2;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f3722g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f3723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public l f3724i;

    public d(String str, int i4, int i5, int i6, l lVar) {
        this.f3716a = str;
        this.f3719d = i4;
        this.f3720e = i5;
        this.f3721f = i6;
        this.f3724i = lVar;
        this.f3717b = b(str, false);
        this.f3718c = a(str);
    }

    public static String c(String str) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        if (strTrim.indexOf("  ") == -1) {
            return strTrim;
        }
        int length = strTrim.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z3 = false;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = strTrim.charAt(i4);
            if (cCharAt == ' ') {
                if (!z3) {
                    stringBuffer.append(cCharAt);
                }
                z3 = true;
            } else {
                stringBuffer.append(cCharAt);
                z3 = false;
            }
        }
        return stringBuffer.toString();
    }

    public String a(String str) {
        int iIndexOf = str.indexOf(58);
        return iIndexOf == -1 ? str : str.substring(iIndexOf + 1).intern();
    }

    public String b(String str, boolean z3) {
        int iIndexOf = str.indexOf(58);
        if (iIndexOf == -1) {
            return z3 ? "" : this.f3724i.f3767c;
        }
        String strSubstring = str.substring(0, iIndexOf);
        if (strSubstring.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("urn:x-prefix:");
        stringBuffer.append(strSubstring);
        return stringBuffer.toString().intern();
    }

    public void d(b bVar, String str, String str2, String str3) {
        int length;
        if (str.equals("xmlns") || str.startsWith("xmlns:")) {
            return;
        }
        String strB = b(str, true);
        String strA = a(str);
        int index = bVar.getIndex(str);
        if (index != -1) {
            if (str2 == null) {
                str2 = bVar.getType(index);
            }
            if (!str2.equals("CDATA")) {
                str3 = c(str3);
            }
            if (index < 0 || index >= bVar.f3714a) {
                throw new ArrayIndexOutOfBoundsException(a.a("Attempt to modify attribute at illegal index: ", index));
            }
            String[] strArr = bVar.f3715b;
            int i4 = index * 5;
            strArr[i4] = strB;
            strArr[i4 + 1] = strA;
            strArr[i4 + 2] = str;
            strArr[i4 + 3] = str2;
            strArr[i4 + 4] = str3;
            return;
        }
        String strIntern = str.intern();
        if (str2 == null) {
            str2 = "CDATA";
        }
        if (!str2.equals("CDATA")) {
            str3 = c(str3);
        }
        int i5 = bVar.f3714a + 1;
        if (i5 > 0) {
            String[] strArr2 = bVar.f3715b;
            if (strArr2 != null && strArr2.length != 0) {
                length = strArr2.length < i5 * 5 ? strArr2.length : 25;
            }
            while (length < i5 * 5) {
                length *= 2;
            }
            String[] strArr3 = new String[length];
            int i6 = bVar.f3714a;
            if (i6 > 0) {
                System.arraycopy(bVar.f3715b, 0, strArr3, 0, i6 * 5);
            }
            bVar.f3715b = strArr3;
        }
        String[] strArr4 = bVar.f3715b;
        int i7 = bVar.f3714a;
        int i8 = i7 * 5;
        strArr4[i8] = strB;
        strArr4[i8 + 1] = strA;
        strArr4[i8 + 2] = strIntern;
        strArr4[i8 + 3] = str2;
        strArr4[i8 + 4] = str3;
        bVar.f3714a = i7 + 1;
    }
}
