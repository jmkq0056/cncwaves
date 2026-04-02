package a3;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import javax.net.SocketFactory;
import x2.k;

/* JADX INFO: loaded from: classes2.dex */
public class g implements e3.a {
    @Override // e3.a
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList("ws")));
    }

    @Override // e3.a
    public y2.j b(URI uri, k kVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        int i4 = port == -1 ? 80 : port;
        Objects.requireNonNull(kVar);
        f fVar = new f(SocketFactory.getDefault(), uri.toString(), host, i4, str, null);
        fVar.f4154f = kVar.f3978e;
        return fVar;
    }

    @Override // e3.a
    public void c(URI uri) {
    }
}
