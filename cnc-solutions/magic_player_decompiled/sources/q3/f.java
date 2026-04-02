package q3;

import android.content.Context;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<String> f3318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f3319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f3320c;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f3321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f3322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f3323c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ e f3324d;

        public a(Context context, String str, String str2, e eVar) {
            this.f3321a = context;
            this.f3322b = str;
            this.f3323c = str2;
            this.f3324d = eVar;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                f.this.d(this.f3321a, this.f3322b, this.f3323c);
                this.f3324d.a();
            } catch (UnsatisfiedLinkError e4) {
                this.f3324d.b(e4);
            } catch (b e5) {
                this.f3324d.b(e5);
            }
        }
    }

    public f() {
        h hVar = new h();
        q3.a aVar = new q3.a();
        this.f3318a = new HashSet();
        this.f3319b = hVar;
        this.f3320c = aVar;
    }

    public File a(Context context) {
        return context.getDir("lib", 0);
    }

    public File b(Context context, String str, String str2) {
        String strA = ((h) this.f3319b).a(str);
        return q0.a.r(str2) ? new File(a(context), strA) : new File(a(context), android.support.v4.media.h.a(strA, ".", str2));
    }

    public void c(Context context, String str, String str2, e eVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (q0.a.r(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        String.format(Locale.US, "Beginning load of %s...", str);
        if (eVar == null) {
            d(context, str, str2);
        } else {
            new Thread(new a(context, str, str2, eVar)).start();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x016a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0171 A[Catch: IOException -> 0x0181, all -> 0x01b6, PHI: r11
      0x0171: PHI (r11v5 ??) = (r11v4 ??), (r11v6 ??) binds: [B:86:0x016f, B:95:0x017e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x01b6, blocks: (B:37:0x00dd, B:38:0x00e8, B:40:0x00ee, B:52:0x0122, B:55:0x0129, B:53:0x0125, B:56:0x012c, B:57:0x012f, B:74:0x015b, B:78:0x0162, B:79:0x0165, B:83:0x016a, B:87:0x0171, B:92:0x0179, B:103:0x01b0, B:104:0x01b5), top: B:138:0x00d5 }] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v8, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(android.content.Context r20, java.lang.String r21, java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q3.f.d(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
