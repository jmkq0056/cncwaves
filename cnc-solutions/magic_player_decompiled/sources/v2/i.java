package v2;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.media.AudioAttributesCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.HashMap;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class i extends DefaultHandler implements j, XMLReader, LexicalHandler {
    public static char[] E = {'<', '/', '>'};
    public q1.b A;
    public q1.b B;
    public int C;
    public boolean D;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f3744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k f3745g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f3746h;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public HashMap f3756r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public q1.b f3757s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f3758t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3759u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f3760v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f3761w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f3762x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f3763y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public q1.b f3764z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ContentHandler f3739a = this;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LexicalHandler f3740b = this;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DTDHandler f3741c = this;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ErrorHandler f3742d = this;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EntityResolver f3743e = this;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3747i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3748j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3749k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3750l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3751m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3752n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3753o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3754p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3755q = true;

    public i() {
        HashMap map = new HashMap();
        this.f3756r = map;
        map.put("http://xml.org/sax/features/namespaces", t(true));
        HashMap map2 = this.f3756r;
        Boolean bool = Boolean.FALSE;
        map2.put("http://xml.org/sax/features/namespace-prefixes", bool);
        this.f3756r.put("http://xml.org/sax/features/external-general-entities", bool);
        this.f3756r.put("http://xml.org/sax/features/external-parameter-entities", bool);
        this.f3756r.put("http://xml.org/sax/features/is-standalone", bool);
        this.f3756r.put("http://xml.org/sax/features/lexical-handler/parameter-entities", bool);
        HashMap map3 = this.f3756r;
        Boolean bool2 = Boolean.TRUE;
        map3.put("http://xml.org/sax/features/resolve-dtd-uris", bool2);
        this.f3756r.put("http://xml.org/sax/features/string-interning", bool2);
        this.f3756r.put("http://xml.org/sax/features/use-attributes2", bool);
        this.f3756r.put("http://xml.org/sax/features/use-locator2", bool);
        this.f3756r.put("http://xml.org/sax/features/use-entity-resolver2", bool);
        this.f3756r.put("http://xml.org/sax/features/validation", bool);
        this.f3756r.put("http://xml.org/sax/features/xmlns-uris", bool);
        this.f3756r.put("http://xml.org/sax/features/xmlns-uris", bool);
        this.f3756r.put("http://xml.org/sax/features/xml-1.1", bool);
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons", t(false));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/bogons-empty", t(false));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/root-bogons", t(true));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/default-attributes", t(true));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/translate-colons", t(false));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/restart-elements", t(true));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace", t(false));
        this.f3756r.put("http://www.ccil.org/~cowan/tagsoup/features/cdata-elements", t(true));
        this.f3757s = null;
        this.f3758t = null;
        this.f3759u = false;
        this.f3760v = null;
        this.f3761w = null;
        this.f3762x = null;
        this.f3763y = null;
        this.f3764z = null;
        this.A = null;
        this.B = null;
        this.C = 0;
        this.D = true;
    }

    public static String s(String str) {
        int length;
        char cCharAt;
        return (str == null || (length = str.length()) == 0 || (cCharAt = str.charAt(0)) != str.charAt(length - 1)) ? str : (cCharAt == '\'' || cCharAt == '\"') ? str.substring(1, str.length() - 1) : str;
    }

    public static Boolean t(boolean z3) {
        return z3 ? Boolean.TRUE : Boolean.FALSE;
    }

    public void a(char[] cArr, int i4, int i5) {
        String str;
        q1.b bVar = this.f3757s;
        if (bVar == null || (str = this.f3758t) == null) {
            return;
        }
        ((d) bVar.f3155a).d((b) bVar.f3156b, str, null, str);
        this.f3758t = null;
    }

    public void b(char[] cArr, int i4, int i5) {
        if (this.f3757s == null) {
            return;
        }
        this.f3758t = h(cArr, i4, i5).toLowerCase();
    }

    public void c(char[] cArr, int i4, int i5) {
        if (this.f3757s == null || this.f3758t == null) {
            return;
        }
        String str = new String(cArr, i4, i5);
        int length = str.length();
        char[] cArr2 = new char[length];
        int i6 = 0;
        int i7 = -1;
        for (int i8 = 0; i8 < length; i8++) {
            char cCharAt = str.charAt(i8);
            int i9 = i6 + 1;
            cArr2[i6] = cCharAt;
            if (cCharAt == '&' && i7 == -1) {
                i6 = i9;
                i7 = i6;
            } else if (i7 == -1 || Character.isLetter(cCharAt) || Character.isDigit(cCharAt) || cCharAt == '#') {
                i6 = i9;
            } else {
                if (cCharAt == ';') {
                    int iG = g(cArr2, i7, (i9 - i7) - 1);
                    if (iG > 65535) {
                        int i10 = iG - 65536;
                        cArr2[i7 - 1] = (char) ((i10 >> 10) + 55296);
                        cArr2[i7] = (char) ((i10 & AudioAttributesCompat.FLAG_ALL) + 56320);
                        i7++;
                    } else if (iG != 0) {
                        cArr2[i7 - 1] = (char) iG;
                    } else {
                        i7 = i9;
                    }
                    i9 = i7;
                }
                i6 = i9;
                i7 = -1;
            }
        }
        String str2 = new String(cArr2, 0, i6);
        q1.b bVar = this.f3757s;
        ((d) bVar.f3155a).d((b) bVar.f3156b, this.f3758t, null, str2);
        this.f3758t = null;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i4, int i5) {
    }

    public void d(char[] cArr, int i4, int i5) {
        String strD;
        this.f3757s = null;
        if (i5 != 0) {
            d dVarD = this.f3744f.d(h(cArr, i4, i5));
            if (dVarD == null) {
                return;
            } else {
                strD = dVarD.f3716a;
            }
        } else {
            strD = this.f3764z.d();
        }
        boolean z3 = false;
        q1.b bVar = this.f3764z;
        while (bVar != null && !bVar.d().equals(strD)) {
            if ((bVar.c() & 4) != 0) {
                z3 = true;
            }
            bVar = (q1.b) bVar.f3157c;
        }
        if (bVar == null) {
            return;
        }
        Object obj = bVar.f3157c;
        if (((q1.b) obj) == null || ((q1.b) ((q1.b) obj).f3157c) == null) {
            return;
        }
        if (z3) {
            bVar.f3158d = true;
        } else {
            while (this.f3764z != bVar) {
                q();
            }
            l();
        }
        while (this.f3764z.f3158d) {
            l();
        }
        p(null);
    }

    public final boolean e(String str, String str2) {
        return (str.equals("") || str2.equals("") || str2.equals(this.f3744f.f3767c)) ? false : true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) {
    }

    public void f(char[] cArr, int i4, int i5) {
        String strH;
        if (this.f3757s == null && (strH = h(cArr, i4, i5)) != null) {
            d dVar = (d) this.f3744f.f3766b.get(strH.toLowerCase());
            if (dVar == null) {
                if (this.f3748j) {
                    return;
                }
                this.f3744f.b(strH, this.f3749k ? 0 : -1, this.f3750l ? -1 : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0);
                if (!this.f3750l) {
                    l lVar = this.f3744f;
                    lVar.e(strH, lVar.f3769e.f3716a);
                }
                dVar = (d) this.f3744f.f3766b.get(strH.toLowerCase());
            }
            this.f3757s = new q1.b(dVar, this.f3751m);
        }
    }

    public final int g(char[] cArr, int i4, int i5) {
        if (i5 < 1) {
            return 0;
        }
        if (cArr[i4] != '#') {
            Integer num = (Integer) this.f3744f.f3765a.get(new String(cArr, i4, i5));
            if (num == null) {
                return 0;
            }
            return num.intValue();
        }
        if (i5 > 1) {
            int i6 = i4 + 1;
            if (cArr[i6] == 'x' || cArr[i6] == 'X') {
                try {
                    return Integer.parseInt(new String(cArr, i4 + 2, i5 - 2), 16);
                } catch (NumberFormatException unused) {
                    return 0;
                }
            }
        }
        try {
            return Integer.parseInt(new String(cArr, i4 + 1, i5 - 1), 10);
        } catch (NumberFormatException unused2) {
            return 0;
        }
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        ContentHandler contentHandler = this.f3739a;
        if (contentHandler == this) {
            return null;
        }
        return contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        DTDHandler dTDHandler = this.f3741c;
        if (dTDHandler == this) {
            return null;
        }
        return dTDHandler;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        EntityResolver entityResolver = this.f3743e;
        if (entityResolver == this) {
            return null;
        }
        return entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        ErrorHandler errorHandler = this.f3742d;
        if (errorHandler == this) {
            return null;
        }
        return errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) throws SAXNotRecognizedException {
        Boolean bool = (Boolean) this.f3756r.get(str);
        if (bool != null) {
            return bool.booleanValue();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unknown feature ");
        stringBuffer.append(str);
        throw new SAXNotRecognizedException(stringBuffer.toString());
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) throws SAXNotRecognizedException {
        if (str.equals("http://xml.org/sax/properties/lexical-handler")) {
            LexicalHandler lexicalHandler = this.f3740b;
            if (lexicalHandler == this) {
                return null;
            }
            return lexicalHandler;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/scanner")) {
            return this.f3745g;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/schema")) {
            return this.f3744f;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/auto-detector")) {
            return this.f3746h;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unknown property ");
        stringBuffer.append(str);
        throw new SAXNotRecognizedException(stringBuffer.toString());
    }

    public final String h(char[] cArr, int i4, int i5) {
        StringBuffer stringBuffer = new StringBuffer(i5 + 2);
        boolean z3 = true;
        boolean z4 = false;
        while (true) {
            int i6 = i5 - 1;
            if (i5 <= 0) {
                break;
            }
            char c4 = cArr[i4];
            if (Character.isLetter(c4) || c4 == '_') {
                stringBuffer.append(c4);
            } else if (Character.isDigit(c4) || c4 == '-' || c4 == '.') {
                if (z3) {
                    stringBuffer.append('_');
                }
                stringBuffer.append(c4);
            } else {
                if (c4 == ':' && !z4) {
                    if (z3) {
                        stringBuffer.append('_');
                    }
                    stringBuffer.append(this.f3752n ? '_' : c4);
                    z3 = true;
                    z4 = true;
                }
                i4++;
                i5 = i6;
            }
            z3 = false;
            i4++;
            i5 = i6;
        }
        int length = stringBuffer.length();
        if (length == 0 || stringBuffer.charAt(length - 1) == ':') {
            stringBuffer.append('_');
        }
        return stringBuffer.toString().intern();
    }

    public void i(char[] cArr, int i4, int i5) {
        if (i5 == 0) {
            return;
        }
        boolean z3 = true;
        for (int i6 = 0; i6 < i5; i6++) {
            if (!Character.isWhitespace(cArr[i4 + i6])) {
                z3 = false;
            }
        }
        if (!z3 || this.f3764z.a(this.B)) {
            o(this.B);
            this.f3739a.characters(cArr, i4, i5);
        } else if (this.f3754p) {
            this.f3739a.ignorableWhitespace(cArr, i4, i5);
        }
    }

    public void j(char[] cArr, int i4, int i5) {
        String str;
        if (this.f3757s != null || (str = this.f3763y) == null || "xml".equalsIgnoreCase(str)) {
            return;
        }
        if (i5 > 0 && cArr[i5 - 1] == '?') {
            i5--;
        }
        this.f3739a.processingInstruction(this.f3763y, new String(cArr, i4, i5));
        this.f3763y = null;
    }

    public void k(char[] cArr, int i4, int i5) {
        if (this.f3757s != null) {
            return;
        }
        this.f3763y = h(cArr, i4, i5).replace(':', '_');
    }

    public final void l() {
        q1.b bVar = this.f3764z;
        if (bVar == null) {
            return;
        }
        String strD = bVar.d();
        d dVar = (d) this.f3764z.f3155a;
        String str = dVar.f3718c;
        String str2 = dVar.f3717b;
        String strM = m(strD);
        if (!this.f3747i) {
            str = "";
            str2 = "";
        }
        this.f3739a.endElement(str2, str, strD);
        if (e(strM, str2)) {
            this.f3739a.endPrefixMapping(strM);
        }
        b bVar2 = (b) this.f3764z.f3156b;
        int i4 = bVar2.f3714a;
        while (true) {
            i4--;
            if (i4 < 0) {
                this.f3764z = (q1.b) this.f3764z.f3157c;
                return;
            }
            String uri = bVar2.getURI(i4);
            String strM2 = m(bVar2.getQName(i4));
            if (e(strM2, uri)) {
                this.f3739a.endPrefixMapping(strM2);
            }
        }
    }

    public final String m(String str) {
        int iIndexOf = str.indexOf(58);
        return iIndexOf != -1 ? str.substring(0, iIndexOf) : "";
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [o1.d<float[]>, q1.b] */
    public final void n(q1.b bVar) throws SAXException {
        String strD = bVar.d();
        d dVar = (d) bVar.f3155a;
        String str = dVar.f3718c;
        String str2 = dVar.f3717b;
        String strM = m(strD);
        int i4 = ((b) bVar.f3156b).f3714a;
        while (true) {
            i4--;
            if (i4 < 0) {
                break;
            }
            String localName = ((b) bVar.f3156b).getLocalName(i4);
            if (((b) bVar.f3156b).getValue(i4) == null || localName == null || localName.length() == 0) {
                ((b) bVar.f3156b).a(i4);
            }
        }
        if (!this.f3747i) {
            str = "";
            str2 = "";
        }
        if (this.D && str.equalsIgnoreCase(this.f3762x)) {
            try {
                this.f3743e.resolveEntity(this.f3760v, this.f3761w);
            } catch (IOException unused) {
            }
        }
        if (e(strM, str2)) {
            this.f3739a.startPrefixMapping(strM, str2);
        }
        b bVar2 = (b) bVar.f3156b;
        int i5 = bVar2.f3714a;
        for (int i6 = 0; i6 < i5; i6++) {
            String uri = bVar2.getURI(i6);
            String strM2 = m(bVar2.getQName(i6));
            if (e(strM2, uri)) {
                this.f3739a.startPrefixMapping(strM2, uri);
            }
        }
        this.f3739a.startElement(str2, str, strD, (b) bVar.f3156b);
        bVar.f3157c = this.f3764z;
        this.f3764z = bVar;
        this.D = false;
        if (!this.f3755q || (bVar.c() & 2) == 0) {
            return;
        }
        this.f3745g.startCDATA();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [o1.d<float[]>, q1.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final void o(q1.b bVar) {
        q1.b bVar2;
        d dVar;
        q1.b bVar3 = bVar;
        while (true) {
            bVar2 = this.f3764z;
            while (bVar2 != 0 && !bVar2.a(bVar3)) {
                bVar2 = (q1.b) bVar2.f3157c;
            }
            if (bVar2 != 0 || (dVar = ((d) bVar3.f3155a).f3723h) == null) {
                break;
            }
            q1.b bVar4 = new q1.b(dVar, this.f3751m);
            bVar4.f3157c = bVar3;
            bVar3 = bVar4;
        }
        if (bVar2 == 0) {
            return;
        }
        while (true) {
            q1.b bVar5 = this.f3764z;
            if (bVar5 == bVar2 || bVar5 == null) {
                break;
            }
            Object obj = bVar5.f3157c;
            if (((q1.b) obj) == null || ((q1.b) ((q1.b) obj).f3157c) == null) {
                break;
            } else {
                q();
            }
        }
        while (bVar3 != 0) {
            q1.b bVar6 = (q1.b) bVar3.f3157c;
            if (!bVar3.d().equals("<pcdata>")) {
                n(bVar3);
            }
            p(bVar6);
            bVar3 = bVar6;
        }
        this.f3757s = null;
    }

    public final void p(q1.b bVar) throws SAXException {
        while (true) {
            q1.b bVar2 = this.A;
            if (bVar2 == null || !this.f3764z.a(bVar2)) {
                return;
            }
            if (bVar != null && !this.A.a(bVar)) {
                return;
            }
            q1.b bVar3 = this.A;
            q1.b bVar4 = (q1.b) bVar3.f3157c;
            n(bVar3);
            this.A = bVar4;
        }
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) throws SAXException, IOException {
        parse(new InputSource(str));
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [o1.d<float[]>, q1.b] */
    public final void q() {
        q1.b bVar = this.f3764z;
        l();
        if (!this.f3753o || (bVar.c() & 1) == 0) {
            return;
        }
        int i4 = ((b) bVar.f3156b).f3714a;
        while (true) {
            i4--;
            if (i4 < 0) {
                bVar.f3157c = this.A;
                this.A = bVar;
                return;
            } else if (((b) bVar.f3156b).getType(i4).equals("ID") || ((b) bVar.f3156b).getQName(i4).equals("name")) {
                ((b) bVar.f3156b).a(i4);
            }
        }
    }

    public void r(char[] cArr, int i4, int i5) {
        q1.b bVar = this.f3757s;
        if (bVar == null) {
            return;
        }
        o(bVar);
        if (((d) this.f3764z.f3155a).f3719d == 0) {
            d(cArr, i4, i5);
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        if (contentHandler == null) {
            contentHandler = this;
        }
        this.f3739a = contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
        if (dTDHandler == null) {
            dTDHandler = this;
        }
        this.f3741c = dTDHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
        if (entityResolver == null) {
            entityResolver = this;
        }
        this.f3743e = entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        if (errorHandler == null) {
            errorHandler = this;
        }
        this.f3742d = errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z3) throws SAXNotRecognizedException {
        if (((Boolean) this.f3756r.get(str)) == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unknown feature ");
            stringBuffer.append(str);
            throw new SAXNotRecognizedException(stringBuffer.toString());
        }
        if (z3) {
            this.f3756r.put(str, Boolean.TRUE);
        } else {
            this.f3756r.put(str, Boolean.FALSE);
        }
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            this.f3747i = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons")) {
            this.f3748j = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/bogons-empty")) {
            this.f3749k = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/root-bogons")) {
            this.f3750l = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/default-attributes")) {
            this.f3751m = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/translate-colons")) {
            this.f3752n = z3;
            return;
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/restart-elements")) {
            this.f3753o = z3;
        } else if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace")) {
            this.f3754p = z3;
        } else if (str.equals("http://www.ccil.org/~cowan/tagsoup/features/cdata-elements")) {
            this.f3755q = z3;
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str.equals("http://xml.org/sax/properties/lexical-handler")) {
            if (obj == null) {
                this.f3740b = this;
                return;
            } else {
                if (!(obj instanceof LexicalHandler)) {
                    throw new SAXNotSupportedException("Your lexical handler is not a LexicalHandler");
                }
                this.f3740b = (LexicalHandler) obj;
                return;
            }
        }
        if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/scanner")) {
            if (!(obj instanceof k)) {
                throw new SAXNotSupportedException("Your scanner is not a Scanner");
            }
            this.f3745g = (k) obj;
        } else if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/schema")) {
            if (!(obj instanceof l)) {
                throw new SAXNotSupportedException("Your schema is not a Schema");
            }
            this.f3744f = (l) obj;
        } else if (str.equals("http://www.ccil.org/~cowan/tagsoup/properties/auto-detector")) {
            if (!(obj instanceof c)) {
                throw new SAXNotSupportedException("Your auto-detector is not an AutoDetector");
            }
            this.f3746h = (c) obj;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unknown property ");
            stringBuffer.append(str);
            throw new SAXNotRecognizedException(stringBuffer.toString());
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) {
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws SAXException, IOException {
        if (this.f3744f == null) {
            this.f3744f = new g();
        }
        if (this.f3745g == null) {
            this.f3745g = new f();
        }
        if (this.f3746h == null) {
            this.f3746h = new h(this);
        }
        this.f3764z = new q1.b((d) this.f3744f.f3766b.get("<root>".toLowerCase()), this.f3751m);
        this.B = new q1.b((d) this.f3744f.f3766b.get("<pcdata>".toLowerCase()), this.f3751m);
        this.f3757s = null;
        this.f3758t = null;
        this.f3763y = null;
        this.A = null;
        this.C = 0;
        this.D = true;
        this.f3761w = null;
        this.f3760v = null;
        this.f3762x = null;
        Reader characterStream = inputSource.getCharacterStream();
        InputStream byteStream = inputSource.getByteStream();
        String encoding = inputSource.getEncoding();
        inputSource.getPublicId();
        String systemId = inputSource.getSystemId();
        if (characterStream == null) {
            if (byteStream == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(System.getProperty("user.dir"));
                stringBuffer.append("/.");
                byteStream = new URL(new URL("file", "", stringBuffer.toString()), systemId).openConnection().getInputStream();
            }
            if (encoding == null) {
                characterStream = this.f3746h.a(byteStream);
            } else {
                try {
                    characterStream = new InputStreamReader(byteStream, encoding);
                } catch (UnsupportedEncodingException unused) {
                    characterStream = new InputStreamReader(byteStream);
                }
            }
        }
        this.f3739a.startDocument();
        this.f3745g.a(inputSource.getPublicId(), inputSource.getSystemId());
        k kVar = this.f3745g;
        if (kVar instanceof Locator) {
            this.f3739a.setDocumentLocator((Locator) kVar);
        }
        if (!this.f3744f.f3767c.equals("")) {
            ContentHandler contentHandler = this.f3739a;
            l lVar = this.f3744f;
            contentHandler.startPrefixMapping(lVar.f3768d, lVar.f3767c);
        }
        this.f3745g.b(characterStream, this);
    }
}
