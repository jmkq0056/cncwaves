package j2;

import g2.f0;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class f extends f0 implements e {
    public f(e eVar) {
        super(eVar);
    }

    private e _getHttpServletResponse() {
        return (e) super.getResponse();
    }

    @Override // j2.e
    public void addCookie(a aVar) {
        _getHttpServletResponse().addCookie(aVar);
    }

    @Override // j2.e
    public void addDateHeader(String str, long j4) {
        _getHttpServletResponse().addDateHeader(str, j4);
    }

    @Override // j2.e
    public void addHeader(String str, String str2) {
        _getHttpServletResponse().addHeader(str, str2);
    }

    @Override // j2.e
    public void addIntHeader(String str, int i4) {
        _getHttpServletResponse().addIntHeader(str, i4);
    }

    @Override // j2.e
    public boolean containsHeader(String str) {
        return _getHttpServletResponse().containsHeader(str);
    }

    @Override // j2.e
    public String encodeRedirectURL(String str) {
        return _getHttpServletResponse().encodeRedirectURL(str);
    }

    @Override // j2.e
    public String encodeRedirectUrl(String str) {
        return _getHttpServletResponse().encodeRedirectUrl(str);
    }

    @Override // j2.e
    public String encodeURL(String str) {
        return _getHttpServletResponse().encodeURL(str);
    }

    @Override // j2.e
    public String encodeUrl(String str) {
        return _getHttpServletResponse().encodeUrl(str);
    }

    @Override // j2.e
    public String getHeader(String str) {
        return _getHttpServletResponse().getHeader(str);
    }

    @Override // j2.e
    public Collection<String> getHeaderNames() {
        return _getHttpServletResponse().getHeaderNames();
    }

    @Override // j2.e
    public Collection<String> getHeaders(String str) {
        return _getHttpServletResponse().getHeaders(str);
    }

    @Override // j2.e
    public int getStatus() {
        return _getHttpServletResponse().getStatus();
    }

    @Override // j2.e
    public void sendError(int i4, String str) {
        _getHttpServletResponse().sendError(i4, str);
    }

    @Override // j2.e
    public void sendRedirect(String str) {
        _getHttpServletResponse().sendRedirect(str);
    }

    @Override // j2.e
    public void setDateHeader(String str, long j4) {
        _getHttpServletResponse().setDateHeader(str, j4);
    }

    @Override // j2.e
    public void setHeader(String str, String str2) {
        _getHttpServletResponse().setHeader(str, str2);
    }

    @Override // j2.e
    public void setIntHeader(String str, int i4) {
        _getHttpServletResponse().setIntHeader(str, i4);
    }

    @Override // j2.e
    public void setStatus(int i4) {
        _getHttpServletResponse().setStatus(i4);
    }

    @Override // j2.e
    public void sendError(int i4) {
        _getHttpServletResponse().sendError(i4);
    }

    @Override // j2.e
    public void setStatus(int i4, String str) {
        _getHttpServletResponse().setStatus(i4, str);
    }
}
