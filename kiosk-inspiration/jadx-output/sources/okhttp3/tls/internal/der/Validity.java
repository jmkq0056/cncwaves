package okhttp3.tls.internal.der;

import kotlin.Metadata;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lokhttp3/tls/internal/der/Validity;", "", "notBefore", "", "notAfter", "(JJ)V", "getNotAfter", "()J", "getNotBefore", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Validity {
    private final long notAfter;
    private final long notBefore;

    public static /* synthetic */ Validity copy$default(Validity validity, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = validity.notBefore;
        }
        if ((i & 2) != 0) {
            j2 = validity.notAfter;
        }
        return validity.copy(j, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getNotBefore() {
        return this.notBefore;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getNotAfter() {
        return this.notAfter;
    }

    public final Validity copy(long notBefore, long notAfter) {
        return new Validity(notBefore, notAfter);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Validity)) {
            return false;
        }
        Validity validity = (Validity) other;
        return this.notBefore == validity.notBefore && this.notAfter == validity.notAfter;
    }

    public String toString() {
        return "Validity(notBefore=" + this.notBefore + ", notAfter=" + this.notAfter + ')';
    }

    public Validity(long j, long j2) {
        this.notBefore = j;
        this.notAfter = j2;
    }

    public final long getNotBefore() {
        return this.notBefore;
    }

    public final long getNotAfter() {
        return this.notAfter;
    }

    public int hashCode() {
        return (((int) this.notBefore) * 31) + ((int) this.notAfter);
    }
}
