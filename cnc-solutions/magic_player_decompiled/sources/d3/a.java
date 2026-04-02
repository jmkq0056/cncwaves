package d3;

import java.util.Enumeration;
import java.util.Hashtable;
import x2.j;
import x2.o;
import x2.p;

/* JADX INFO: loaded from: classes2.dex */
public class a implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Hashtable<String, o> f1520a;

    public final void B() throws p {
        if (this.f1520a == null) {
            throw new p();
        }
    }

    @Override // x2.j
    public void clear() throws p {
        B();
        this.f1520a.clear();
    }

    @Override // x2.j, java.lang.AutoCloseable
    public void close() {
        Hashtable<String, o> hashtable = this.f1520a;
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    @Override // x2.j
    public void g(String str, o oVar) throws p {
        B();
        this.f1520a.put(str, oVar);
    }

    @Override // x2.j
    public o get(String str) throws p {
        B();
        return this.f1520a.get(str);
    }

    @Override // x2.j
    public void i(String str, String str2) {
        this.f1520a = new Hashtable<>();
    }

    @Override // x2.j
    public void remove(String str) throws p {
        B();
        this.f1520a.remove(str);
    }

    @Override // x2.j
    public boolean v(String str) throws p {
        B();
        return this.f1520a.containsKey(str);
    }

    @Override // x2.j
    public Enumeration<String> x() throws p {
        B();
        return this.f1520a.keys();
    }
}
