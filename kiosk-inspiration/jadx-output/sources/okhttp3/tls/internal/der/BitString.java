package okhttp3.tls.internal.der;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: BitString.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lokhttp3/tls/internal/der/BitString;", "", "byteString", "Lokio/ByteString;", "unusedBitsCount", "", "(Lokio/ByteString;I)V", "getByteString", "()Lokio/ByteString;", "getUnusedBitsCount", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class BitString {
    private final ByteString byteString;
    private final int unusedBitsCount;

    public static /* synthetic */ BitString copy$default(BitString bitString, ByteString byteString, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            byteString = bitString.byteString;
        }
        if ((i2 & 2) != 0) {
            i = bitString.unusedBitsCount;
        }
        return bitString.copy(byteString, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ByteString getByteString() {
        return this.byteString;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getUnusedBitsCount() {
        return this.unusedBitsCount;
    }

    public final BitString copy(ByteString byteString, int unusedBitsCount) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        return new BitString(byteString, unusedBitsCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BitString)) {
            return false;
        }
        BitString bitString = (BitString) other;
        return Intrinsics.areEqual(this.byteString, bitString.byteString) && this.unusedBitsCount == bitString.unusedBitsCount;
    }

    public String toString() {
        return "BitString(byteString=" + this.byteString + ", unusedBitsCount=" + this.unusedBitsCount + ')';
    }

    public BitString(ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        this.byteString = byteString;
        this.unusedBitsCount = i;
    }

    public final ByteString getByteString() {
        return this.byteString;
    }

    public final int getUnusedBitsCount() {
        return this.unusedBitsCount;
    }

    public int hashCode() {
        return (this.byteString.hashCode() * 31) + this.unusedBitsCount;
    }
}
