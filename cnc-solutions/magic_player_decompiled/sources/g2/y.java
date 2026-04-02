package g2;

import java.io.BufferedReader;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface y {
    a getAsyncContext();

    Object getAttribute(String str);

    Enumeration<String> getAttributeNames();

    String getCharacterEncoding();

    int getContentLength();

    String getContentType();

    d getDispatcherType();

    v getInputStream();

    String getLocalAddr();

    String getLocalName();

    int getLocalPort();

    Locale getLocale();

    Enumeration<Locale> getLocales();

    String getParameter(String str);

    Map<String, String[]> getParameterMap();

    Enumeration<String> getParameterNames();

    String[] getParameterValues(String str);

    String getProtocol();

    BufferedReader getReader();

    String getRealPath(String str);

    String getRemoteAddr();

    String getRemoteHost();

    int getRemotePort();

    m getRequestDispatcher(String str);

    String getScheme();

    String getServerName();

    int getServerPort();

    p getServletContext();

    boolean isAsyncStarted();

    boolean isAsyncSupported();

    boolean isSecure();

    void removeAttribute(String str);

    void setAttribute(String str, Object obj);

    void setCharacterEncoding(String str);

    a startAsync();

    a startAsync(y yVar, e0 e0Var);
}
