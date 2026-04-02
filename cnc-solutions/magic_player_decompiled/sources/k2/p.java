package k2;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f2175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f2176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<Certificate> f2177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<Certificate> f2178d;

    public p(e0 e0Var, g gVar, List<Certificate> list, List<Certificate> list2) {
        this.f2175a = e0Var;
        this.f2176b = gVar;
        this.f2177c = list;
        this.f2178d = list2;
    }

    public static p a(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        g gVarA = g.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if (Constraint.NONE.equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        e0 e0VarA = e0.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listQ = peerCertificates != null ? l2.c.q(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new p(e0VarA, gVarA, listQ, localCertificates != null ? l2.c.q(localCertificates) : Collections.emptyList());
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f2175a.equals(pVar.f2175a) && this.f2176b.equals(pVar.f2176b) && this.f2177c.equals(pVar.f2177c) && this.f2178d.equals(pVar.f2178d);
    }

    public int hashCode() {
        return this.f2178d.hashCode() + ((this.f2177c.hashCode() + ((this.f2176b.hashCode() + ((this.f2175a.hashCode() + 527) * 31)) * 31)) * 31);
    }
}
