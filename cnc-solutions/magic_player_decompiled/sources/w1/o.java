package w1;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import v1.s;

/* JADX INFO: loaded from: classes2.dex */
public final class o {
    public static final t1.y A;
    public static final t1.y B;
    public static final t1.x<t1.n> C;
    public static final t1.y D;
    public static final t1.y E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t1.y f3876a = new w1.p(Class.class, new t1.w(new k()));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t1.y f3877b = new w1.p(BitSet.class, new t1.w(new v()));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t1.x<Boolean> f3878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t1.y f3879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t1.y f3880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t1.y f3881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final t1.y f3882g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final t1.y f3883h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final t1.y f3884i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final t1.y f3885j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final t1.x<Number> f3886k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final t1.x<Number> f3887l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final t1.x<Number> f3888m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final t1.y f3889n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final t1.y f3890o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final t1.x<BigDecimal> f3891p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final t1.x<BigInteger> f3892q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final t1.y f3893r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final t1.y f3894s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final t1.y f3895t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final t1.y f3896u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final t1.y f3897v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final t1.y f3898w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final t1.y f3899x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final t1.y f3900y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final t1.y f3901z;

    public class a extends t1.x<AtomicIntegerArray> {
        @Override // t1.x
        public AtomicIntegerArray a(a2.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.B();
            while (aVar.J()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.O()));
                } catch (NumberFormatException e4) {
                    throw new t1.v(e4);
                }
            }
            aVar.F();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i4 = 0; i4 < size; i4++) {
                atomicIntegerArray.set(i4, ((Integer) arrayList.get(i4)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // t1.x
        public void b(a2.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            cVar.C();
            int length = atomicIntegerArray.length();
            for (int i4 = 0; i4 < length; i4++) {
                cVar.O(r6.get(i4));
            }
            cVar.F();
        }
    }

    public class a0 extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.O());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public class b extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return Long.valueOf(aVar.P());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public class b0 extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return Integer.valueOf(aVar.O());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public class c extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return Float.valueOf((float) aVar.N());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public class c0 extends t1.x<AtomicInteger> {
        @Override // t1.x
        public AtomicInteger a(a2.a aVar) {
            try {
                return new AtomicInteger(aVar.O());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, AtomicInteger atomicInteger) throws IOException {
            cVar.O(atomicInteger.get());
        }
    }

    public class d extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return Double.valueOf(aVar.N());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public class d0 extends t1.x<AtomicBoolean> {
        @Override // t1.x
        public AtomicBoolean a(a2.a aVar) {
            return new AtomicBoolean(aVar.M());
        }

        @Override // t1.x
        public void b(a2.c cVar, AtomicBoolean atomicBoolean) throws IOException {
            cVar.S(atomicBoolean.get());
        }
    }

    public class e extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            a2.b bVarW = aVar.W();
            int iOrdinal = bVarW.ordinal();
            if (iOrdinal == 5 || iOrdinal == 6) {
                return new v1.r(aVar.U());
            }
            if (iOrdinal == 8) {
                aVar.S();
                return null;
            }
            throw new t1.v("Expecting number, got: " + bVarW);
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    public static final class e0<T extends Enum<T>> extends t1.x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<String, T> f3902a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<T, String> f3903b = new HashMap();

        public e0(Class<T> cls) {
            try {
                for (T t3 : cls.getEnumConstants()) {
                    String strName = t3.name();
                    u1.b bVar = (u1.b) cls.getField(strName).getAnnotation(u1.b.class);
                    if (bVar != null) {
                        strName = bVar.value();
                        for (String str : bVar.alternate()) {
                            this.f3902a.put(str, t3);
                        }
                    }
                    this.f3902a.put(strName, t3);
                    this.f3903b.put(t3, strName);
                }
            } catch (NoSuchFieldException e4) {
                throw new AssertionError(e4);
            }
        }

        @Override // t1.x
        public Object a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return this.f3902a.get(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, Object obj) throws IOException {
            Enum r3 = (Enum) obj;
            cVar.R(r3 == null ? null : this.f3903b.get(r3));
        }
    }

    public class f extends t1.x<Character> {
        @Override // t1.x
        public Character a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            String strU = aVar.U();
            if (strU.length() == 1) {
                return Character.valueOf(strU.charAt(0));
            }
            throw new t1.v(androidx.appcompat.view.a.a("Expecting character, got: ", strU));
        }

        @Override // t1.x
        public void b(a2.c cVar, Character ch) throws IOException {
            Character ch2 = ch;
            cVar.R(ch2 == null ? null : String.valueOf(ch2));
        }
    }

    public class g extends t1.x<String> {
        @Override // t1.x
        public String a(a2.a aVar) throws IOException {
            a2.b bVarW = aVar.W();
            if (bVarW != a2.b.NULL) {
                return bVarW == a2.b.BOOLEAN ? Boolean.toString(aVar.M()) : aVar.U();
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, String str) throws IOException {
            cVar.R(str);
        }
    }

    public class h extends t1.x<BigDecimal> {
        @Override // t1.x
        public BigDecimal a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return new BigDecimal(aVar.U());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.Q(bigDecimal);
        }
    }

    public class i extends t1.x<BigInteger> {
        @Override // t1.x
        public BigInteger a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return new BigInteger(aVar.U());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, BigInteger bigInteger) throws IOException {
            cVar.Q(bigInteger);
        }
    }

    public class j extends t1.x<StringBuilder> {
        @Override // t1.x
        public StringBuilder a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return new StringBuilder(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, StringBuilder sb) throws IOException {
            StringBuilder sb2 = sb;
            cVar.R(sb2 == null ? null : sb2.toString());
        }
    }

    public class k extends t1.x<Class> {
        @Override // t1.x
        public Class a(a2.a aVar) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // t1.x
        public void b(a2.c cVar, Class cls) {
            StringBuilder sbA = android.support.v4.media.f.a("Attempted to serialize java.lang.Class: ");
            sbA.append(cls.getName());
            sbA.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(sbA.toString());
        }
    }

    public class l extends t1.x<StringBuffer> {
        @Override // t1.x
        public StringBuffer a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return new StringBuffer(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, StringBuffer stringBuffer) throws IOException {
            StringBuffer stringBuffer2 = stringBuffer;
            cVar.R(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    public class m extends t1.x<URL> {
        @Override // t1.x
        public URL a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            String strU = aVar.U();
            if ("null".equals(strU)) {
                return null;
            }
            return new URL(strU);
        }

        @Override // t1.x
        public void b(a2.c cVar, URL url) throws IOException {
            URL url2 = url;
            cVar.R(url2 == null ? null : url2.toExternalForm());
        }
    }

    public class n extends t1.x<URI> {
        @Override // t1.x
        public URI a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                String strU = aVar.U();
                if ("null".equals(strU)) {
                    return null;
                }
                return new URI(strU);
            } catch (URISyntaxException e4) {
                throw new t1.o(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, URI uri) throws IOException {
            URI uri2 = uri;
            cVar.R(uri2 == null ? null : uri2.toASCIIString());
        }
    }

    /* JADX INFO: renamed from: w1.o$o, reason: collision with other inner class name */
    public class C0052o extends t1.x<InetAddress> {
        @Override // t1.x
        public InetAddress a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return InetAddress.getByName(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, InetAddress inetAddress) throws IOException {
            InetAddress inetAddress2 = inetAddress;
            cVar.R(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    }

    public class p extends t1.x<UUID> {
        @Override // t1.x
        public UUID a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return UUID.fromString(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, UUID uuid) throws IOException {
            UUID uuid2 = uuid;
            cVar.R(uuid2 == null ? null : uuid2.toString());
        }
    }

    public class q extends t1.x<Currency> {
        @Override // t1.x
        public Currency a(a2.a aVar) {
            return Currency.getInstance(aVar.U());
        }

        @Override // t1.x
        public void b(a2.c cVar, Currency currency) throws IOException {
            cVar.R(currency.getCurrencyCode());
        }
    }

    public class r implements t1.y {

        public class a extends t1.x<Timestamp> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ t1.x f3904a;

            public a(r rVar, t1.x xVar) {
                this.f3904a = xVar;
            }

            @Override // t1.x
            public Timestamp a(a2.a aVar) {
                Date date = (Date) this.f3904a.a(aVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            @Override // t1.x
            public void b(a2.c cVar, Timestamp timestamp) {
                this.f3904a.b(cVar, timestamp);
            }
        }

        @Override // t1.y
        public <T> t1.x<T> a(t1.i iVar, z1.a<T> aVar) {
            if (aVar.f4196a != Timestamp.class) {
                return null;
            }
            Objects.requireNonNull(iVar);
            return new a(this, iVar.e(new z1.a<>(Date.class)));
        }
    }

    public class s extends t1.x<Calendar> {
        @Override // t1.x
        public Calendar a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            aVar.C();
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (aVar.W() != a2.b.END_OBJECT) {
                String strQ = aVar.Q();
                int iO = aVar.O();
                if ("year".equals(strQ)) {
                    i4 = iO;
                } else if ("month".equals(strQ)) {
                    i5 = iO;
                } else if ("dayOfMonth".equals(strQ)) {
                    i6 = iO;
                } else if ("hourOfDay".equals(strQ)) {
                    i7 = iO;
                } else if ("minute".equals(strQ)) {
                    i8 = iO;
                } else if ("second".equals(strQ)) {
                    i9 = iO;
                }
            }
            aVar.G();
            return new GregorianCalendar(i4, i5, i6, i7, i8, i9);
        }

        @Override // t1.x
        public void b(a2.c cVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                cVar.J();
                return;
            }
            cVar.D();
            cVar.H("year");
            cVar.O(r4.get(1));
            cVar.H("month");
            cVar.O(r4.get(2));
            cVar.H("dayOfMonth");
            cVar.O(r4.get(5));
            cVar.H("hourOfDay");
            cVar.O(r4.get(11));
            cVar.H("minute");
            cVar.O(r4.get(12));
            cVar.H("second");
            cVar.O(r4.get(13));
            cVar.G();
        }
    }

    public class t extends t1.x<Locale> {
        @Override // t1.x
        public Locale a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.U(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // t1.x
        public void b(a2.c cVar, Locale locale) throws IOException {
            Locale locale2 = locale;
            cVar.R(locale2 == null ? null : locale2.toString());
        }
    }

    public class u extends t1.x<t1.n> {
        @Override // t1.x
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public t1.n a(a2.a aVar) throws IOException {
            int iOrdinal = aVar.W().ordinal();
            if (iOrdinal == 0) {
                t1.k kVar = new t1.k();
                aVar.B();
                while (aVar.J()) {
                    kVar.f3544a.add(a(aVar));
                }
                aVar.F();
                return kVar;
            }
            if (iOrdinal == 2) {
                t1.q qVar = new t1.q();
                aVar.C();
                while (aVar.J()) {
                    qVar.f3546a.put(aVar.Q(), a(aVar));
                }
                aVar.G();
                return qVar;
            }
            if (iOrdinal == 5) {
                return new t1.s(aVar.U());
            }
            if (iOrdinal == 6) {
                return new t1.s(new v1.r(aVar.U()));
            }
            if (iOrdinal == 7) {
                return new t1.s(Boolean.valueOf(aVar.M()));
            }
            if (iOrdinal != 8) {
                throw new IllegalArgumentException();
            }
            aVar.S();
            return t1.p.f3545a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // t1.x
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(a2.c cVar, t1.n nVar) throws IOException {
            if (nVar == null || (nVar instanceof t1.p)) {
                cVar.J();
                return;
            }
            if (nVar instanceof t1.s) {
                t1.s sVarA = nVar.a();
                Object obj = sVarA.f3547a;
                if (obj instanceof Number) {
                    cVar.Q(sVarA.c());
                    return;
                } else if (obj instanceof Boolean) {
                    cVar.S(sVarA.b());
                    return;
                } else {
                    cVar.R(sVarA.d());
                    return;
                }
            }
            boolean z3 = nVar instanceof t1.k;
            if (z3) {
                cVar.C();
                if (!z3) {
                    throw new IllegalStateException("Not a JSON Array: " + nVar);
                }
                Iterator<t1.n> it = ((t1.k) nVar).iterator();
                while (it.hasNext()) {
                    b(cVar, it.next());
                }
                cVar.F();
                return;
            }
            boolean z4 = nVar instanceof t1.q;
            if (!z4) {
                StringBuilder sbA = android.support.v4.media.f.a("Couldn't write ");
                sbA.append(nVar.getClass());
                throw new IllegalArgumentException(sbA.toString());
            }
            cVar.D();
            if (!z4) {
                throw new IllegalStateException("Not a JSON Object: " + nVar);
            }
            v1.s sVar = v1.s.this;
            s.e eVar = sVar.f3692e.f3704d;
            int i4 = sVar.f3691d;
            while (true) {
                s.e eVar2 = sVar.f3692e;
                if (!(eVar != eVar2)) {
                    cVar.G();
                    return;
                }
                if (eVar == eVar2) {
                    throw new NoSuchElementException();
                }
                if (sVar.f3691d != i4) {
                    throw new ConcurrentModificationException();
                }
                s.e eVar3 = eVar.f3704d;
                cVar.H((String) eVar.f3706f);
                b(cVar, (t1.n) eVar.f3707g);
                eVar = eVar3;
            }
        }
    }

    public class v extends t1.x<BitSet> {
        /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
        @Override // t1.x
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.BitSet a(a2.a r6) throws java.io.IOException {
            /*
                r5 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r6.B()
                a2.b r1 = r6.W()
                r2 = 0
            Ld:
                a2.b r3 = a2.b.END_ARRAY
                if (r1 == r3) goto L66
                int r3 = r1.ordinal()
                r4 = 5
                if (r3 == r4) goto L41
                r4 = 6
                if (r3 == r4) goto L3a
                r4 = 7
                if (r3 != r4) goto L23
                boolean r1 = r6.M()
                goto L4e
            L23:
                t1.v r6 = new t1.v
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Invalid bitset value type: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L3a:
                int r1 = r6.O()
                if (r1 == 0) goto L4d
                goto L4b
            L41:
                java.lang.String r1 = r6.U()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L5a
                if (r1 == 0) goto L4d
            L4b:
                r1 = 1
                goto L4e
            L4d:
                r1 = 0
            L4e:
                if (r1 == 0) goto L53
                r0.set(r2)
            L53:
                int r2 = r2 + 1
                a2.b r1 = r6.W()
                goto Ld
            L5a:
                t1.v r6 = new t1.v
                java.lang.String r0 = "Error: Expecting: bitset number value (1, 0), Found: "
                java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
                r6.<init>(r0)
                throw r6
            L66:
                r6.F()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: w1.o.v.a(a2.a):java.lang.Object");
        }

        @Override // t1.x
        public void b(a2.c cVar, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            cVar.C();
            int length = bitSet2.length();
            for (int i4 = 0; i4 < length; i4++) {
                cVar.O(bitSet2.get(i4) ? 1L : 0L);
            }
            cVar.F();
        }
    }

    public class w implements t1.y {
        @Override // t1.y
        public <T> t1.x<T> a(t1.i iVar, z1.a<T> aVar) {
            Class<? super T> superclass = aVar.f4196a;
            if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                return null;
            }
            if (!superclass.isEnum()) {
                superclass = superclass.getSuperclass();
            }
            return new e0(superclass);
        }
    }

    public class x extends t1.x<Boolean> {
        @Override // t1.x
        public Boolean a(a2.a aVar) throws IOException {
            a2.b bVarW = aVar.W();
            if (bVarW != a2.b.NULL) {
                return bVarW == a2.b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.U())) : Boolean.valueOf(aVar.M());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, Boolean bool) throws IOException {
            cVar.P(bool);
        }
    }

    public class y extends t1.x<Boolean> {
        @Override // t1.x
        public Boolean a(a2.a aVar) throws IOException {
            if (aVar.W() != a2.b.NULL) {
                return Boolean.valueOf(aVar.U());
            }
            aVar.S();
            return null;
        }

        @Override // t1.x
        public void b(a2.c cVar, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            cVar.R(bool2 == null ? "null" : bool2.toString());
        }
    }

    public class z extends t1.x<Number> {
        @Override // t1.x
        public Number a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.O());
            } catch (NumberFormatException e4) {
                throw new t1.v(e4);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, Number number) throws IOException {
            cVar.Q(number);
        }
    }

    static {
        x xVar = new x();
        f3878c = new y();
        f3879d = new w1.q(Boolean.TYPE, Boolean.class, xVar);
        f3880e = new w1.q(Byte.TYPE, Byte.class, new z());
        f3881f = new w1.q(Short.TYPE, Short.class, new a0());
        f3882g = new w1.q(Integer.TYPE, Integer.class, new b0());
        f3883h = new w1.p(AtomicInteger.class, new t1.w(new c0()));
        f3884i = new w1.p(AtomicBoolean.class, new t1.w(new d0()));
        f3885j = new w1.p(AtomicIntegerArray.class, new t1.w(new a()));
        f3886k = new b();
        f3887l = new c();
        f3888m = new d();
        f3889n = new w1.p(Number.class, new e());
        f3890o = new w1.q(Character.TYPE, Character.class, new f());
        g gVar = new g();
        f3891p = new h();
        f3892q = new i();
        f3893r = new w1.p(String.class, gVar);
        f3894s = new w1.p(StringBuilder.class, new j());
        f3895t = new w1.p(StringBuffer.class, new l());
        f3896u = new w1.p(URL.class, new m());
        f3897v = new w1.p(URI.class, new n());
        f3898w = new w1.s(InetAddress.class, new C0052o());
        f3899x = new w1.p(UUID.class, new p());
        f3900y = new w1.p(Currency.class, new t1.w(new q()));
        f3901z = new r();
        A = new w1.r(Calendar.class, GregorianCalendar.class, new s());
        B = new w1.p(Locale.class, new t());
        u uVar = new u();
        C = uVar;
        D = new w1.s(t1.n.class, uVar);
        E = new w();
    }
}
