package g2;

import java.io.PrintWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public interface e0 {
    void flushBuffer();

    int getBufferSize();

    String getCharacterEncoding();

    String getContentType();

    Locale getLocale();

    w getOutputStream();

    PrintWriter getWriter();

    boolean isCommitted();

    void reset();

    void resetBuffer();

    void setBufferSize(int i4);

    void setCharacterEncoding(String str);

    void setContentLength(int i4);

    void setContentType(String str);

    void setLocale(Locale locale);
}
