package org.eclipse.jetty.server;

import g2.d0;
import g2.y;
import j2.a;
import j2.c;
import j2.e;
import j2.g;
import j2.q;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public class ServletRequestHttpWrapper extends d0 implements c {
    public ServletRequestHttpWrapper(y yVar) {
        super(yVar);
    }

    @Override // j2.c
    public boolean authenticate(e eVar) {
        return false;
    }

    @Override // j2.c
    public String getAuthType() {
        return null;
    }

    @Override // j2.c
    public String getContextPath() {
        return null;
    }

    @Override // j2.c
    public a[] getCookies() {
        return null;
    }

    @Override // j2.c
    public long getDateHeader(String str) {
        return 0L;
    }

    @Override // j2.c
    public String getHeader(String str) {
        return null;
    }

    @Override // j2.c
    public Enumeration getHeaderNames() {
        return null;
    }

    @Override // j2.c
    public Enumeration getHeaders(String str) {
        return null;
    }

    @Override // j2.c
    public int getIntHeader(String str) {
        return 0;
    }

    @Override // j2.c
    public String getMethod() {
        return null;
    }

    @Override // j2.c
    public q getPart(String str) {
        return null;
    }

    @Override // j2.c
    public Collection<q> getParts() {
        return null;
    }

    @Override // j2.c
    public String getPathInfo() {
        return null;
    }

    @Override // j2.c
    public String getPathTranslated() {
        return null;
    }

    @Override // j2.c
    public String getQueryString() {
        return null;
    }

    @Override // j2.c
    public String getRemoteUser() {
        return null;
    }

    @Override // j2.c
    public String getRequestURI() {
        return null;
    }

    @Override // j2.c
    public StringBuffer getRequestURL() {
        return null;
    }

    @Override // j2.c
    public String getRequestedSessionId() {
        return null;
    }

    @Override // j2.c
    public String getServletPath() {
        return null;
    }

    @Override // j2.c
    public g getSession() {
        return null;
    }

    @Override // j2.c
    public g getSession(boolean z3) {
        return null;
    }

    @Override // j2.c
    public Principal getUserPrincipal() {
        return null;
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromCookie() {
        return false;
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromURL() {
        return false;
    }

    @Override // j2.c
    public boolean isRequestedSessionIdFromUrl() {
        return false;
    }

    @Override // j2.c
    public boolean isRequestedSessionIdValid() {
        return false;
    }

    @Override // j2.c
    public boolean isUserInRole(String str) {
        return false;
    }

    @Override // j2.c
    public void login(String str, String str2) {
    }

    @Override // j2.c
    public void logout() {
    }
}
