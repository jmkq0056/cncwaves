package v2;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap f3765a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap f3766b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3767c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3768d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f3769e = null;

    public void a(String str, String str2, String str3, String str4) {
        d dVar = (d) this.f3766b.get(str.toLowerCase());
        if (dVar != null) {
            dVar.d(dVar.f3722g, str2, str3, str4);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Attribute ");
        stringBuffer.append(str2);
        stringBuffer.append(" specified for unknown element type ");
        stringBuffer.append(str);
        throw new Error(stringBuffer.toString());
    }

    public void b(String str, int i4, int i5, int i6) {
        d dVar = new d(str, i4, i5, i6, this);
        this.f3766b.put(str.toLowerCase(), dVar);
        if (i5 == Integer.MIN_VALUE) {
            this.f3769e = dVar;
        }
    }

    public void c(String str, int i4) {
        this.f3765a.put(str, new Integer(i4));
    }

    public d d(String str) {
        return (d) this.f3766b.get(str.toLowerCase());
    }

    public void e(String str, String str2) {
        d dVar = (d) this.f3766b.get(str.toLowerCase());
        d dVar2 = (d) this.f3766b.get(str2.toLowerCase());
        if (dVar == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No child ");
            stringBuffer.append(str);
            stringBuffer.append(" for parent ");
            stringBuffer.append(str2);
            throw new Error(stringBuffer.toString());
        }
        if (dVar2 != null) {
            dVar.f3723h = dVar2;
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("No parent ");
        stringBuffer2.append(str2);
        stringBuffer2.append(" for child ");
        stringBuffer2.append(str);
        throw new Error(stringBuffer2.toString());
    }

    public void f(String str) {
        this.f3768d = str;
    }

    public void g(String str) {
        this.f3767c = str;
    }
}
