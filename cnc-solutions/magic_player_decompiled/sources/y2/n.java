package y2;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class n implements e3.a {
    @Override // e3.a
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList("ssl")));
    }

    @Override // e3.a
    public j b(URI uri, x2.k kVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        if (port == -1) {
            port = 8883;
        }
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            throw new IllegalArgumentException(uri.toString());
        }
        Objects.requireNonNull(kVar);
        z2.a aVar = new z2.a();
        m mVar = new m(aVar.a(null), host, port, str);
        int i4 = kVar.f3978e;
        mVar.f4154f = i4;
        mVar.f4144i = i4;
        mVar.f4145j = null;
        mVar.f4146k = true;
        String[] strArrC = aVar.c(null);
        if (strArrC != null) {
            mVar.b(strArrC);
        }
        return mVar;
    }

    @Override // e3.a
    public void c(URI uri) {
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            throw new IllegalArgumentException(uri.toString());
        }
    }
}
