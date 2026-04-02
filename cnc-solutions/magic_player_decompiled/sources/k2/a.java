package k2;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import k2.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f2047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f2048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SocketFactory f2049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f2050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<v> f2051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<i> f2052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProxySelector f2053g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final Proxy f2054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final SSLSocketFactory f2055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final HostnameVerifier f2056j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final f f2057k;

    public a(String str, int i4, m mVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable f fVar, b bVar, @Nullable Proxy proxy, List<v> list, List<i> list2, ProxySelector proxySelector) {
        r.a aVar = new r.a();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            aVar.f2191a = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException(androidx.appcompat.view.a.a("unexpected scheme: ", str2));
            }
            aVar.f2191a = "https";
        }
        Objects.requireNonNull(str, "host == null");
        String strC = l2.c.c(r.j(str, 0, str.length(), false));
        if (strC == null) {
            throw new IllegalArgumentException(androidx.appcompat.view.a.a("unexpected host: ", str));
        }
        aVar.f2194d = strC;
        if (i4 <= 0 || i4 > 65535) {
            throw new IllegalArgumentException(android.support.v4.media.d.a("unexpected port: ", i4));
        }
        aVar.f2195e = i4;
        this.f2047a = aVar.a();
        Objects.requireNonNull(mVar, "dns == null");
        this.f2048b = mVar;
        Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.f2049c = socketFactory;
        Objects.requireNonNull(bVar, "proxyAuthenticator == null");
        this.f2050d = bVar;
        Objects.requireNonNull(list, "protocols == null");
        this.f2051e = l2.c.p(list);
        Objects.requireNonNull(list2, "connectionSpecs == null");
        this.f2052f = l2.c.p(list2);
        Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.f2053g = proxySelector;
        this.f2054h = null;
        this.f2055i = sSLSocketFactory;
        this.f2056j = hostnameVerifier;
        this.f2057k = fVar;
    }

    public boolean a(a aVar) {
        return this.f2048b.equals(aVar.f2048b) && this.f2050d.equals(aVar.f2050d) && this.f2051e.equals(aVar.f2051e) && this.f2052f.equals(aVar.f2052f) && this.f2053g.equals(aVar.f2053g) && l2.c.m(this.f2054h, aVar.f2054h) && l2.c.m(this.f2055i, aVar.f2055i) && l2.c.m(this.f2056j, aVar.f2056j) && l2.c.m(this.f2057k, aVar.f2057k) && this.f2047a.f2186e == aVar.f2047a.f2186e;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f2047a.equals(aVar.f2047a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f2053g.hashCode() + ((this.f2052f.hashCode() + ((this.f2051e.hashCode() + ((this.f2050d.hashCode() + ((this.f2048b.hashCode() + ((this.f2047a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Proxy proxy = this.f2054h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f2055i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f2056j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        f fVar = this.f2057k;
        return iHashCode4 + (fVar != null ? fVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Address{");
        sbA.append(this.f2047a.f2185d);
        sbA.append(":");
        sbA.append(this.f2047a.f2186e);
        if (this.f2054h != null) {
            sbA.append(", proxy=");
            sbA.append(this.f2054h);
        } else {
            sbA.append(", proxySelector=");
            sbA.append(this.f2053g);
        }
        sbA.append("}");
        return sbA.toString();
    }
}
