package com.example.digitalkiosk.models;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Table.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/models/Table;", "", OfflineStorageConstantsKt.ID, "", "table_number", "chairs", NotificationCompat.CATEGORY_STATUS, "", "<init>", "(IIILjava/lang/String;)V", "getId", "()I", "getTable_number", "getChairs", "getStatus", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Table {
    private final int chairs;
    private final int id;
    private final String status;
    private final int table_number;

    public static /* synthetic */ Table copy$default(Table table, int i, int i2, int i3, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = table.id;
        }
        if ((i4 & 2) != 0) {
            i2 = table.table_number;
        }
        if ((i4 & 4) != 0) {
            i3 = table.chairs;
        }
        if ((i4 & 8) != 0) {
            str = table.status;
        }
        return table.copy(i, i2, i3, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTable_number() {
        return this.table_number;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getChairs() {
        return this.chairs;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    public final Table copy(int id, int table_number, int chairs, String status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new Table(id, table_number, chairs, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Table)) {
            return false;
        }
        Table table = (Table) other;
        return this.id == table.id && this.table_number == table.table_number && this.chairs == table.chairs && Intrinsics.areEqual(this.status, table.status);
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.id) * 31) + Integer.hashCode(this.table_number)) * 31) + Integer.hashCode(this.chairs)) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "Table(id=" + this.id + ", table_number=" + this.table_number + ", chairs=" + this.chairs + ", status=" + this.status + ')';
    }

    public Table(int i, int i2, int i3, String status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.id = i;
        this.table_number = i2;
        this.chairs = i3;
        this.status = status;
    }

    public final int getId() {
        return this.id;
    }

    public final int getTable_number() {
        return this.table_number;
    }

    public final int getChairs() {
        return this.chairs;
    }

    public final String getStatus() {
        return this.status;
    }
}
