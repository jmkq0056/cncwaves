package b1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final d f209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f211d;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f214c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f215d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f216e;

        public b(long j4, long j5, boolean z3, boolean z4, boolean z5, a aVar) {
            this.f212a = j4;
            this.f213b = j5;
            this.f214c = z3;
            this.f215d = z4;
            this.f216e = z5;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f212a == bVar.f212a && this.f213b == bVar.f213b && this.f214c == bVar.f214c && this.f215d == bVar.f215d && this.f216e == bVar.f216e;
        }

        public int hashCode() {
            return ((((((Long.valueOf(this.f213b).hashCode() + (Long.valueOf(this.f212a).hashCode() * 31)) * 31) + (this.f214c ? 1 : 0)) * 31) + (this.f215d ? 1 : 0)) * 31) + (this.f216e ? 1 : 0);
        }
    }

    public static final class c {
        public int hashCode() {
            throw null;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f217a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<f1.c> f220d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<Object> f222f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public final String f218b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public final c f219c = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public final String f221e = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        public final Uri f223g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        public final Object f224h = null;

        public d(Uri uri, String str, c cVar, List list, String str2, List list2, Uri uri2, Object obj, a aVar) {
            this.f217a = uri;
            this.f220d = list;
            this.f222f = list2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f217a.equals(dVar.f217a) && o1.e.a(this.f218b, dVar.f218b) && o1.e.a(this.f219c, dVar.f219c) && this.f220d.equals(dVar.f220d) && o1.e.a(this.f221e, dVar.f221e) && this.f222f.equals(dVar.f222f) && o1.e.a(this.f223g, dVar.f223g) && o1.e.a(this.f224h, dVar.f224h);
        }

        public int hashCode() {
            int iHashCode = this.f217a.hashCode() * 31;
            String str = this.f218b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            c cVar = this.f219c;
            int iHashCode3 = (this.f220d.hashCode() + ((iHashCode2 + (cVar == null ? 0 : cVar.hashCode())) * 31)) * 31;
            String str2 = this.f221e;
            int iHashCode4 = (this.f222f.hashCode() + ((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Uri uri = this.f223g;
            int iHashCode5 = (iHashCode4 + (uri == null ? 0 : uri.hashCode())) * 31;
            Object obj = this.f224h;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    public g(String str, b bVar, d dVar, h hVar, a aVar) {
        this.f208a = str;
        this.f209b = dVar;
        this.f210c = hVar;
        this.f211d = bVar;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return o1.e.a(this.f208a, gVar.f208a) && this.f211d.equals(gVar.f211d) && o1.e.a(this.f209b, gVar.f209b) && o1.e.a(this.f210c, gVar.f210c);
    }

    public int hashCode() {
        int iHashCode = this.f208a.hashCode() * 31;
        d dVar = this.f209b;
        return this.f210c.hashCode() + ((this.f211d.hashCode() + ((iHashCode + (dVar != null ? dVar.hashCode() : 0)) * 31)) * 31);
    }
}
