package a3;

import java.net.URI;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import x2.k;

/* JADX INFO: loaded from: classes2.dex */
public class j implements e3.a {
    @Override // e3.a
    public Set<String> a() {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList("wss")));
    }

    @Override // e3.a
    public y2.j b(URI uri, k kVar, String str) {
        String host = uri.getHost();
        int port = uri.getPort();
        int i4 = port == -1 ? 443 : port;
        Objects.requireNonNull(kVar);
        z2.a aVar = new z2.a();
        i iVar = new i(aVar.a(null), uri.toString(), host, i4, str, null);
        int i5 = kVar.f3978e;
        iVar.f4154f = i5;
        iVar.f4144i = i5;
        iVar.f4145j = null;
        iVar.f4146k = true;
        String[] strArrC = aVar.c(null);
        if (strArrC != null) {
            iVar.b(strArrC);
        }
        return iVar;
    }

    @Override // e3.a
    public void c(URI uri) {
    }
}
