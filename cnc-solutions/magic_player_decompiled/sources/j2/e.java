package j2;

import g2.e0;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public interface e extends e0 {
    void addCookie(a aVar);

    void addDateHeader(String str, long j4);

    void addHeader(String str, String str2);

    void addIntHeader(String str, int i4);

    boolean containsHeader(String str);

    String encodeRedirectURL(String str);

    String encodeRedirectUrl(String str);

    String encodeURL(String str);

    String encodeUrl(String str);

    String getHeader(String str);

    Collection<String> getHeaderNames();

    Collection<String> getHeaders(String str);

    int getStatus();

    void sendError(int i4);

    void sendError(int i4, String str);

    void sendRedirect(String str);

    void setDateHeader(String str, long j4);

    void setHeader(String str, String str2);

    void setIntHeader(String str, int i4);

    void setStatus(int i4);

    void setStatus(int i4, String str);
}
