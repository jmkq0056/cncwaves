package j2;

import g2.y;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public interface c extends y {
    boolean authenticate(e eVar);

    String getAuthType();

    String getContextPath();

    a[] getCookies();

    long getDateHeader(String str);

    String getHeader(String str);

    Enumeration<String> getHeaderNames();

    Enumeration<String> getHeaders(String str);

    int getIntHeader(String str);

    String getMethod();

    q getPart(String str);

    Collection<q> getParts();

    String getPathInfo();

    String getPathTranslated();

    String getQueryString();

    String getRemoteUser();

    String getRequestURI();

    StringBuffer getRequestURL();

    String getRequestedSessionId();

    String getServletPath();

    g getSession();

    g getSession(boolean z3);

    Principal getUserPrincipal();

    boolean isRequestedSessionIdFromCookie();

    boolean isRequestedSessionIdFromURL();

    boolean isRequestedSessionIdFromUrl();

    boolean isRequestedSessionIdValid();

    boolean isUserInRole(String str);

    void login(String str, String str2);

    void logout();
}
