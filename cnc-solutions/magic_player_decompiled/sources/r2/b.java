package r2;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import k2.v;
import org.conscrypt.Conscrypt;

/* JADX INFO: loaded from: classes.dex */
public class b extends f {
    public static b n() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new b();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @Override // r2.f
    public void e(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // r2.f
    public void f(SSLSocket sSLSocket, String str, List<v> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) ((ArrayList) f.b(list)).toArray(new String[0]));
        }
    }

    @Override // r2.f
    public SSLContext h() {
        try {
            return SSLContext.getInstance("TLSv1.3", o());
        } catch (NoSuchAlgorithmException e4) {
            try {
                return SSLContext.getInstance("TLS", o());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e4);
            }
        }
    }

    @Override // r2.f
    @Nullable
    public String i(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    public final Provider o() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }
}
