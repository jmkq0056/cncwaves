package s;

import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.BulletSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public class g {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final v2.g f3392a = new v2.g();
    }

    public static class b implements ContentHandler {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final float[] f3393g = {1.5f, 1.4f, 1.3f, 1.2f, 1.1f, 1.0f};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Map<String, Integer> f3394h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public XMLReader f3396b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SpannableStringBuilder f3397c = new SpannableStringBuilder();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f3398d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3399e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3400f;

        public static class a extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Layout.Alignment f3401b;

            public a(int i4, Layout.Alignment alignment) {
                super(i4);
                this.f3401b = alignment;
            }
        }

        /* JADX INFO: renamed from: s.g$b$b, reason: collision with other inner class name */
        public static class C0042b extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3402b;

            public C0042b(int i4, int i5) {
                super(i4);
                this.f3402b = i5;
            }
        }

        public static class c extends l {
            public c(int i4) {
                super(i4);
            }
        }

        public static class d extends l {
            public d(int i4) {
                super(i4);
            }
        }

        public static class e extends l {
            public e(int i4) {
                super(i4);
            }
        }

        public static class f extends l {
            public f(int i4) {
                super(i4);
            }
        }

        /* JADX INFO: renamed from: s.g$b$g, reason: collision with other inner class name */
        public static class C0043g extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f3403b;

            public C0043g(int i4, String str) {
                super(i4);
                this.f3403b = str;
            }
        }

        public static class h extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3404b;

            public h(int i4, int i5) {
                super(i4);
                this.f3404b = i5;
            }
        }

        public static class i extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3405b;

            public i(int i4, int i5) {
                super(i4);
                this.f3405b = i5;
            }
        }

        public static class j extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3406b;

            public j(int i4, int i5) {
                super(i4);
                this.f3406b = i5;
            }
        }

        public static class k extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f3407b;

            public k(int i4, String str) {
                super(i4);
                this.f3407b = str;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3408a;

            public l(int i4) {
                this.f3408a = i4;
            }
        }

        public static class m extends l {
            public m(int i4) {
                super(i4);
            }
        }

        public static class n extends l {
            public n(int i4) {
                super(i4);
            }
        }

        public static class o extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3409b;

            public o(int i4, int i5) {
                super(i4);
                this.f3409b = i5;
            }
        }

        public static class p extends l {
            public p(int i4) {
                super(i4);
            }
        }

        public static class q extends l {
            public q(int i4) {
                super(i4);
            }
        }

        public static class r extends l {
            public r(int i4) {
                super(i4);
            }
        }

        public static class s extends l {
            public s(int i4) {
                super(i4);
            }
        }

        public static class t extends l {
            public t(int i4) {
                super(i4);
            }
        }

        static {
            HashMap map = new HashMap();
            f3394h = map;
            map.put("darkgray", -5658199);
            map.put("gray", -8355712);
            map.put("lightgray", -2894893);
            map.put("darkgrey", -5658199);
            map.put("grey", -8355712);
            map.put("lightgrey", -2894893);
            map.put("green", -16744448);
        }

        public b(String str, c cVar, v2.i iVar, int i4) {
            this.f3395a = str;
            this.f3398d = cVar;
            this.f3396b = iVar;
            this.f3399e = i4;
        }

        public static void a(Editable editable, int i4) {
            int length = editable.length();
            if (length == 0) {
                return;
            }
            int i5 = 0;
            for (int i6 = length - 1; i6 >= 0 && editable.charAt(i6) == '\n'; i6--) {
                i5++;
            }
            while (i5 < i4) {
                editable.append("\n");
                i5++;
            }
        }

        public static Layout.Alignment h(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.equalsIgnoreCase("start") || str.equalsIgnoreCase("left")) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            if (str.equalsIgnoreCase("center")) {
                return Layout.Alignment.ALIGN_CENTER;
            }
            if (str.equalsIgnoreCase("end") || str.equalsIgnoreCase("right")) {
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return null;
        }

        public static void i(Spannable spannable, Object obj, Object... objArr) {
            int spanStart = spannable.getSpanStart(obj);
            spannable.removeSpan(obj);
            int length = spannable.length();
            if (spanStart != length) {
                for (Object obj2 : objArr) {
                    spannable.setSpan(obj2, spanStart, length, 33);
                }
            }
        }

        public final void b(Editable editable, Class cls, Object obj) {
            editable.length();
            l lVarF = f(editable, cls);
            if (lVarF != null) {
                i(editable, lVarF, obj);
            }
        }

        public final void c(Editable editable) {
            o oVar = (o) f(editable, o.class);
            if (oVar != null) {
                a(editable, oVar.f3409b);
                editable.removeSpan(oVar);
            }
            a aVar = (a) f(editable, a.class);
            if (aVar != null) {
                i(editable, aVar, new AlignmentSpan.Standard(aVar.f3401b));
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i4, int i5) {
            char cCharAt;
            StringBuilder sb = new StringBuilder();
            for (int i6 = 0; i6 < i5; i6++) {
                char c4 = cArr[i6 + i4];
                if (c4 == ' ' || c4 == '\n') {
                    int length = sb.length();
                    if (length == 0) {
                        int length2 = this.f3397c.length();
                        cCharAt = length2 == 0 ? '\n' : this.f3397c.charAt(length2 - 1);
                    } else {
                        cCharAt = sb.charAt(length - 1);
                    }
                    if (cCharAt != ' ' && cCharAt != '\n') {
                        sb.append(' ');
                    }
                } else {
                    sb.append(c4);
                }
            }
            this.f3397c.append((CharSequence) sb);
        }

        public final void d(Editable editable) {
            C0043g c0043g = (C0043g) f(editable, C0043g.class);
            if (c0043g != null) {
                i(editable, c0043g, new TypefaceSpan(c0043g.f3403b));
            }
            h hVar = (h) f(editable, h.class);
            if (hVar != null) {
                i(editable, hVar, new AbsoluteSizeSpan(hVar.f3404b));
            }
            e eVar = (e) f(editable, e.class);
            if (eVar != null) {
                i(editable, eVar, new StyleSpan(1));
            }
            m mVar = (m) f(editable, m.class);
            if (mVar != null) {
                i(editable, mVar, new StyleSpan(2));
            }
            t tVar = (t) f(editable, t.class);
            if (tVar != null) {
                i(editable, tVar, new UnderlineSpan());
            }
            q qVar = (q) f(editable, q.class);
            if (qVar != null) {
                i(editable, qVar, new StrikethroughSpan());
            }
            a aVar = (a) f(editable, a.class);
            if (aVar != null) {
                i(editable, aVar, new AlignmentSpan.Standard(aVar.f3401b));
            }
            i iVar = (i) f(editable, i.class);
            if (iVar != null) {
                i(editable, iVar, new ForegroundColorSpan(iVar.f3405b));
            }
            C0042b c0042b = (C0042b) f(editable, C0042b.class);
            if (c0042b != null) {
                i(editable, c0042b, new BackgroundColorSpan(c0042b.f3402b));
            }
        }

        public final Integer e(String str) {
            if ((this.f3399e & 256) == 256) {
                Integer num = (Integer) ((HashMap) f3394h).get(str.toLowerCase(Locale.US));
                if (num != null) {
                    return num;
                }
            }
            try {
                int i4 = 0;
                if (str.startsWith("#")) {
                    i4 = Integer.parseInt(str.replace("#", ""), 16) | ViewCompat.MEASURED_STATE_MASK;
                } else if (str.startsWith("rgba")) {
                    String[] strArrSplit = str.replaceAll("[rgba()]", "").split("[,]");
                    if (strArrSplit.length == 4) {
                        int i5 = Integer.parseInt(strArrSplit[0]);
                        int i6 = Integer.parseInt(strArrSplit[1]);
                        i4 = (Integer.parseInt(strArrSplit[3]) << 24) | (i5 << 16) | (i6 << 8) | Integer.parseInt(strArrSplit[2]);
                    }
                } else if (str.startsWith("rgb")) {
                    String[] strArrSplit2 = str.replaceAll("[rgb()]", "").split("[,]");
                    if (strArrSplit2.length == 3) {
                        int i7 = Integer.parseInt(strArrSplit2[0]);
                        int i8 = Integer.parseInt(strArrSplit2[1]);
                        i4 = (i7 << 16) | ViewCompat.MEASURED_STATE_MASK | (i8 << 8) | Integer.parseInt(strArrSplit2[2]);
                    }
                }
                return Integer.valueOf(i4);
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() {
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            this.f3400f--;
            if (str2.equalsIgnoreCase("br")) {
                this.f3397c.append('\n');
                return;
            }
            if (str2.equalsIgnoreCase("p")) {
                d(this.f3397c);
                c(this.f3397c);
                return;
            }
            if (str2.equalsIgnoreCase("ul")) {
                c(this.f3397c);
                return;
            }
            if (str2.equalsIgnoreCase("li")) {
                Editable editable = this.f3397c;
                d(editable);
                c(editable);
                b(editable, f.class, new BulletSpan());
                return;
            }
            if (str2.equalsIgnoreCase("div")) {
                c(this.f3397c);
                return;
            }
            if (str2.equalsIgnoreCase("span")) {
                d(this.f3397c);
                return;
            }
            if (str2.equalsIgnoreCase("strong")) {
                b(this.f3397c, e.class, new StyleSpan(1));
                return;
            }
            if (str2.equalsIgnoreCase("b")) {
                b(this.f3397c, e.class, new StyleSpan(1));
                return;
            }
            if (str2.equalsIgnoreCase("em")) {
                b(this.f3397c, m.class, new StyleSpan(2));
                return;
            }
            if (str2.equalsIgnoreCase("cite")) {
                b(this.f3397c, m.class, new StyleSpan(2));
                return;
            }
            if (str2.equalsIgnoreCase("dfn")) {
                b(this.f3397c, m.class, new StyleSpan(2));
                return;
            }
            if (str2.equalsIgnoreCase("i")) {
                b(this.f3397c, m.class, new StyleSpan(2));
                return;
            }
            if (str2.equalsIgnoreCase("big")) {
                b(this.f3397c, c.class, new RelativeSizeSpan(1.25f));
                return;
            }
            if (str2.equalsIgnoreCase("small")) {
                b(this.f3397c, p.class, new RelativeSizeSpan(0.8f));
                return;
            }
            if (str2.equalsIgnoreCase("font")) {
                SpannableStringBuilder spannableStringBuilder = this.f3397c;
                C0043g c0043g = (C0043g) f(spannableStringBuilder, C0043g.class);
                if (c0043g != null) {
                    i(spannableStringBuilder, c0043g, new TypefaceSpan(c0043g.f3403b));
                }
                i iVar = (i) f(spannableStringBuilder, i.class);
                if (iVar != null) {
                    i(spannableStringBuilder, iVar, new ForegroundColorSpan(iVar.f3405b));
                    return;
                }
                return;
            }
            if (str2.equalsIgnoreCase("blockquote")) {
                Editable editable2 = this.f3397c;
                c(editable2);
                b(editable2, d.class, new QuoteSpan());
                return;
            }
            if (str2.equalsIgnoreCase("tt")) {
                b(this.f3397c, n.class, new TypefaceSpan("monospace"));
                return;
            }
            if (str2.equalsIgnoreCase("a")) {
                SpannableStringBuilder spannableStringBuilder2 = this.f3397c;
                k kVar = (k) f(spannableStringBuilder2, k.class);
                if (kVar == null || kVar.f3407b == null) {
                    return;
                }
                i(spannableStringBuilder2, kVar, new URLSpan(kVar.f3407b));
                return;
            }
            if (str2.equalsIgnoreCase("u")) {
                b(this.f3397c, t.class, new UnderlineSpan());
                return;
            }
            if (str2.equalsIgnoreCase("del")) {
                b(this.f3397c, q.class, new StrikethroughSpan());
                return;
            }
            if (str2.equalsIgnoreCase("s")) {
                b(this.f3397c, q.class, new StrikethroughSpan());
                return;
            }
            if (str2.equalsIgnoreCase("strike")) {
                b(this.f3397c, q.class, new StrikethroughSpan());
                return;
            }
            if (str2.equalsIgnoreCase("sup")) {
                b(this.f3397c, s.class, new SuperscriptSpan());
                return;
            }
            if (str2.equalsIgnoreCase("sub")) {
                b(this.f3397c, r.class, new SubscriptSpan());
                return;
            }
            if (str2.length() != 2 || Character.toLowerCase(str2.charAt(0)) != 'h' || str2.charAt(1) < '1' || str2.charAt(1) > '6') {
                c cVar = this.f3398d;
                if (cVar != null) {
                    cVar.a(false, str2, this.f3397c, this.f3396b);
                    return;
                }
                return;
            }
            Editable editable3 = this.f3397c;
            j jVar = (j) f(editable3, j.class);
            if (jVar != null) {
                i(editable3, jVar, new RelativeSizeSpan(f3393g[jVar.f3406b]), new StyleSpan(1));
            }
            c(editable3);
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) {
        }

        public final <T extends l> T f(Spanned spanned, Class<T> cls) {
            T t3;
            l[] lVarArr = (l[]) spanned.getSpans(0, spanned.length(), cls);
            int length = lVarArr.length;
            do {
                length--;
                if (length < 0) {
                    return null;
                }
                t3 = (T) lVarArr[length];
            } while (t3.f3408a != this.f3400f);
            return t3;
        }

        public final int g(int i4) {
            return (i4 & this.f3399e) != 0 ? 1 : 2;
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i4, int i5) {
        }

        public final void j(Editable editable, Attributes attributes, int i4) {
            String value;
            if (i4 > 0) {
                a(editable, i4);
                o oVar = new o(this.f3400f, i4);
                int length = editable.length();
                editable.setSpan(oVar, length, length, 17);
            }
            String value2 = attributes.getValue("", "style");
            if (value2 != null) {
                String[] strArrSplit = value2.split("[;]");
                int length2 = strArrSplit.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length2) {
                        value = null;
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i5].split("[:]");
                    if (strArrSplit2.length == 2 && "text-align".equals(strArrSplit2[0].trim())) {
                        value = strArrSplit2[1].trim();
                        break;
                    }
                    i5++;
                }
            } else {
                value = attributes.getValue("", "align");
            }
            Layout.Alignment alignmentH = h(value);
            if (alignmentH != null) {
                a aVar = new a(this.f3400f, alignmentH);
                int length3 = editable.length();
                editable.setSpan(aVar, length3, length3, 17);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:106:0x01b8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x018b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void k(android.text.Editable r10, org.xml.sax.Attributes r11) {
            /*
                Method dump skipped, instruction units count: 500
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: s.g.b.k(android.text.Editable, org.xml.sax.Attributes):void");
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() {
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            Integer numE;
            if (!str2.equalsIgnoreCase("br")) {
                if (str2.equalsIgnoreCase("p")) {
                    j(this.f3397c, attributes, g(1));
                    k(this.f3397c, attributes);
                } else if (str2.equalsIgnoreCase("ul")) {
                    j(this.f3397c, attributes, g(8));
                } else if (str2.equalsIgnoreCase("li")) {
                    SpannableStringBuilder spannableStringBuilder = this.f3397c;
                    j(spannableStringBuilder, attributes, g(4));
                    f fVar = new f(this.f3400f);
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.setSpan(fVar, length, length, 17);
                    k(spannableStringBuilder, attributes);
                } else if (str2.equalsIgnoreCase("div")) {
                    j(this.f3397c, attributes, 1);
                } else if (str2.equalsIgnoreCase("span")) {
                    k(this.f3397c, attributes);
                } else if (str2.equalsIgnoreCase("strong")) {
                    SpannableStringBuilder spannableStringBuilder2 = this.f3397c;
                    e eVar = new e(this.f3400f);
                    int length2 = spannableStringBuilder2.length();
                    spannableStringBuilder2.setSpan(eVar, length2, length2, 17);
                } else if (str2.equalsIgnoreCase("b")) {
                    SpannableStringBuilder spannableStringBuilder3 = this.f3397c;
                    e eVar2 = new e(this.f3400f);
                    int length3 = spannableStringBuilder3.length();
                    spannableStringBuilder3.setSpan(eVar2, length3, length3, 17);
                } else if (str2.equalsIgnoreCase("em")) {
                    SpannableStringBuilder spannableStringBuilder4 = this.f3397c;
                    m mVar = new m(this.f3400f);
                    int length4 = spannableStringBuilder4.length();
                    spannableStringBuilder4.setSpan(mVar, length4, length4, 17);
                } else if (str2.equalsIgnoreCase("cite")) {
                    SpannableStringBuilder spannableStringBuilder5 = this.f3397c;
                    m mVar2 = new m(this.f3400f);
                    int length5 = spannableStringBuilder5.length();
                    spannableStringBuilder5.setSpan(mVar2, length5, length5, 17);
                } else if (str2.equalsIgnoreCase("dfn")) {
                    SpannableStringBuilder spannableStringBuilder6 = this.f3397c;
                    m mVar3 = new m(this.f3400f);
                    int length6 = spannableStringBuilder6.length();
                    spannableStringBuilder6.setSpan(mVar3, length6, length6, 17);
                } else if (str2.equalsIgnoreCase("i")) {
                    SpannableStringBuilder spannableStringBuilder7 = this.f3397c;
                    m mVar4 = new m(this.f3400f);
                    int length7 = spannableStringBuilder7.length();
                    spannableStringBuilder7.setSpan(mVar4, length7, length7, 17);
                } else if (str2.equalsIgnoreCase("big")) {
                    SpannableStringBuilder spannableStringBuilder8 = this.f3397c;
                    c cVar = new c(this.f3400f);
                    int length8 = spannableStringBuilder8.length();
                    spannableStringBuilder8.setSpan(cVar, length8, length8, 17);
                } else if (str2.equalsIgnoreCase("small")) {
                    SpannableStringBuilder spannableStringBuilder9 = this.f3397c;
                    p pVar = new p(this.f3400f);
                    int length9 = spannableStringBuilder9.length();
                    spannableStringBuilder9.setSpan(pVar, length9, length9, 17);
                } else if (str2.equalsIgnoreCase("font")) {
                    SpannableStringBuilder spannableStringBuilder10 = this.f3397c;
                    String value = attributes.getValue("", "color");
                    String value2 = attributes.getValue("", "face");
                    if (!TextUtils.isEmpty(value) && (numE = e(value)) != null) {
                        i iVar = new i(this.f3400f, numE.intValue() | ViewCompat.MEASURED_STATE_MASK);
                        int length10 = spannableStringBuilder10.length();
                        spannableStringBuilder10.setSpan(iVar, length10, length10, 17);
                    }
                    if (!TextUtils.isEmpty(value2)) {
                        C0043g c0043g = new C0043g(this.f3400f, value2);
                        int length11 = spannableStringBuilder10.length();
                        spannableStringBuilder10.setSpan(c0043g, length11, length11, 17);
                    }
                } else if (str2.equalsIgnoreCase("blockquote")) {
                    SpannableStringBuilder spannableStringBuilder11 = this.f3397c;
                    j(spannableStringBuilder11, attributes, g(32));
                    d dVar = new d(this.f3400f);
                    int length12 = spannableStringBuilder11.length();
                    spannableStringBuilder11.setSpan(dVar, length12, length12, 17);
                } else if (str2.equalsIgnoreCase("tt")) {
                    SpannableStringBuilder spannableStringBuilder12 = this.f3397c;
                    n nVar = new n(this.f3400f);
                    int length13 = spannableStringBuilder12.length();
                    spannableStringBuilder12.setSpan(nVar, length13, length13, 17);
                } else if (str2.equalsIgnoreCase("a")) {
                    SpannableStringBuilder spannableStringBuilder13 = this.f3397c;
                    k kVar = new k(this.f3400f, attributes.getValue("", "href"));
                    int length14 = spannableStringBuilder13.length();
                    spannableStringBuilder13.setSpan(kVar, length14, length14, 17);
                } else if (str2.equalsIgnoreCase("u")) {
                    SpannableStringBuilder spannableStringBuilder14 = this.f3397c;
                    t tVar = new t(this.f3400f);
                    int length15 = spannableStringBuilder14.length();
                    spannableStringBuilder14.setSpan(tVar, length15, length15, 17);
                } else if (str2.equalsIgnoreCase("del")) {
                    SpannableStringBuilder spannableStringBuilder15 = this.f3397c;
                    q qVar = new q(this.f3400f);
                    int length16 = spannableStringBuilder15.length();
                    spannableStringBuilder15.setSpan(qVar, length16, length16, 17);
                } else if (str2.equalsIgnoreCase("s")) {
                    SpannableStringBuilder spannableStringBuilder16 = this.f3397c;
                    q qVar2 = new q(this.f3400f);
                    int length17 = spannableStringBuilder16.length();
                    spannableStringBuilder16.setSpan(qVar2, length17, length17, 17);
                } else if (str2.equalsIgnoreCase("strike")) {
                    SpannableStringBuilder spannableStringBuilder17 = this.f3397c;
                    q qVar3 = new q(this.f3400f);
                    int length18 = spannableStringBuilder17.length();
                    spannableStringBuilder17.setSpan(qVar3, length18, length18, 17);
                } else if (str2.equalsIgnoreCase("sup")) {
                    SpannableStringBuilder spannableStringBuilder18 = this.f3397c;
                    s sVar = new s(this.f3400f);
                    int length19 = spannableStringBuilder18.length();
                    spannableStringBuilder18.setSpan(sVar, length19, length19, 17);
                } else if (str2.equalsIgnoreCase("sub")) {
                    SpannableStringBuilder spannableStringBuilder19 = this.f3397c;
                    r rVar = new r(this.f3400f);
                    int length20 = spannableStringBuilder19.length();
                    spannableStringBuilder19.setSpan(rVar, length20, length20, 17);
                } else if (str2.length() != 2 || Character.toLowerCase(str2.charAt(0)) != 'h' || str2.charAt(1) < '1' || str2.charAt(1) > '6') {
                    c cVar2 = this.f3398d;
                    if (cVar2 != null) {
                        cVar2.a(true, str2, this.f3397c, this.f3396b);
                    }
                } else {
                    SpannableStringBuilder spannableStringBuilder20 = this.f3397c;
                    int iCharAt = str2.charAt(1) - '1';
                    j(spannableStringBuilder20, attributes, g(2));
                    j jVar = new j(this.f3400f, iCharAt);
                    int length21 = spannableStringBuilder20.length();
                    spannableStringBuilder20.setSpan(jVar, length21, length21, 17);
                }
            }
            this.f3400f++;
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) {
        }
    }

    public interface c {
        void a(boolean z3, String str, Editable editable, XMLReader xMLReader);
    }

    public static Spanned a(String str) {
        String simpleName;
        v2.i iVar = new v2.i();
        try {
            iVar.setProperty("http://www.ccil.org/~cowan/tagsoup/properties/schema", a.f3392a);
            b bVar = new b(str, null, iVar, 256);
            bVar.f3396b.setContentHandler(bVar);
            try {
                bVar.f3396b.parse(new InputSource(new StringReader(bVar.f3395a)));
                SpannableStringBuilder spannableStringBuilder = bVar.f3397c;
                int length = spannableStringBuilder.length();
                while (true) {
                    length--;
                    if (length < 0 || spannableStringBuilder.charAt(length) != '\n') {
                        break;
                    }
                    spannableStringBuilder.delete(length, length + 1);
                }
                SpannableStringBuilder spannableStringBuilder2 = bVar.f3397c;
                Object[] spans = spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), Object.class);
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < spans.length; i4++) {
                    if (!arrayList.contains(Integer.valueOf(i4))) {
                        Object obj = spans[i4];
                        int spanStart = spannableStringBuilder2.getSpanStart(obj);
                        int spanEnd = spannableStringBuilder2.getSpanEnd(obj);
                        for (int i5 = i4 + 1; i5 < spans.length; i5++) {
                            if (!arrayList.contains(Integer.valueOf(i5))) {
                                Object obj2 = spans[i5];
                                int spanStart2 = spannableStringBuilder2.getSpanStart(obj2);
                                int spanEnd2 = spannableStringBuilder2.getSpanEnd(obj2);
                                if (obj.getClass() == obj2.getClass() && spanStart <= spanStart2 && spanEnd >= spanEnd2) {
                                    if (!(obj2 instanceof StyleSpan)) {
                                        arrayList.add(Integer.valueOf(i5));
                                    } else if (((StyleSpan) obj2).getStyle() == ((StyleSpan) obj).getStyle()) {
                                        arrayList.add(Integer.valueOf(i5));
                                    }
                                }
                            }
                        }
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    spannableStringBuilder2.removeSpan(spans[((Integer) it.next()).intValue()]);
                }
                SpannableStringBuilder spannableStringBuilder3 = bVar.f3397c;
                Object[] spans2 = spannableStringBuilder3.getSpans(0, spannableStringBuilder3.length(), Object.class);
                for (int length2 = spans2.length - 1; length2 >= 0; length2--) {
                    Object obj3 = spans2[length2];
                    if (obj3 instanceof b.l) {
                        Log.d("HtmlConverter", "reverseSpan: unexpected span: " + obj3);
                        spannableStringBuilder3.removeSpan(obj3);
                    } else {
                        int spanStart3 = spannableStringBuilder3.getSpanStart(obj3);
                        int spanEnd3 = spannableStringBuilder3.getSpanEnd(obj3);
                        int spanFlags = spannableStringBuilder3.getSpanFlags(obj3);
                        spannableStringBuilder3.removeSpan(obj3);
                        spannableStringBuilder3.setSpan(obj3, spanStart3, spanEnd3, spanFlags);
                        StringBuilder sb = new StringBuilder();
                        sb.append("(");
                        sb.append(spanStart3);
                        sb.append(", ");
                        sb.append(spanEnd3);
                        sb.append(") -> ");
                        if (obj3 instanceof AbsoluteSizeSpan) {
                            StringBuilder sbA = android.support.v4.media.f.a("AbsoluteSizeSpan: ");
                            sbA.append(((AbsoluteSizeSpan) obj3).getSize());
                            simpleName = sbA.toString();
                        } else if (obj3 instanceof ForegroundColorSpan) {
                            int foregroundColor = ((ForegroundColorSpan) obj3).getForegroundColor();
                            StringBuilder sbA2 = android.support.v4.media.f.a("ForegroundColorSpan: ");
                            sbA2.append(String.format(Locale.US, "#%06X", Integer.valueOf(foregroundColor & ViewCompat.MEASURED_SIZE_MASK)));
                            simpleName = sbA2.toString();
                        } else if (obj3 instanceof BackgroundColorSpan) {
                            int backgroundColor = ((BackgroundColorSpan) obj3).getBackgroundColor();
                            StringBuilder sbA3 = android.support.v4.media.f.a("BackgroundColorSpan: ");
                            sbA3.append(String.format(Locale.US, "#%06X", Integer.valueOf(backgroundColor & ViewCompat.MEASURED_SIZE_MASK)));
                            simpleName = sbA3.toString();
                        } else if (obj3 instanceof StyleSpan) {
                            StringBuilder sbA4 = android.support.v4.media.f.a("StyleSpan: ");
                            sbA4.append(((StyleSpan) obj3).getStyle());
                            simpleName = sbA4.toString();
                        } else {
                            simpleName = obj3.getClass().getSimpleName();
                        }
                        androidx.media.a.a(sb, simpleName, "HtmlConverter");
                    }
                }
                return bVar.f3397c;
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            } catch (SAXException e5) {
                throw new RuntimeException(e5);
            }
        } catch (SAXNotRecognizedException e6) {
            throw new RuntimeException(e6);
        } catch (SAXNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }
}
