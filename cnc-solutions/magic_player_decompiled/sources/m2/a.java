package m2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import k2.a0;
import k2.q;
import k2.s;
import k2.v;
import k2.x;
import o2.f;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {
    public a(c cVar) {
    }

    public static boolean b(String str) {
        return HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str) || HttpHeaders.CONTENT_ENCODING.equalsIgnoreCase(str) || HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str);
    }

    public static boolean c(String str) {
        return (HttpHeaders.CONNECTION.equalsIgnoreCase(str) || HttpHeaders.KEEP_ALIVE.equalsIgnoreCase(str) || HttpHeaders.PROXY_AUTHENTICATE.equalsIgnoreCase(str) || HttpHeaders.PROXY_AUTHORIZATION.equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || HttpHeaders.TRANSFER_ENCODING.equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static a0 d(a0 a0Var) {
        if (a0Var == null || a0Var.f2064g == null) {
            return a0Var;
        }
        a0.a aVar = new a0.a(a0Var);
        aVar.f2076g = null;
        return aVar.a();
    }

    @Override // k2.s
    public a0 a(s.a aVar) {
        System.currentTimeMillis();
        f fVar = (f) aVar;
        x xVar = fVar.f2862f;
        b bVar = new b(xVar, null);
        if (xVar != null && xVar.a().f2095j) {
            bVar = new b(null, null);
        }
        x xVar2 = bVar.f2571a;
        a0 a0Var = bVar.f2572b;
        if (xVar2 == null && a0Var == null) {
            a0.a aVar2 = new a0.a();
            aVar2.f2070a = fVar.f2862f;
            aVar2.f2071b = v.HTTP_1_1;
            aVar2.f2072c = HttpStatus.GATEWAY_TIMEOUT_504;
            aVar2.f2073d = "Unsatisfiable Request (only-if-cached)";
            aVar2.f2076g = l2.c.f2439c;
            aVar2.f2080k = -1L;
            aVar2.f2081l = System.currentTimeMillis();
            return aVar2.a();
        }
        if (xVar2 == null) {
            Objects.requireNonNull(a0Var);
            a0.a aVar3 = new a0.a(a0Var);
            aVar3.b(d(a0Var));
            return aVar3.a();
        }
        f fVar2 = (f) aVar;
        a0 a0VarB = fVar2.b(xVar2, fVar2.f2858b, fVar2.f2859c, fVar2.f2860d);
        if (a0Var != null) {
            if (a0VarB.f2060c == 304) {
                a0.a aVar4 = new a0.a(a0Var);
                q qVar = a0Var.f2063f;
                q qVar2 = a0VarB.f2063f;
                ArrayList arrayList = new ArrayList(20);
                int iF = qVar.f();
                for (int i4 = 0; i4 < iF; i4++) {
                    String strD = qVar.d(i4);
                    String strG = qVar.g(i4);
                    if ((!HttpHeaders.WARNING.equalsIgnoreCase(strD) || !strG.startsWith("1")) && (b(strD) || !c(strD) || qVar2.c(strD) == null)) {
                        arrayList.add(strD);
                        arrayList.add(strG.trim());
                    }
                }
                int iF2 = qVar2.f();
                for (int i5 = 0; i5 < iF2; i5++) {
                    String strD2 = qVar2.d(i5);
                    if (!b(strD2) && c(strD2)) {
                        String strG2 = qVar2.g(i5);
                        arrayList.add(strD2);
                        arrayList.add(strG2.trim());
                    }
                }
                String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                q.a aVar5 = new q.a();
                Collections.addAll(aVar5.f2180a, strArr);
                aVar4.f2075f = aVar5;
                aVar4.f2080k = a0VarB.f2068k;
                aVar4.f2081l = a0VarB.f2069l;
                aVar4.b(d(a0Var));
                a0 a0VarD = d(a0VarB);
                if (a0VarD != null) {
                    aVar4.c("networkResponse", a0VarD);
                }
                aVar4.f2077h = a0VarD;
                aVar4.a();
                a0VarB.f2064g.close();
                throw null;
            }
            l2.c.f(a0Var.f2064g);
        }
        a0.a aVar6 = new a0.a(a0VarB);
        aVar6.b(d(a0Var));
        a0 a0VarD2 = d(a0VarB);
        if (a0VarD2 != null) {
            aVar6.c("networkResponse", a0VarD2);
        }
        aVar6.f2077h = a0VarD2;
        return aVar6.a();
    }
}
