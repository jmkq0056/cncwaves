package okhttp3.tls.internal.der;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: AnyValue.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\nHÆ\u0003J;\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\"\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010$\u001a\u00020\u0003H\u0016J\t\u0010%\u001a\u00020&HÖ\u0001R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006'"}, d2 = {"Lokhttp3/tls/internal/der/AnyValue;", "", "tagClass", "", "tag", "", "constructed", "", "length", "bytes", "Lokio/ByteString;", "(IJZJLokio/ByteString;)V", "getBytes", "()Lokio/ByteString;", "getConstructed", "()Z", "setConstructed", "(Z)V", "getLength", "()J", "setLength", "(J)V", "getTag", "setTag", "getTagClass", "()I", "setTagClass", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AnyValue {
    private final ByteString bytes;
    private boolean constructed;
    private long length;
    private long tag;
    private int tagClass;

    public static /* synthetic */ AnyValue copy$default(AnyValue anyValue, int i, long j, boolean z, long j2, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = anyValue.tagClass;
        }
        if ((i2 & 2) != 0) {
            j = anyValue.tag;
        }
        if ((i2 & 4) != 0) {
            z = anyValue.constructed;
        }
        if ((i2 & 8) != 0) {
            j2 = anyValue.length;
        }
        if ((i2 & 16) != 0) {
            byteString = anyValue.bytes;
        }
        boolean z2 = z;
        return anyValue.copy(i, j, z2, j2, byteString);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getTagClass() {
        return this.tagClass;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getTag() {
        return this.tag;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getConstructed() {
        return this.constructed;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getLength() {
        return this.length;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ByteString getBytes() {
        return this.bytes;
    }

    public final AnyValue copy(int tagClass, long tag, boolean constructed, long length, ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return new AnyValue(tagClass, tag, constructed, length, bytes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnyValue)) {
            return false;
        }
        AnyValue anyValue = (AnyValue) other;
        return this.tagClass == anyValue.tagClass && this.tag == anyValue.tag && this.constructed == anyValue.constructed && this.length == anyValue.length && Intrinsics.areEqual(this.bytes, anyValue.bytes);
    }

    public String toString() {
        return "AnyValue(tagClass=" + this.tagClass + ", tag=" + this.tag + ", constructed=" + this.constructed + ", length=" + this.length + ", bytes=" + this.bytes + ')';
    }

    public AnyValue(int i, long j, boolean z, long j2, ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.tagClass = i;
        this.tag = j;
        this.constructed = z;
        this.length = j2;
        this.bytes = bytes;
    }

    public /* synthetic */ AnyValue(int i, long j, boolean z, long j2, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? -1L : j2, byteString);
    }

    public final int getTagClass() {
        return this.tagClass;
    }

    public final void setTagClass(int i) {
        this.tagClass = i;
    }

    public final long getTag() {
        return this.tag;
    }

    public final void setTag(long j) {
        this.tag = j;
    }

    public final boolean getConstructed() {
        return this.constructed;
    }

    public final void setConstructed(boolean z) {
        this.constructed = z;
    }

    public final long getLength() {
        return this.length;
    }

    public final void setLength(long j) {
        this.length = j;
    }

    public final ByteString getBytes() {
        return this.bytes;
    }

    public int hashCode() {
        return (((((((this.tagClass * 31) + ((int) this.tag)) * 31) + (!this.constructed ? 1 : 0)) * 31) + ((int) this.length)) * 31) + this.bytes.hashCode();
    }
}
