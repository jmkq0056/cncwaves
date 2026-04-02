package r1;

import java.nio.charset.Charset;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f3359a;

    static {
        Charset.forName("US-ASCII");
        Charset.forName("ISO-8859-1");
        f3359a = Charset.forName(StringUtil.__UTF8);
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName(StringUtil.__UTF16);
    }
}
