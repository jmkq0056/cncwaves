package org.eclipse.jetty.server;

import g2.e0;
import g2.f0;
import j2.a;
import j2.e;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class ServletResponseHttpWrapper extends f0 implements e {
    public ServletResponseHttpWrapper(e0 e0Var) {
        super(e0Var);
    }

    @Override // j2.e
    public void addCookie(a aVar) {
    }

    @Override // j2.e
    public void addDateHeader(String str, long j4) {
    }

    @Override // j2.e
    public void addHeader(String str, String str2) {
    }

    @Override // j2.e
    public void addIntHeader(String str, int i4) {
    }

    @Override // j2.e
    public boolean containsHeader(String str) {
        return false;
    }

    @Override // j2.e
    public String encodeRedirectURL(String str) {
        return null;
    }

    @Override // j2.e
    public String encodeRedirectUrl(String str) {
        return null;
    }

    @Override // j2.e
    public String encodeURL(String str) {
        return null;
    }

    @Override // j2.e
    public String encodeUrl(String str) {
        return null;
    }

    @Override // j2.e
    public String getHeader(String str) {
        return null;
    }

    @Override // j2.e
    public Collection<String> getHeaderNames() {
        return null;
    }

    @Override // j2.e
    public Collection<String> getHeaders(String str) {
        return null;
    }

    @Override // j2.e
    public int getStatus() {
        return 0;
    }

    @Override // j2.e
    public void sendError(int i4) {
    }

    @Override // j2.e
    public void sendError(int i4, String str) {
    }

    @Override // j2.e
    public void sendRedirect(String str) {
    }

    @Override // j2.e
    public void setDateHeader(String str, long j4) {
    }

    @Override // j2.e
    public void setHeader(String str, String str2) {
    }

    @Override // j2.e
    public void setIntHeader(String str, int i4) {
    }

    @Override // j2.e
    public void setStatus(int i4) {
    }

    @Override // j2.e
    public void setStatus(int i4, String str) {
    }
}
