package okhttp3.tls.internal.der;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: certificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lokhttp3/tls/internal/der/Extension;", "", OfflineStorageConstantsKt.ID, "", "critical", "", "value", "(Ljava/lang/String;ZLjava/lang/Object;)V", "getCritical", "()Z", "getId", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Extension {
    private final boolean critical;
    private final String id;
    private final Object value;

    public static /* synthetic */ Extension copy$default(Extension extension, String str, boolean z, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = extension.id;
        }
        if ((i & 2) != 0) {
            z = extension.critical;
        }
        if ((i & 4) != 0) {
            obj = extension.value;
        }
        return extension.copy(str, z, obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getCritical() {
        return this.critical;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Object getValue() {
        return this.value;
    }

    public final Extension copy(String id, boolean critical, Object value) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new Extension(id, critical, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Extension)) {
            return false;
        }
        Extension extension = (Extension) other;
        return Intrinsics.areEqual(this.id, extension.id) && this.critical == extension.critical && Intrinsics.areEqual(this.value, extension.value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        boolean z = this.critical;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        Object obj = this.value;
        return i + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "Extension(id=" + this.id + ", critical=" + this.critical + ", value=" + this.value + ')';
    }

    public Extension(String id, boolean z, Object obj) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.critical = z;
        this.value = obj;
    }

    public final String getId() {
        return this.id;
    }

    public final boolean getCritical() {
        return this.critical;
    }

    public final Object getValue() {
        return this.value;
    }
}
