package y2;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class p implements e3.a {
    @Override // e3.a
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList("tcp")));
    }

    @Override // e3.a
    public j b(URI uri, x2.k kVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        if (port == -1) {
            port = 1883;
        }
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            throw new IllegalArgumentException(uri.toString());
        }
        Objects.requireNonNull(kVar);
        o oVar = new o(SocketFactory.getDefault(), host, port, str);
        oVar.f4154f = kVar.f3978e;
        return oVar;
    }

    @Override // e3.a
    public void c(URI uri) {
        String path = uri.getPath();
        if (path == null || path.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("URI path must be empty \"" + uri.toString() + "\"");
    }
}
