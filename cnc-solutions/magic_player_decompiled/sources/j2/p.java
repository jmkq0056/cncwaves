package j2;

import g2.w;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public class p extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ResourceBundle f2025e = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f2026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PrintWriter f2027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2029d;

    public p(e eVar) {
        super(eVar);
        this.f2026a = new o();
    }

    @Override // g2.f0, g2.e0
    public w getOutputStream() {
        if (this.f2027b != null) {
            throw new IllegalStateException(f2025e.getString("err.ise.getOutputStream"));
        }
        this.f2029d = true;
        return this.f2026a;
    }

    @Override // g2.f0, g2.e0
    public PrintWriter getWriter() {
        if (this.f2029d) {
            throw new IllegalStateException(f2025e.getString("err.ise.getWriter"));
        }
        if (this.f2027b == null) {
            this.f2027b = new PrintWriter(new OutputStreamWriter(this.f2026a, getCharacterEncoding()));
        }
        return this.f2027b;
    }

    @Override // g2.f0, g2.e0
    public void setContentLength(int i4) {
        super.setContentLength(i4);
        this.f2028c = true;
    }
}
