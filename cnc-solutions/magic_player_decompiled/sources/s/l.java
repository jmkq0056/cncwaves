package s;

import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final char f3422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3423f = -1;

    public l(String str, int i4, int i5, int i6, char c4) {
        this.f3418a = str;
        this.f3419b = i4;
        this.f3420c = i5;
        this.f3421d = i6;
        this.f3422e = c4;
        if (str != null) {
            w0.d.c(androidx.appcompat.view.a.a("chmod 777 ", str));
        }
    }

    public static void a(String str, byte[] bArr, int i4) {
        StringBuilder sb = new StringBuilder();
        int i5 = 0;
        while (i5 < i4) {
            sb.append(String.format(Locale.ENGLISH, "%02X", Integer.valueOf(bArr[i5] & 255)));
            i5++;
            if (i5 % 16 == 0) {
                sb.append("\n");
            } else {
                sb.append(" ");
            }
        }
        Log.d(str, sb.toString());
    }
}
