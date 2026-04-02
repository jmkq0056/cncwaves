package com.stripe.offlinemode.cipher;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineCipherException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u001b\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00060\u0005HÆ\u0003J/\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001a\b\u0002\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;", "Lcom/stripe/offlinemode/cipher/OfflineCipherException;", "table", "", "fields", "", "Lkotlin/Pair;", "(Ljava/lang/String;Ljava/util/List;)V", "getFields", "()Ljava/util/List;", "getTable", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineDataMismatchException extends OfflineCipherException {
    private final List<Pair<String, String>> fields;
    private final String table;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineDataMismatchException copy$default(OfflineDataMismatchException offlineDataMismatchException, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineDataMismatchException.table;
        }
        if ((i & 2) != 0) {
            list = offlineDataMismatchException.fields;
        }
        return offlineDataMismatchException.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTable() {
        return this.table;
    }

    public final List<Pair<String, String>> component2() {
        return this.fields;
    }

    public final OfflineDataMismatchException copy(String table, List<Pair<String, String>> fields) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(fields, "fields");
        return new OfflineDataMismatchException(table, fields);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineDataMismatchException)) {
            return false;
        }
        OfflineDataMismatchException offlineDataMismatchException = (OfflineDataMismatchException) other;
        return Intrinsics.areEqual(this.table, offlineDataMismatchException.table) && Intrinsics.areEqual(this.fields, offlineDataMismatchException.fields);
    }

    public int hashCode() {
        return (this.table.hashCode() * 31) + this.fields.hashCode();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "OfflineDataMismatchException(table=" + this.table + ", fields=" + this.fields + ')';
    }

    @Override // com.stripe.offlinemode.cipher.OfflineCipherException
    public String getTable() {
        return this.table;
    }

    public final List<Pair<String, String>> getFields() {
        return this.fields;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineDataMismatchException(String table, List<Pair<String, String>> fields) {
        super(table, "Field(s) from encrypted offline entity and decoded Offline data do not match", null, 4, null);
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(fields, "fields");
        this.table = table;
        this.fields = fields;
    }
}
