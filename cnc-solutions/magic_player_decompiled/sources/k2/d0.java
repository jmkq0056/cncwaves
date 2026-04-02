package k2;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f2102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Proxy f2103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f2104c;

    public d0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(aVar, "address == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f2102a = aVar;
        this.f2103b = proxy;
        this.f2104c = inetSocketAddress;
    }

    public boolean a() {
        return this.f2102a.f2055i != null && this.f2103b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d0) {
            d0 d0Var = (d0) obj;
            if (d0Var.f2102a.equals(this.f2102a) && d0Var.f2103b.equals(this.f2103b) && d0Var.f2104c.equals(this.f2104c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f2104c.hashCode() + ((this.f2103b.hashCode() + ((this.f2102a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Route{");
        sbA.append(this.f2104c);
        sbA.append("}");
        return sbA.toString();
    }
}
