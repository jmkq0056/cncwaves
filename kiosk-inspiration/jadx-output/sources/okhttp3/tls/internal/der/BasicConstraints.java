package okhttp3.tls.internal.der;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ$\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lokhttp3/tls/internal/der/BasicConstraints;", "", "ca", "", "maxIntermediateCas", "", "(ZLjava/lang/Long;)V", "getCa", "()Z", "getMaxIntermediateCas", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "copy", "(ZLjava/lang/Long;)Lokhttp3/tls/internal/der/BasicConstraints;", "equals", "other", "hashCode", "", "toString", "", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class BasicConstraints {
    private final boolean ca;
    private final Long maxIntermediateCas;

    public static /* synthetic */ BasicConstraints copy$default(BasicConstraints basicConstraints, boolean z, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            z = basicConstraints.ca;
        }
        if ((i & 2) != 0) {
            l = basicConstraints.maxIntermediateCas;
        }
        return basicConstraints.copy(z, l);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getCa() {
        return this.ca;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getMaxIntermediateCas() {
        return this.maxIntermediateCas;
    }

    public final BasicConstraints copy(boolean ca, Long maxIntermediateCas) {
        return new BasicConstraints(ca, maxIntermediateCas);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BasicConstraints)) {
            return false;
        }
        BasicConstraints basicConstraints = (BasicConstraints) other;
        return this.ca == basicConstraints.ca && Intrinsics.areEqual(this.maxIntermediateCas, basicConstraints.maxIntermediateCas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.ca;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        Long l = this.maxIntermediateCas;
        return i + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "BasicConstraints(ca=" + this.ca + ", maxIntermediateCas=" + this.maxIntermediateCas + ')';
    }

    public BasicConstraints(boolean z, Long l) {
        this.ca = z;
        this.maxIntermediateCas = l;
    }

    public final boolean getCa() {
        return this.ca;
    }

    public final Long getMaxIntermediateCas() {
        return this.maxIntermediateCas;
    }
}
