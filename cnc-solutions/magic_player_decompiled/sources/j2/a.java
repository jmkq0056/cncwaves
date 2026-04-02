package j2;

import java.io.Serializable;
import java.text.MessageFormat;
import java.util.ResourceBundle;
import org.eclipse.jetty.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Cloneable, Serializable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f2014g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static ResourceBundle f2015h = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");
    private static final long serialVersionUID = -6454587001725327448L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2021f = 0;

    static {
        if (Boolean.valueOf(System.getProperty("org.glassfish.web.rfc2109_cookie_names_enforced", "true")).booleanValue()) {
            f2014g = "/()<>@,;:\\\"[]?={} \t";
        } else {
            f2014g = ",; ";
        }
    }

    public a(String str, String str2) {
        boolean z3;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(f2015h.getString("err.cookie_name_blank"));
        }
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt < ' ' || cCharAt >= 127 || f2014g.indexOf(cCharAt) != -1) {
                z3 = false;
                break;
            }
        }
        z3 = true;
        if (!z3 || str.equalsIgnoreCase("Comment") || str.equalsIgnoreCase("Discard") || str.equalsIgnoreCase("Domain") || str.equalsIgnoreCase(HttpHeaders.EXPIRES) || str.equalsIgnoreCase("Max-Age") || str.equalsIgnoreCase("Path") || str.equalsIgnoreCase("Secure") || str.equalsIgnoreCase("Version") || str.startsWith("$")) {
            throw new IllegalArgumentException(MessageFormat.format(f2015h.getString("err.cookie_name_is_token"), str));
        }
        this.f2016a = str;
        this.f2017b = str2;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }
}
