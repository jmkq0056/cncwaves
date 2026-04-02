package k2;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f2112c = new f(new LinkedHashSet(new ArrayList()), null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<a> f2113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final v1.q f2114b;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            Objects.requireNonNull((a) obj);
            throw null;
        }

        public int hashCode() {
            throw null;
        }

        public String toString() {
            new StringBuilder().append((String) null);
            throw null;
        }
    }

    public f(Set<a> set, @Nullable v1.q qVar) {
        this.f2113a = set;
        this.f2114b = qVar;
    }

    public static String b(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        StringBuilder sbA = android.support.v4.media.f.a("sha256/");
        sbA.append(u2.h.h(((X509Certificate) certificate).getPublicKey().getEncoded()).d("SHA-256").a());
        return sbA.toString();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List listEmptyList = Collections.emptyList();
        Iterator<a> it = this.f2113a.iterator();
        if (it.hasNext()) {
            Objects.requireNonNull(it.next());
            throw null;
        }
        if (listEmptyList.isEmpty()) {
            return;
        }
        v1.q qVar = this.f2114b;
        if (qVar != null) {
            list = qVar.a(list, str);
        }
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (listEmptyList.size() > 0) {
                Objects.requireNonNull((a) listEmptyList.get(0));
                throw null;
            }
        }
        StringBuilder sbA = android.support.v4.media.g.a("Certificate pinning failure!", "\n  Peer certificate chain:");
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i5);
            sbA.append("\n    ");
            sbA.append(b(x509Certificate));
            sbA.append(": ");
            sbA.append(x509Certificate.getSubjectDN().getName());
        }
        sbA.append("\n  Pinned certificates for ");
        sbA.append(str);
        sbA.append(":");
        int size3 = listEmptyList.size();
        for (int i6 = 0; i6 < size3; i6++) {
            a aVar = (a) listEmptyList.get(i6);
            sbA.append("\n    ");
            sbA.append(aVar);
        }
        throw new SSLPeerUnverifiedException(sbA.toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (l2.c.m(this.f2114b, fVar.f2114b) && this.f2113a.equals(fVar.f2113a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        v1.q qVar = this.f2114b;
        return this.f2113a.hashCode() + ((qVar != null ? qVar.hashCode() : 0) * 31);
    }
}
