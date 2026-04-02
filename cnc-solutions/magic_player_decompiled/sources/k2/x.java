package k2;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;
import k2.q;
import k2.r;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.util.URIUtil;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f2269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f2271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final z f2272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map<Class<?>, Object> f2273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public volatile c f2274f;

    public x(a aVar) {
        this.f2269a = aVar.f2275a;
        this.f2270b = aVar.f2276b;
        this.f2271c = new q(aVar.f2277c);
        this.f2272d = aVar.f2278d;
        Map<Class<?>, Object> map = aVar.f2279e;
        byte[] bArr = l2.c.f2437a;
        this.f2273e = map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public c a() {
        c cVar = this.f2274f;
        if (cVar != null) {
            return cVar;
        }
        c cVarA = c.a(this.f2271c);
        this.f2274f = cVarA;
        return cVarA;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Request{method=");
        sbA.append(this.f2270b);
        sbA.append(", url=");
        sbA.append(this.f2269a);
        sbA.append(", tags=");
        sbA.append(this.f2273e);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public r f2275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public q.a f2277c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public z f2278d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Map<Class<?>, Object> f2279e;

        public a() {
            this.f2279e = Collections.emptyMap();
            this.f2276b = HttpMethods.GET;
            this.f2277c = new q.a();
        }

        public a a(String str, String str2) {
            q.a aVar = this.f2277c;
            Objects.requireNonNull(aVar);
            q.a(str);
            q.b(str2, str);
            aVar.f2180a.add(str);
            aVar.f2180a.add(str2.trim());
            return this;
        }

        public x b() {
            if (this.f2275a != null) {
                return new x(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a c(String str, String str2) {
            q.a aVar = this.f2277c;
            Objects.requireNonNull(aVar);
            q.a(str);
            q.b(str2, str);
            aVar.b(str);
            aVar.f2180a.add(str);
            aVar.f2180a.add(str2.trim());
            return this;
        }

        public a d(String str, @Nullable z zVar) {
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (zVar != null && !q0.a.u(str)) {
                throw new IllegalArgumentException(android.support.v4.media.h.a("method ", str, " must not have a request body."));
            }
            if (zVar == null) {
                if (str.equals(HttpMethods.POST) || str.equals(HttpMethods.PUT) || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                    throw new IllegalArgumentException(android.support.v4.media.h.a("method ", str, " must have a request body."));
                }
            }
            this.f2276b = str;
            this.f2278d = zVar;
            return this;
        }

        public a e(String str) {
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                StringBuilder sbA = android.support.v4.media.f.a(URIUtil.HTTP_COLON);
                sbA.append(str.substring(3));
                str = sbA.toString();
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                StringBuilder sbA2 = android.support.v4.media.f.a(URIUtil.HTTPS_COLON);
                sbA2.append(str.substring(4));
                str = sbA2.toString();
            }
            r.a aVar = new r.a();
            aVar.c(null, str);
            f(aVar.a());
            return this;
        }

        public a f(r rVar) {
            Objects.requireNonNull(rVar, "url == null");
            this.f2275a = rVar;
            return this;
        }

        public a(x xVar) {
            Map<Class<?>, Object> linkedHashMap;
            this.f2279e = Collections.emptyMap();
            this.f2275a = xVar.f2269a;
            this.f2276b = xVar.f2270b;
            this.f2278d = xVar.f2272d;
            if (xVar.f2273e.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(xVar.f2273e);
            }
            this.f2279e = linkedHashMap;
            this.f2277c = xVar.f2271c.e();
        }
    }
}
