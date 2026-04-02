package x2;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Hashtable;
import java.util.Objects;
import java.util.ServiceLoader;
import java.util.concurrent.ScheduledExecutorService;
import org.eclipse.jetty.http.HttpHeaderValues;

/* JADX INFO: loaded from: classes2.dex */
public class f implements b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3958k = f.class.getName();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f3959l = 1000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f3960m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f3961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public y2.a f3964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f3965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f3966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k f3967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f3968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3969i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ScheduledExecutorService f3970j;

    public class a implements h {
        public a(boolean z3) {
        }

        @Override // x2.g
        public void a(String str, n nVar) {
        }

        @Override // x2.g
        public void b(Throwable th) {
        }

        @Override // x2.g
        public void c(c cVar) {
        }

        @Override // x2.h
        public void d(boolean z3, String str) {
        }
    }

    public f(String str, String str2, j jVar) {
        t tVar = new t();
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", f3958k);
        this.f3961a = bVarA;
        this.f3969i = false;
        bVarA.i(str2);
        if (str2 == null) {
            throw new IllegalArgumentException("Null clientId");
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < str2.length() - 1) {
            char cCharAt = str2.charAt(i4);
            if (cCharAt >= 55296 && cCharAt <= 56319) {
                i4++;
            }
            i5++;
            i4++;
        }
        if (i5 > 65535) {
            throw new IllegalArgumentException("ClientId longer than 65535 characters");
        }
        c3.b bVar = y2.k.f4138a;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (scheme == null || scheme.isEmpty()) {
                throw new IllegalArgumentException("missing scheme in broker URI: " + str);
            }
            String lowerCase = scheme.toLowerCase();
            ServiceLoader<e3.a> serviceLoader = y2.k.f4139b;
            synchronized (serviceLoader) {
                for (e3.a aVar : serviceLoader) {
                    if (aVar.a().contains(lowerCase)) {
                        aVar.c(uri);
                        this.f3963c = str;
                        this.f3962b = str2;
                        this.f3965e = jVar;
                        if (jVar == null) {
                            this.f3965e = new d3.a();
                        }
                        d1.b bVar2 = new d1.b(2);
                        this.f3970j = null;
                        this.f3961a.d(f3958k, "MqttAsyncClient", "101", new Object[]{str2, str, jVar});
                        this.f3965e.i(str2, str);
                        this.f3964d = new y2.a(this, this.f3965e, tVar, this.f3970j, bVar2);
                        this.f3965e.close();
                        new Hashtable();
                        return;
                    }
                }
                throw new IllegalArgumentException("no NetworkModule installed for scheme \"" + lowerCase + "\" of URI \"" + str + "\"");
            }
        } catch (URISyntaxException e4) {
            throw new IllegalArgumentException("Can't parse string to URI \"" + str + "\"", e4);
        }
    }

    public void B(boolean z3) {
        c3.b bVar = this.f3961a;
        String str = f3958k;
        bVar.h(str, HttpHeaderValues.CLOSE, "113");
        this.f3964d.a(z3);
        this.f3961a.h(str, HttpHeaderValues.CLOSE, "114");
    }

    public e C(k kVar, Object obj, x2.a aVar) throws m {
        y2.j jVarB;
        if (this.f3964d.g()) {
            throw q0.a.e(32100);
        }
        if (this.f3964d.h()) {
            throw new m(32110);
        }
        if (this.f3964d.j()) {
            throw new m(32102);
        }
        if (this.f3964d.f()) {
            throw new m(32111);
        }
        k kVar2 = kVar == null ? new k() : kVar;
        this.f3967g = kVar2;
        this.f3968h = obj;
        c3.b bVar = this.f3961a;
        String str = f3958k;
        Object[] objArr = new Object[8];
        objArr[0] = Boolean.valueOf(kVar2.f3977d);
        objArr[1] = Integer.valueOf(kVar2.f3978e);
        objArr[2] = Integer.valueOf(kVar2.f3974a);
        objArr[3] = kVar2.f3975b;
        objArr[4] = kVar2.f3976c == null ? "[null]" : "[notnull]";
        objArr[5] = "[null]";
        objArr[6] = obj;
        objArr[7] = aVar;
        bVar.d(str, "connect", "103", objArr);
        y2.a aVar2 = this.f3964d;
        String str2 = this.f3963c;
        this.f3961a.d(str, "createNetworkModules", "116", new Object[]{str2});
        String[] strArr = {str2};
        y2.j[] jVarArr = new y2.j[1];
        int i4 = 0;
        for (int i5 = 1; i4 < i5; i5 = 1) {
            String str3 = strArr[i4];
            c3.b bVar2 = this.f3961a;
            String str4 = f3958k;
            Object[] objArr2 = new Object[i5];
            objArr2[0] = str3;
            bVar2.d(str4, "createNetworkModule", "115", objArr2);
            String str5 = this.f3962b;
            c3.b bVar3 = y2.k.f4138a;
            try {
                URI uri = new URI(str3);
                y2.k.a(uri);
                String lowerCase = uri.getScheme().toLowerCase();
                ServiceLoader<e3.a> serviceLoader = y2.k.f4139b;
                synchronized (serviceLoader) {
                    for (e3.a aVar3 : serviceLoader) {
                        if (aVar3.a().contains(lowerCase)) {
                            jVarB = aVar3.b(uri, kVar2, str5);
                        }
                    }
                    throw new IllegalArgumentException(uri.toString());
                }
                jVarArr[i4] = jVarB;
                i4++;
            } catch (URISyntaxException e4) {
                throw new IllegalArgumentException(str3, e4);
            }
        }
        this.f3961a.h(f3958k, "createNetworkModules", "108");
        Objects.requireNonNull(aVar2);
        aVar2.f4017e = (y2.j[]) jVarArr.clone();
        this.f3964d.f4020h.f4070c = new a(false);
        s sVar = new s(this.f3962b);
        y2.g gVar = new y2.g(this, this.f3965e, this.f3964d, kVar2, sVar, obj, aVar, this.f3969i);
        y2.q qVar = sVar.f3986a;
        qVar.f4166l = gVar;
        qVar.f4167m = this;
        g gVar2 = this.f3966f;
        if (gVar2 instanceof h) {
            gVar.f4129i = (h) gVar2;
        }
        this.f3964d.f4016d = 0;
        gVar.c();
        return sVar;
    }

    public e D(Object obj, x2.a aVar) throws m {
        c3.b bVar = this.f3961a;
        String str = f3958k;
        bVar.d(str, "disconnect", "104", new Object[]{30000L, null, null});
        s sVar = new s(this.f3962b);
        y2.q qVar = sVar.f3986a;
        qVar.f4166l = null;
        qVar.f4167m = null;
        try {
            this.f3964d.c(new b3.e(), 30000L, sVar);
            this.f3961a.h(str, "disconnect", "108");
            return sVar;
        } catch (m e4) {
            this.f3961a.b(f3958k, "disconnect", "105", null, e4);
            throw e4;
        }
    }

    public final e E(String[] strArr, int[] iArr, Object obj, x2.a aVar) throws m {
        if (this.f3961a.e(5)) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (i4 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append("topic=");
                stringBuffer.append(strArr[i4]);
                stringBuffer.append(" qos=");
                stringBuffer.append(iArr[i4]);
            }
            this.f3961a.d(f3958k, "subscribe", "106", new Object[]{stringBuffer.toString(), obj, aVar});
        }
        s sVar = new s(this.f3962b);
        y2.q qVar = sVar.f3986a;
        qVar.f4166l = aVar;
        qVar.f4167m = obj;
        qVar.f4163i = (String[]) strArr.clone();
        this.f3964d.k(new b3.r(strArr, iArr), sVar);
        this.f3961a.h(f3958k, "subscribe", "109");
        return sVar;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        B(false);
    }

    @Override // x2.b
    public String k() {
        return this.f3962b;
    }
}
