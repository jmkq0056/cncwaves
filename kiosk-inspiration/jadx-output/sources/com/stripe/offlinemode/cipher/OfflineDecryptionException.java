package com.stripe.offlinemode.cipher;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineCipherException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;", "Lcom/stripe/offlinemode/cipher/OfflineCipherException;", "table", "", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "getTable", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineDecryptionException extends OfflineCipherException {
    private final Throwable cause;
    private final String table;

    public static /* synthetic */ OfflineDecryptionException copy$default(OfflineDecryptionException offlineDecryptionException, String str, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineDecryptionException.table;
        }
        if ((i & 2) != 0) {
            th = offlineDecryptionException.cause;
        }
        return offlineDecryptionException.copy(str, th);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTable() {
        return this.table;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Throwable getCause() {
        return this.cause;
    }

    public final OfflineDecryptionException copy(String table, Throwable cause) {
        Intrinsics.checkNotNullParameter(table, "table");
        return new OfflineDecryptionException(table, cause);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineDecryptionException)) {
            return false;
        }
        OfflineDecryptionException offlineDecryptionException = (OfflineDecryptionException) other;
        return Intrinsics.areEqual(this.table, offlineDecryptionException.table) && Intrinsics.areEqual(this.cause, offlineDecryptionException.cause);
    }

    public int hashCode() {
        int iHashCode = this.table.hashCode() * 31;
        Throwable th = this.cause;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "OfflineDecryptionException(table=" + this.table + ", cause=" + this.cause + ')';
    }

    @Override // com.stripe.offlinemode.cipher.OfflineCipherException
    public String getTable() {
        return this.table;
    }

    @Override // com.stripe.offlinemode.cipher.OfflineCipherException, java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineDecryptionException(String table, Throwable th) {
        super(table, "Failed to decrypt an offline entity.", th, null);
        Intrinsics.checkNotNullParameter(table, "table");
        this.table = table;
        this.cause = th;
    }
}
