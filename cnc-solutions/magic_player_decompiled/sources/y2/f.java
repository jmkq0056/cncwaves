package y2;

import b3.u;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import x2.s;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c3.b f4117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Hashtable f4118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x2.m f4120d;

    public f(String str) {
        c3.b bVarA = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", "y2.f");
        this.f4117a = bVarA;
        this.f4120d = null;
        bVarA.i(str);
        this.f4118b = new Hashtable();
        this.f4119c = str;
        this.f4117a.h("y2.f", "<Init>", "308");
    }

    public void a() {
        this.f4117a.d("y2.f", "clear", "305", new Object[]{Integer.valueOf(this.f4118b.size())});
        synchronized (this.f4118b) {
            this.f4118b.clear();
        }
    }

    public x2.l[] b() {
        x2.l[] lVarArr;
        synchronized (this.f4118b) {
            this.f4117a.h("y2.f", "getOutstandingDelTokens", "311");
            Vector vector = new Vector();
            Enumeration enumerationElements = this.f4118b.elements();
            while (enumerationElements.hasMoreElements()) {
                s sVar = (s) enumerationElements.nextElement();
                if (sVar != null && (sVar instanceof x2.l) && !sVar.f3986a.f4168n) {
                    vector.addElement(sVar);
                }
            }
            lVarArr = (x2.l[]) vector.toArray(new x2.l[vector.size()]);
        }
        return lVarArr;
    }

    public s c(u uVar) {
        return (s) this.f4118b.get(uVar.m());
    }

    public void d(x2.m mVar) {
        synchronized (this.f4118b) {
            this.f4117a.d("y2.f", "quiesce", "309", new Object[]{mVar});
            this.f4120d = mVar;
        }
    }

    public s e(u uVar) {
        return f(uVar.m());
    }

    public s f(String str) {
        this.f4117a.d("y2.f", "removeToken", "306", new Object[]{str});
        if (str != null) {
            return (s) this.f4118b.remove(str);
        }
        return null;
    }

    public x2.l g(b3.o oVar) {
        x2.l lVar;
        synchronized (this.f4118b) {
            String string = Integer.toString(oVar.f295b);
            if (this.f4118b.containsKey(string)) {
                lVar = (x2.l) this.f4118b.get(string);
                this.f4117a.d("y2.f", "restoreToken", "302", new Object[]{string, oVar, lVar});
            } else {
                lVar = new x2.l(this.f4119c);
                lVar.f3986a.f4164j = string;
                this.f4118b.put(string, lVar);
                this.f4117a.d("y2.f", "restoreToken", "303", new Object[]{string, oVar, lVar});
            }
        }
        return lVar;
    }

    public void h(s sVar, u uVar) {
        synchronized (this.f4118b) {
            x2.m mVar = this.f4120d;
            if (mVar != null) {
                throw mVar;
            }
            String strM = uVar.m();
            this.f4117a.d("y2.f", "saveToken", "300", new Object[]{strM, uVar});
            i(sVar, strM);
        }
    }

    public void i(s sVar, String str) {
        synchronized (this.f4118b) {
            this.f4117a.d("y2.f", "saveToken", "307", new Object[]{str, sVar.toString()});
            sVar.f3986a.f4164j = str;
            this.f4118b.put(str, sVar);
        }
    }

    public String toString() {
        String string;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer = new StringBuffer();
        synchronized (this.f4118b) {
            Enumeration enumerationElements = this.f4118b.elements();
            while (enumerationElements.hasMoreElements()) {
                stringBuffer.append("{" + ((s) enumerationElements.nextElement()).f3986a + "}" + property);
            }
            string = stringBuffer.toString();
        }
        return string;
    }
}
