package g2;

import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public interface p {
    Object getAttribute(String str);

    String getContextPath();

    String getInitParameter(String str);

    int getMajorVersion();

    String getMimeType(String str);

    m getRequestDispatcher(String str);

    URL getResource(String str);

    void log(String str);

    void log(String str, Throwable th);
}
