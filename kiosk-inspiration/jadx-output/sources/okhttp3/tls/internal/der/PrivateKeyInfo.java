package okhttp3.tls.internal.der;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lokhttp3/tls/internal/der/PrivateKeyInfo;", "", "version", "", "algorithmIdentifier", "Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "privateKey", "Lokio/ByteString;", "(JLokhttp3/tls/internal/der/AlgorithmIdentifier;Lokio/ByteString;)V", "getAlgorithmIdentifier", "()Lokhttp3/tls/internal/der/AlgorithmIdentifier;", "getPrivateKey", "()Lokio/ByteString;", "getVersion", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class PrivateKeyInfo {
    private final AlgorithmIdentifier algorithmIdentifier;
    private final ByteString privateKey;
    private final long version;

    public static /* synthetic */ PrivateKeyInfo copy$default(PrivateKeyInfo privateKeyInfo, long j, AlgorithmIdentifier algorithmIdentifier, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = privateKeyInfo.version;
        }
        if ((i & 2) != 0) {
            algorithmIdentifier = privateKeyInfo.algorithmIdentifier;
        }
        if ((i & 4) != 0) {
            byteString = privateKeyInfo.privateKey;
        }
        return privateKeyInfo.copy(j, algorithmIdentifier, byteString);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AlgorithmIdentifier getAlgorithmIdentifier() {
        return this.algorithmIdentifier;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ByteString getPrivateKey() {
        return this.privateKey;
    }

    public final PrivateKeyInfo copy(long version, AlgorithmIdentifier algorithmIdentifier, ByteString privateKey) {
        Intrinsics.checkNotNullParameter(algorithmIdentifier, "algorithmIdentifier");
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        return new PrivateKeyInfo(version, algorithmIdentifier, privateKey);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PrivateKeyInfo)) {
            return false;
        }
        PrivateKeyInfo privateKeyInfo = (PrivateKeyInfo) other;
        return this.version == privateKeyInfo.version && Intrinsics.areEqual(this.algorithmIdentifier, privateKeyInfo.algorithmIdentifier) && Intrinsics.areEqual(this.privateKey, privateKeyInfo.privateKey);
    }

    public String toString() {
        return "PrivateKeyInfo(version=" + this.version + ", algorithmIdentifier=" + this.algorithmIdentifier + ", privateKey=" + this.privateKey + ')';
    }

    public PrivateKeyInfo(long j, AlgorithmIdentifier algorithmIdentifier, ByteString privateKey) {
        Intrinsics.checkNotNullParameter(algorithmIdentifier, "algorithmIdentifier");
        Intrinsics.checkNotNullParameter(privateKey, "privateKey");
        this.version = j;
        this.algorithmIdentifier = algorithmIdentifier;
        this.privateKey = privateKey;
    }

    public final long getVersion() {
        return this.version;
    }

    public final AlgorithmIdentifier getAlgorithmIdentifier() {
        return this.algorithmIdentifier;
    }

    public final ByteString getPrivateKey() {
        return this.privateKey;
    }

    public int hashCode() {
        return (((((int) this.version) * 31) + this.algorithmIdentifier.hashCode()) * 31) + this.privateKey.hashCode();
    }
}
