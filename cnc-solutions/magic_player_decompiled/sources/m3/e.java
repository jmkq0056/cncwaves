package m3;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final org.greenrobot.greendao.database.a f2594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f2596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String[] f2597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public org.greenrobot.greendao.database.c f2598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public org.greenrobot.greendao.database.c f2599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public org.greenrobot.greendao.database.c f2600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public org.greenrobot.greendao.database.c f2601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public org.greenrobot.greendao.database.c f2602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile String f2603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile String f2604k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile String f2605l;

    public e(org.greenrobot.greendao.database.a aVar, String str, String[] strArr, String[] strArr2) {
        this.f2594a = aVar;
        this.f2595b = str;
        this.f2596c = strArr;
        this.f2597d = strArr2;
    }

    public org.greenrobot.greendao.database.c a() {
        if (this.f2601h == null) {
            String str = this.f2595b;
            String[] strArr = this.f2597d;
            int i4 = d.f2593a;
            String str2 = '\"' + str + '\"';
            StringBuilder sb = new StringBuilder("DELETE FROM ");
            sb.append(str2);
            if (strArr != null && strArr.length > 0) {
                sb.append(" WHERE ");
                d.b(sb, str2, strArr);
            }
            org.greenrobot.greendao.database.c cVarM = ((t1.b) this.f2594a).m(sb.toString());
            synchronized (this) {
                if (this.f2601h == null) {
                    this.f2601h = cVarM;
                }
            }
            if (this.f2601h != cVarM) {
                ((t1.b) cVarM).k();
            }
        }
        return this.f2601h;
    }

    public org.greenrobot.greendao.database.c b() {
        if (this.f2599f == null) {
            org.greenrobot.greendao.database.c cVarM = ((t1.b) this.f2594a).m(d.d("INSERT OR REPLACE INTO ", this.f2595b, this.f2596c));
            synchronized (this) {
                if (this.f2599f == null) {
                    this.f2599f = cVarM;
                }
            }
            if (this.f2599f != cVarM) {
                ((t1.b) cVarM).k();
            }
        }
        return this.f2599f;
    }

    public org.greenrobot.greendao.database.c c() {
        if (this.f2598e == null) {
            org.greenrobot.greendao.database.c cVarM = ((t1.b) this.f2594a).m(d.d("INSERT INTO ", this.f2595b, this.f2596c));
            synchronized (this) {
                if (this.f2598e == null) {
                    this.f2598e = cVarM;
                }
            }
            if (this.f2598e != cVarM) {
                ((t1.b) cVarM).k();
            }
        }
        return this.f2598e;
    }

    public String d() {
        if (this.f2603j == null) {
            this.f2603j = d.e(this.f2595b, "T", this.f2596c, false);
        }
        return this.f2603j;
    }

    public String e() {
        if (this.f2604k == null) {
            StringBuilder sb = new StringBuilder(d());
            sb.append("WHERE ");
            d.b(sb, "T", this.f2597d);
            this.f2604k = sb.toString();
        }
        return this.f2604k;
    }

    public org.greenrobot.greendao.database.c f() {
        if (this.f2600g == null) {
            String str = this.f2595b;
            String[] strArr = this.f2596c;
            String[] strArr2 = this.f2597d;
            int i4 = d.f2593a;
            String str2 = '\"' + str + '\"';
            StringBuilder sb = new StringBuilder("UPDATE ");
            sb.append(str2);
            sb.append(" SET ");
            for (int i5 = 0; i5 < strArr.length; i5++) {
                String str3 = strArr[i5];
                sb.append('\"');
                sb.append(str3);
                sb.append('\"');
                sb.append("=?");
                if (i5 < strArr.length - 1) {
                    sb.append(',');
                }
            }
            sb.append(" WHERE ");
            d.b(sb, str2, strArr2);
            org.greenrobot.greendao.database.c cVarM = ((t1.b) this.f2594a).m(sb.toString());
            synchronized (this) {
                if (this.f2600g == null) {
                    this.f2600g = cVarM;
                }
            }
            if (this.f2600g != cVarM) {
                ((t1.b) cVarM).k();
            }
        }
        return this.f2600g;
    }
}
