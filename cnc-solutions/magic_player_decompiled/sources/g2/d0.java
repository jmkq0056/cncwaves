package g2;

import java.io.BufferedReader;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d0 implements y {
    private y request;

    public d0(y yVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("Request cannot be null");
        }
        this.request = yVar;
    }

    @Override // g2.y
    public a getAsyncContext() {
        return this.request.getAsyncContext();
    }

    @Override // g2.y
    public Object getAttribute(String str) {
        return this.request.getAttribute(str);
    }

    @Override // g2.y
    public Enumeration<String> getAttributeNames() {
        return this.request.getAttributeNames();
    }

    @Override // g2.y
    public String getCharacterEncoding() {
        return this.request.getCharacterEncoding();
    }

    @Override // g2.y
    public int getContentLength() {
        return this.request.getContentLength();
    }

    @Override // g2.y
    public String getContentType() {
        return this.request.getContentType();
    }

    @Override // g2.y
    public d getDispatcherType() {
        return this.request.getDispatcherType();
    }

    @Override // g2.y
    public v getInputStream() {
        return this.request.getInputStream();
    }

    @Override // g2.y
    public String getLocalAddr() {
        return this.request.getLocalAddr();
    }

    @Override // g2.y
    public String getLocalName() {
        return this.request.getLocalName();
    }

    @Override // g2.y
    public int getLocalPort() {
        return this.request.getLocalPort();
    }

    @Override // g2.y
    public Locale getLocale() {
        return this.request.getLocale();
    }

    @Override // g2.y
    public Enumeration<Locale> getLocales() {
        return this.request.getLocales();
    }

    @Override // g2.y
    public String getParameter(String str) {
        return this.request.getParameter(str);
    }

    @Override // g2.y
    public Map<String, String[]> getParameterMap() {
        return this.request.getParameterMap();
    }

    @Override // g2.y
    public Enumeration<String> getParameterNames() {
        return this.request.getParameterNames();
    }

    @Override // g2.y
    public String[] getParameterValues(String str) {
        return this.request.getParameterValues(str);
    }

    @Override // g2.y
    public String getProtocol() {
        return this.request.getProtocol();
    }

    @Override // g2.y
    public BufferedReader getReader() {
        return this.request.getReader();
    }

    @Override // g2.y
    public String getRealPath(String str) {
        return this.request.getRealPath(str);
    }

    @Override // g2.y
    public String getRemoteAddr() {
        return this.request.getRemoteAddr();
    }

    @Override // g2.y
    public String getRemoteHost() {
        return this.request.getRemoteHost();
    }

    @Override // g2.y
    public int getRemotePort() {
        return this.request.getRemotePort();
    }

    public y getRequest() {
        return this.request;
    }

    @Override // g2.y
    public m getRequestDispatcher(String str) {
        return this.request.getRequestDispatcher(str);
    }

    @Override // g2.y
    public String getScheme() {
        return this.request.getScheme();
    }

    @Override // g2.y
    public String getServerName() {
        return this.request.getServerName();
    }

    @Override // g2.y
    public int getServerPort() {
        return this.request.getServerPort();
    }

    @Override // g2.y
    public p getServletContext() {
        return this.request.getServletContext();
    }

    @Override // g2.y
    public boolean isAsyncStarted() {
        return this.request.isAsyncStarted();
    }

    @Override // g2.y
    public boolean isAsyncSupported() {
        return this.request.isAsyncSupported();
    }

    @Override // g2.y
    public boolean isSecure() {
        return this.request.isSecure();
    }

    public boolean isWrapperFor(y yVar) {
        y yVar2 = this.request;
        if (yVar2 == yVar) {
            return true;
        }
        if (yVar2 instanceof d0) {
            return ((d0) yVar2).isWrapperFor(yVar);
        }
        return false;
    }

    @Override // g2.y
    public void removeAttribute(String str) {
        this.request.removeAttribute(str);
    }

    @Override // g2.y
    public void setAttribute(String str, Object obj) {
        this.request.setAttribute(str, obj);
    }

    @Override // g2.y
    public void setCharacterEncoding(String str) {
        this.request.setCharacterEncoding(str);
    }

    public void setRequest(y yVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("Request cannot be null");
        }
        this.request = yVar;
    }

    @Override // g2.y
    public a startAsync() {
        return this.request.startAsync();
    }

    @Override // g2.y
    public a startAsync(y yVar, e0 e0Var) {
        return this.request.startAsync(yVar, e0Var);
    }

    public boolean isWrapperFor(Class cls) {
        if (!y.class.isAssignableFrom(cls)) {
            StringBuilder sbA = android.support.v4.media.f.a("Given class ");
            sbA.append(cls.getName());
            sbA.append(" not a subinterface of ");
            sbA.append(y.class.getName());
            throw new IllegalArgumentException(sbA.toString());
        }
        if (cls.isAssignableFrom(this.request.getClass())) {
            return true;
        }
        y yVar = this.request;
        if (yVar instanceof d0) {
            return ((d0) yVar).isWrapperFor(cls);
        }
        return false;
    }
}
