package okhttp3.tls.internal.der;

import kotlin.Metadata;

/* JADX INFO: compiled from: DerHeader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u0000 #2\u00020\u0001:\u0001#B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010 \u001a\u00020\u0003H\u0016J\b\u0010!\u001a\u00020\"H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lokhttp3/tls/internal/der/DerHeader;", "", "tagClass", "", "tag", "", "constructed", "", "length", "(IJZJ)V", "getConstructed", "()Z", "setConstructed", "(Z)V", "isEndOfData", "getLength", "()J", "setLength", "(J)V", "getTag", "setTag", "getTagClass", "()I", "setTagClass", "(I)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "Companion", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class DerHeader {
    public static final int TAG_CLASS_APPLICATION = 64;
    public static final int TAG_CLASS_CONTEXT_SPECIFIC = 128;
    public static final int TAG_CLASS_PRIVATE = 192;
    public static final int TAG_CLASS_UNIVERSAL = 0;
    public static final long TAG_END_OF_CONTENTS = 0;
    private boolean constructed;
    private long length;
    private long tag;
    private int tagClass;

    public static /* synthetic */ DerHeader copy$default(DerHeader derHeader, int i, long j, boolean z, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = derHeader.tagClass;
        }
        if ((i2 & 2) != 0) {
            j = derHeader.tag;
        }
        if ((i2 & 4) != 0) {
            z = derHeader.constructed;
        }
        if ((i2 & 8) != 0) {
            j2 = derHeader.length;
        }
        boolean z2 = z;
        return derHeader.copy(i, j, z2, j2);
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

    public final DerHeader copy(int tagClass, long tag, boolean constructed, long length) {
        return new DerHeader(tagClass, tag, constructed, length);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DerHeader)) {
            return false;
        }
        DerHeader derHeader = (DerHeader) other;
        return this.tagClass == derHeader.tagClass && this.tag == derHeader.tag && this.constructed == derHeader.constructed && this.length == derHeader.length;
    }

    public DerHeader(int i, long j, boolean z, long j2) {
        this.tagClass = i;
        this.tag = j;
        this.constructed = z;
        this.length = j2;
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

    public final boolean isEndOfData() {
        return this.tagClass == 0 && this.tag == 0;
    }

    public int hashCode() {
        return (((((this.tagClass * 31) + ((int) this.tag)) * 31) + (!this.constructed ? 1 : 0)) * 31) + ((int) this.length);
    }

    public String toString() {
        return new StringBuilder().append(this.tagClass).append('/').append(this.tag).toString();
    }
}
