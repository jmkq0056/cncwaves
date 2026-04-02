package k2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public enum e0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2111a;

    e0(String str) {
        this.f2111a = str;
    }

    public static e0 a(String str) {
        Objects.requireNonNull(str);
        str.hashCode();
        switch (str) {
            case "TLSv1.1":
                return TLS_1_1;
            case "TLSv1.2":
                return TLS_1_2;
            case "TLSv1.3":
                return TLS_1_3;
            case "SSLv3":
                return SSL_3_0;
            case "TLSv1":
                return TLS_1_0;
            default:
                throw new IllegalArgumentException(androidx.appcompat.view.a.a("Unexpected TLS version: ", str));
        }
    }
}
