package j2;

import g2.d0;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public class d extends d0 implements c {
    public d(c cVar) {
        super(cVar);
    }

    private c _getHttpServletRequest() {
        return (c) super.getRequest();
    }

    @Override // j2.c
    public boolean authenticate(e eVar) {
        return _getHttpServletRequest().authenticate(eVar);
    }

    @Override // j2.c
    public String getAuthType() {
        return _getHttpServletRequest().getAuthType();
    }

    @Override // j2.c
    public String getContextPath() {
        return _getHttpServletRequest().getContextPath();
    }

    @Override // j2.c
    public a[] getCookies() {
        return _getHttpServletRequest().getCookies();
    }

    @Override // j2.c
    public long getDateHeader(String str) {
        return _getHttpServletRequest().getDateHeader(str);
    }

    @Override // j2.c
    public String getHeader(String str) {
        return _getHttpServletRequest().getHeader(str);
    }

    @Override // j2.c
    public Enumeration<String> getHeaderNames() {
        return _getHttpServletRequest().getHeaderNames();
    }

    @Override // j2.c
    public Enumeration<String> getHeaders(String str) {
        return _getHttpServletRequest().getHeaders(str);
    }

    @Override // j2.c
    public int getIntHeader(String str) {
        return _getHttpServletRequest().getIntHeader(str);
    }

    @Override // j2.c
    public String getMethod() {
        return _getHttpServletRequest().getMethod();
    }

    @Override // j2.c
    public q getPart(String str) {
        return _getHttpServletRequest().getPart(str);
    }

    @Override // j2.c
    public Collection<q> getParts() {
        return _getHttpServletRequest().getParts();
    }

    @Override // j2.c
    public String getPathInfo() {
        return _getHttpServletRequest().getPathInfo();
    }

    @Override // j2.c
    public String getPathTranslated() {
        return _getHttpServletRequest().getPathTranslated();
    }

    @Override // j2.c
    public String getQueryString() {
        return _getHttpServletRequest().getQueryString();
    }

    @Override // j2.c
    public String getRemoteUser() {
        return _getHttpServletRequest().getRemoteUser();
    }

    @Override // j2.c
    public String getRequestURI() {
        return _getHttpServletRequest().getRequestURI();
    }

    @Override // j2.c
    public StringBuffer getRequestURL() {
        return _getHttpServletRequest().getRequestURL();
    }

    @Override // j2.c
    public String getRequestedSessionId() {
        return _getHttpServletRequest().getRequestedSessionId();
    }

    @Override // j2.c
    public String getServletPath() {
        return _getHttpServletRequest().getServletPath();
    }

    @Override // j2.c
    public g getSession(boolean z3) {
        return _getHttpServletRequest().getSession(z3);
    }

    @Override // j2.c
    public Principal getUserPrincipal() {
        return _getHttpServletRequest().getUserPrincipal();
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromCookie() {
        return _getHttpServletRequest().isRequestedSessionIdFromCookie();
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromURL() {
        return _getHttpServletRequest().isRequestedSessionIdFromURL();
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromUrl() {
        return _getHttpServletRequest().isRequestedSessionIdFromUrl();
    }

    @Override // j2.c
    public boolean isRequestedSessionIdValid() {
        return _getHttpServletRequest().isRequestedSessionIdValid();
    }

    @Override // j2.c
    public boolean isUserInRole(String str) {
        return _getHttpServletRequest().isUserInRole(str);
    }

    @Override // j2.c
    public void login(String str, String str2) {
        _getHttpServletRequest().login(str, str2);
    }

    @Override // j2.c
    public void logout() {
        _getHttpServletRequest().logout();
    }

    @Override // j2.c
    public g getSession() {
        return _getHttpServletRequest().getSession();
    }
}
