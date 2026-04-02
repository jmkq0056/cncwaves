package o2;

import java.net.ProtocolException;
import k2.v;
import org.eclipse.jetty.http.HttpVersions;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f2876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2878c;

    public j(v vVar, int i4, String str) {
        this.f2876a = vVar;
        this.f2877b = i4;
        this.f2878c = str;
    }

    public static j a(String str) throws ProtocolException {
        String strSubstring;
        v vVar = v.HTTP_1_0;
        int i4 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
                }
                vVar = v.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
            }
            i4 = 4;
        }
        int i5 = i4 + 3;
        if (str.length() < i5) {
            throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
        }
        try {
            int i6 = Integer.parseInt(str.substring(i4, i5));
            if (str.length() <= i5) {
                strSubstring = "";
            } else {
                if (str.charAt(i5) != ' ') {
                    throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
                }
                strSubstring = str.substring(i4 + 4);
            }
            return new j(vVar, i6, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException(androidx.appcompat.view.a.a("Unexpected status line: ", str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2876a == v.HTTP_1_0 ? HttpVersions.HTTP_1_0 : HttpVersions.HTTP_1_1);
        sb.append(' ');
        sb.append(this.f2877b);
        if (this.f2878c != null) {
            sb.append(' ');
            sb.append(this.f2878c);
        }
        return sb.toString();
    }
}
