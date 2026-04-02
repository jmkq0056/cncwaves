package o2;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import k2.a0;
import k2.k;
import k2.q;
import k2.s;
import k2.t;
import k2.x;
import k2.y;
import k2.z;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.util.B64Code;
import u2.l;
import u2.o;
import u2.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f2851a;

    public a(k kVar) {
        this.f2851a = kVar;
    }

    @Override // k2.s
    public a0 a(s.a aVar) {
        boolean z3;
        f fVar = (f) aVar;
        x xVar = fVar.f2862f;
        Objects.requireNonNull(xVar);
        x.a aVar2 = new x.a(xVar);
        z zVar = xVar.f2272d;
        if (zVar != null) {
            y yVar = (y) zVar;
            t tVar = yVar.f2280a;
            if (tVar != null) {
                aVar2.c(HttpHeaders.CONTENT_TYPE, tVar.f2201a);
            }
            long j4 = yVar.f2281b;
            if (j4 != -1) {
                aVar2.c(HttpHeaders.CONTENT_LENGTH, Long.toString(j4));
                aVar2.f2277c.b(HttpHeaders.TRANSFER_ENCODING);
            } else {
                aVar2.c(HttpHeaders.TRANSFER_ENCODING, HttpHeaderValues.CHUNKED);
                aVar2.f2277c.b(HttpHeaders.CONTENT_LENGTH);
            }
        }
        if (xVar.f2271c.c(HttpHeaders.HOST) == null) {
            aVar2.c(HttpHeaders.HOST, l2.c.o(xVar.f2269a, false));
        }
        if (xVar.f2271c.c(HttpHeaders.CONNECTION) == null) {
            aVar2.c(HttpHeaders.CONNECTION, HttpHeaders.KEEP_ALIVE);
        }
        if (xVar.f2271c.c(HttpHeaders.ACCEPT_ENCODING) == null && xVar.f2271c.c(HttpHeaders.RANGE) == null) {
            aVar2.c(HttpHeaders.ACCEPT_ENCODING, HttpHeaderValues.GZIP);
            z3 = true;
        } else {
            z3 = false;
        }
        Objects.requireNonNull((k.a) this.f2851a);
        List listEmptyList = Collections.emptyList();
        if (!listEmptyList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = listEmptyList.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 > 0) {
                    sb.append("; ");
                }
                k2.j jVar = (k2.j) listEmptyList.get(i4);
                sb.append(jVar.f2158a);
                sb.append(B64Code.__pad);
                sb.append(jVar.f2159b);
            }
            aVar2.c(HttpHeaders.COOKIE, sb.toString());
        }
        if (xVar.f2271c.c(HttpHeaders.USER_AGENT) == null) {
            aVar2.c(HttpHeaders.USER_AGENT, "okhttp/3.12.1");
        }
        a0 a0VarB = fVar.b(aVar2.b(), fVar.f2858b, fVar.f2859c, fVar.f2860d);
        e.d(this.f2851a, xVar.f2269a, a0VarB.f2063f);
        a0.a aVar3 = new a0.a(a0VarB);
        aVar3.f2070a = xVar;
        if (z3) {
            String strC = a0VarB.f2063f.c(HttpHeaders.CONTENT_ENCODING);
            if (strC == null) {
                strC = null;
            }
            if (HttpHeaderValues.GZIP.equalsIgnoreCase(strC) && e.b(a0VarB)) {
                l lVar = new l(a0VarB.f2064g.D());
                q.a aVarE = a0VarB.f2063f.e();
                aVarE.b(HttpHeaders.CONTENT_ENCODING);
                aVarE.b(HttpHeaders.CONTENT_LENGTH);
                List<String> list = aVarE.f2180a;
                String[] strArr = (String[]) list.toArray(new String[list.size()]);
                q.a aVar4 = new q.a();
                Collections.addAll(aVar4.f2180a, strArr);
                aVar3.f2075f = aVar4;
                String strC2 = a0VarB.f2063f.c(HttpHeaders.CONTENT_TYPE);
                String str = strC2 != null ? strC2 : null;
                Logger logger = o.f3599a;
                aVar3.f2076g = new g(str, -1L, new r(lVar));
            }
        }
        return aVar3.a();
    }
}
