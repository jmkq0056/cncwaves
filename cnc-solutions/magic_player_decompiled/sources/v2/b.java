package v2;

import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Attributes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String[] f3715b;

    public b() {
        this.f3714a = 0;
        this.f3715b = null;
    }

    public void a(int i4) {
        int i5;
        if (i4 < 0 || i4 >= (i5 = this.f3714a)) {
            throw new ArrayIndexOutOfBoundsException(a.a("Attempt to modify attribute at illegal index: ", i4));
        }
        if (i4 < i5 - 1) {
            String[] strArr = this.f3715b;
            System.arraycopy(strArr, (i4 + 1) * 5, strArr, i4 * 5, ((i5 - i4) - 1) * 5);
        }
        int i6 = this.f3714a - 1;
        int i7 = i6 * 5;
        String[] strArr2 = this.f3715b;
        int i8 = i7 + 1;
        strArr2[i7] = null;
        int i9 = i8 + 1;
        strArr2[i8] = null;
        int i10 = i9 + 1;
        strArr2[i9] = null;
        strArr2[i10] = null;
        strArr2[i10 + 1] = null;
        this.f3714a = i6;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str, String str2) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5].equals(str) && this.f3715b[i5 + 1].equals(str2)) {
                return i5 / 5;
            }
        }
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public int getLength() {
        return this.f3714a;
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i4) {
        if (i4 < 0 || i4 >= this.f3714a) {
            return null;
        }
        return this.f3715b[(i4 * 5) + 1];
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i4) {
        if (i4 < 0 || i4 >= this.f3714a) {
            return null;
        }
        return this.f3715b[(i4 * 5) + 2];
    }

    @Override // org.xml.sax.Attributes
    public String getType(int i4) {
        if (i4 < 0 || i4 >= this.f3714a) {
            return null;
        }
        return this.f3715b[(i4 * 5) + 3];
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i4) {
        if (i4 < 0 || i4 >= this.f3714a) {
            return null;
        }
        return this.f3715b[i4 * 5];
    }

    @Override // org.xml.sax.Attributes
    public String getValue(int i4) {
        if (i4 < 0 || i4 >= this.f3714a) {
            return null;
        }
        return this.f3715b[(i4 * 5) + 4];
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5].equals(str) && this.f3715b[i5 + 1].equals(str2)) {
                return this.f3715b[i5 + 3];
            }
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5].equals(str) && this.f3715b[i5 + 1].equals(str2)) {
                return this.f3715b[i5 + 4];
            }
        }
        return null;
    }

    public b(Attributes attributes) {
        if (this.f3715b != null) {
            for (int i4 = 0; i4 < this.f3714a * 5; i4++) {
                this.f3715b[i4] = null;
            }
        }
        this.f3714a = 0;
        int i5 = ((b) attributes).f3714a;
        this.f3714a = i5;
        if (i5 > 0) {
            this.f3715b = new String[i5 * 5];
            for (int i6 = 0; i6 < this.f3714a; i6++) {
                int i7 = i6 * 5;
                b bVar = (b) attributes;
                this.f3715b[i7] = bVar.getURI(i6);
                this.f3715b[i7 + 1] = bVar.getLocalName(i6);
                this.f3715b[i7 + 2] = bVar.getQName(i6);
                this.f3715b[i7 + 3] = bVar.getType(i6);
                this.f3715b[i7 + 4] = bVar.getValue(i6);
            }
        }
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5 + 2].equals(str)) {
                return i5 / 5;
            }
        }
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5 + 2].equals(str)) {
                return this.f3715b[i5 + 3];
            }
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str) {
        int i4 = this.f3714a * 5;
        for (int i5 = 0; i5 < i4; i5 += 5) {
            if (this.f3715b[i5 + 2].equals(str)) {
                return this.f3715b[i5 + 4];
            }
        }
        return null;
    }
}
