package k2;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f2092g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2093h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2094i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f2095j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2096k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f2097l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    public String f2098m;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2100b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2101c;
    }

    static {
        a aVar = new a();
        aVar.f2099a = true;
        new c(aVar);
        a aVar2 = new a();
        aVar2.f2101c = true;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        int i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        long seconds = timeUnit.toSeconds(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (seconds <= TTL.MAX_VALUE) {
            i4 = (int) seconds;
        }
        aVar2.f2100b = i4;
        new c(aVar2);
    }

    public c(boolean z3, boolean z4, int i4, int i5, boolean z5, boolean z6, boolean z7, int i6, int i7, boolean z8, boolean z9, boolean z10, @Nullable String str) {
        this.f2086a = z3;
        this.f2087b = z4;
        this.f2088c = i4;
        this.f2089d = i5;
        this.f2090e = z5;
        this.f2091f = z6;
        this.f2092g = z7;
        this.f2093h = i6;
        this.f2094i = i7;
        this.f2095j = z8;
        this.f2096k = z9;
        this.f2097l = z10;
        this.f2098m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static k2.c a(k2.q r22) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.c.a(k2.q):k2.c");
    }

    public String toString() {
        String string = this.f2098m;
        if (string == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f2086a) {
                sb.append("no-cache, ");
            }
            if (this.f2087b) {
                sb.append("no-store, ");
            }
            if (this.f2088c != -1) {
                sb.append("max-age=");
                sb.append(this.f2088c);
                sb.append(", ");
            }
            if (this.f2089d != -1) {
                sb.append("s-maxage=");
                sb.append(this.f2089d);
                sb.append(", ");
            }
            if (this.f2090e) {
                sb.append("private, ");
            }
            if (this.f2091f) {
                sb.append("public, ");
            }
            if (this.f2092g) {
                sb.append("must-revalidate, ");
            }
            if (this.f2093h != -1) {
                sb.append("max-stale=");
                sb.append(this.f2093h);
                sb.append(", ");
            }
            if (this.f2094i != -1) {
                sb.append("min-fresh=");
                sb.append(this.f2094i);
                sb.append(", ");
            }
            if (this.f2095j) {
                sb.append("only-if-cached, ");
            }
            if (this.f2096k) {
                sb.append("no-transform, ");
            }
            if (this.f2097l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                string = "";
            } else {
                sb.delete(sb.length() - 2, sb.length());
                string = sb.toString();
            }
            this.f2098m = string;
        }
        return string;
    }

    public c(a aVar) {
        this.f2086a = aVar.f2099a;
        this.f2087b = false;
        this.f2088c = -1;
        this.f2089d = -1;
        this.f2090e = false;
        this.f2091f = false;
        this.f2092g = false;
        this.f2093h = aVar.f2100b;
        this.f2094i = -1;
        this.f2095j = aVar.f2101c;
        this.f2096k = false;
        this.f2097l = false;
    }
}
