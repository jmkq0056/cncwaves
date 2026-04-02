package w0;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static a a(String... strArr) {
        return b(false, strArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x010b A[Catch: IOException -> 0x0107, TryCatch #8 {IOException -> 0x0107, blocks: (B:76:0x0103, B:80:0x010b, B:82:0x0110), top: B:94:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0110 A[Catch: IOException -> 0x0107, TRY_LEAVE, TryCatch #8 {IOException -> 0x0107, blocks: (B:76:0x0103, B:80:0x010b, B:82:0x0110), top: B:94:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static w0.d.a b(boolean r10, java.lang.String... r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.d.b(boolean, java.lang.String[]):w0.d$a");
    }

    public static a c(String... strArr) {
        return b(true, strArr);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f3780c;

        public a(int i4) {
            this.f3778a = i4;
        }

        public String toString() {
            StringBuilder sbA = android.support.v4.media.f.a("exitCode=");
            sbA.append(this.f3778a);
            String str = this.f3779b;
            if (str != null && str.length() > 0) {
                sbA.append("\n");
                sbA.append(this.f3779b);
            }
            String str2 = this.f3780c;
            if (str2 != null && str2.length() > 0) {
                sbA.append("\n");
                sbA.append(this.f3780c);
            }
            return sbA.toString();
        }

        public a(int i4, String str, String str2) {
            this.f3778a = i4;
            this.f3779b = str;
            this.f3780c = str2;
        }
    }
}
