package k2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i f2144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i f2145f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final String[] f2148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final String[] f2149d;

    static {
        g gVar = g.f2130q;
        g gVar2 = g.f2131r;
        g gVar3 = g.f2132s;
        g gVar4 = g.f2133t;
        g gVar5 = g.f2134u;
        g gVar6 = g.f2124k;
        g gVar7 = g.f2126m;
        g gVar8 = g.f2125l;
        g gVar9 = g.f2127n;
        g gVar10 = g.f2129p;
        g gVar11 = g.f2128o;
        g[] gVarArr = {gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11};
        g[] gVarArr2 = {gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, g.f2122i, g.f2123j, g.f2120g, g.f2121h, g.f2118e, g.f2119f, g.f2117d};
        a aVar = new a(true);
        aVar.b(gVarArr);
        e0 e0Var = e0.TLS_1_3;
        e0 e0Var2 = e0.TLS_1_2;
        aVar.e(e0Var, e0Var2);
        aVar.c(true);
        new i(aVar);
        a aVar2 = new a(true);
        aVar2.b(gVarArr2);
        e0 e0Var3 = e0.TLS_1_0;
        aVar2.e(e0Var, e0Var2, e0.TLS_1_1, e0Var3);
        aVar2.c(true);
        f2144e = new i(aVar2);
        a aVar3 = new a(true);
        aVar3.b(gVarArr2);
        aVar3.e(e0Var3);
        aVar3.c(true);
        new i(aVar3);
        f2145f = new i(new a(false));
    }

    public i(a aVar) {
        this.f2146a = aVar.f2150a;
        this.f2148c = aVar.f2151b;
        this.f2149d = aVar.f2152c;
        this.f2147b = aVar.f2153d;
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f2146a) {
            return false;
        }
        String[] strArr = this.f2149d;
        if (strArr != null && !l2.c.u(l2.c.f2451o, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f2148c;
        return strArr2 == null || l2.c.u(g.f2115b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z3 = this.f2146a;
        if (z3 != iVar.f2146a) {
            return false;
        }
        return !z3 || (Arrays.equals(this.f2148c, iVar.f2148c) && Arrays.equals(this.f2149d, iVar.f2149d) && this.f2147b == iVar.f2147b);
    }

    public int hashCode() {
        if (this.f2146a) {
            return ((((527 + Arrays.hashCode(this.f2148c)) * 31) + Arrays.hashCode(this.f2149d)) * 31) + (!this.f2147b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        String string;
        List listUnmodifiableList;
        if (!this.f2146a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.f2148c;
        List listUnmodifiableList2 = null;
        String string2 = "[all enabled]";
        if (strArr != null) {
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str : strArr) {
                    arrayList.add(g.a(str));
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            } else {
                listUnmodifiableList = null;
            }
            string = listUnmodifiableList.toString();
        } else {
            string = "[all enabled]";
        }
        String[] strArr2 = this.f2149d;
        if (strArr2 != null) {
            if (strArr2 != null) {
                ArrayList arrayList2 = new ArrayList(strArr2.length);
                for (String str2 : strArr2) {
                    arrayList2.add(e0.a(str2));
                }
                listUnmodifiableList2 = Collections.unmodifiableList(arrayList2);
            }
            string2 = listUnmodifiableList2.toString();
        }
        return "ConnectionSpec(cipherSuites=" + string + ", tlsVersions=" + string2 + ", supportsTlsExtensions=" + this.f2147b + ")";
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public String[] f2151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public String[] f2152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2153d;

        public a(boolean z3) {
            this.f2150a = z3;
        }

        public a a(String... strArr) {
            if (!this.f2150a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f2151b = (String[]) strArr.clone();
            return this;
        }

        public a b(g... gVarArr) {
            if (!this.f2150a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[gVarArr.length];
            for (int i4 = 0; i4 < gVarArr.length; i4++) {
                strArr[i4] = gVarArr[i4].f2135a;
            }
            a(strArr);
            return this;
        }

        public a c(boolean z3) {
            if (!this.f2150a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f2153d = z3;
            return this;
        }

        public a d(String... strArr) {
            if (!this.f2150a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f2152c = (String[]) strArr.clone();
            return this;
        }

        public a e(e0... e0VarArr) {
            if (!this.f2150a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[e0VarArr.length];
            for (int i4 = 0; i4 < e0VarArr.length; i4++) {
                strArr[i4] = e0VarArr[i4].f2111a;
            }
            d(strArr);
            return this;
        }

        public a(i iVar) {
            this.f2150a = iVar.f2146a;
            this.f2151b = iVar.f2148c;
            this.f2152c = iVar.f2149d;
            this.f2153d = iVar.f2147b;
        }
    }
}
