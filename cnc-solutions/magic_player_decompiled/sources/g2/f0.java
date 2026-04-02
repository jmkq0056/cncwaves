package g2;

import java.io.PrintWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class f0 implements e0 {
    private e0 response;

    public f0(e0 e0Var) {
        if (e0Var == null) {
            throw new IllegalArgumentException("Response cannot be null");
        }
        this.response = e0Var;
    }

    @Override // g2.e0
    public void flushBuffer() {
        this.response.flushBuffer();
    }

    @Override // g2.e0
    public int getBufferSize() {
        return this.response.getBufferSize();
    }

    @Override // g2.e0
    public String getCharacterEncoding() {
        return this.response.getCharacterEncoding();
    }

    @Override // g2.e0
    public String getContentType() {
        return this.response.getContentType();
    }

    @Override // g2.e0
    public Locale getLocale() {
        return this.response.getLocale();
    }

    @Override // g2.e0
    public w getOutputStream() {
        return this.response.getOutputStream();
    }

    public e0 getResponse() {
        return this.response;
    }

    @Override // g2.e0
    public PrintWriter getWriter() {
        return this.response.getWriter();
    }

    @Override // g2.e0
    public boolean isCommitted() {
        return this.response.isCommitted();
    }

    public boolean isWrapperFor(e0 e0Var) {
        e0 e0Var2 = this.response;
        if (e0Var2 == e0Var) {
            return true;
        }
        if (e0Var2 instanceof f0) {
            return ((f0) e0Var2).isWrapperFor(e0Var);
        }
        return false;
    }

    @Override // g2.e0
    public void reset() {
        this.response.reset();
    }

    @Override // g2.e0
    public void resetBuffer() {
        this.response.resetBuffer();
    }

    @Override // g2.e0
    public void setBufferSize(int i4) {
        this.response.setBufferSize(i4);
    }

    @Override // g2.e0
    public void setCharacterEncoding(String str) {
        this.response.setCharacterEncoding(str);
    }

    @Override // g2.e0
    public void setContentLength(int i4) {
        this.response.setContentLength(i4);
    }

    @Override // g2.e0
    public void setContentType(String str) {
        this.response.setContentType(str);
    }

    @Override // g2.e0
    public void setLocale(Locale locale) {
        this.response.setLocale(locale);
    }

    public void setResponse(e0 e0Var) {
        if (e0Var == null) {
            throw new IllegalArgumentException("Response cannot be null");
        }
        this.response = e0Var;
    }

    public boolean isWrapperFor(Class cls) {
        if (!e0.class.isAssignableFrom(cls)) {
            StringBuilder sbA = android.support.v4.media.f.a("Given class ");
            sbA.append(cls.getName());
            sbA.append(" not a subinterface of ");
            sbA.append(e0.class.getName());
            throw new IllegalArgumentException(sbA.toString());
        }
        if (cls.isAssignableFrom(this.response.getClass())) {
            return true;
        }
        e0 e0Var = this.response;
        if (e0Var instanceof f0) {
            return ((f0) e0Var).isWrapperFor(cls);
        }
        return false;
    }
}
