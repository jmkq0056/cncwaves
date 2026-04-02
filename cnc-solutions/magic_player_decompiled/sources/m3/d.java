package m3;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2593a = 0;

    static {
        "0123456789ABCDEF".toCharArray();
    }

    public static StringBuilder a(StringBuilder sb, String str, String[] strArr) {
        int length = strArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            String str2 = strArr[i4];
            sb.append(str);
            sb.append(".\"");
            sb.append(str2);
            sb.append('\"');
            if (i4 < length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder b(StringBuilder sb, String str, String[] strArr) {
        for (int i4 = 0; i4 < strArr.length; i4++) {
            String str2 = strArr[i4];
            sb.append(str);
            sb.append(".\"");
            sb.append(str2);
            sb.append('\"');
            sb.append("=?");
            if (i4 < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder c(StringBuilder sb, String str, j3.e eVar) {
        if (str != null) {
            sb.append(str);
            sb.append('.');
        }
        sb.append('\"');
        sb.append(eVar.f2034e);
        sb.append('\"');
        return sb;
    }

    public static String d(String str, String str2, String[] strArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('\"');
        sb.append(str2);
        sb.append('\"');
        sb.append(" (");
        int length = strArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            sb.append('\"');
            sb.append(strArr[i4]);
            sb.append('\"');
            if (i4 < length - 1) {
                sb.append(',');
            }
        }
        sb.append(") VALUES (");
        int length2 = strArr.length;
        for (int i5 = 0; i5 < length2; i5++) {
            if (i5 < length2 - 1) {
                sb.append("?,");
            } else {
                sb.append('?');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static String e(String str, String str2, String[] strArr, boolean z3) {
        if (str2.length() < 0) {
            throw new j3.d("Table alias required");
        }
        StringBuilder sb = new StringBuilder(z3 ? "SELECT DISTINCT " : "SELECT ");
        a(sb, str2, strArr);
        sb.append(" FROM ");
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        sb.append(' ');
        sb.append(str2);
        sb.append(' ');
        return sb.toString();
    }
}
