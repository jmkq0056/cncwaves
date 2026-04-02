package com.example.digitalkiosk.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KioskMeta.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/models/KioskMeta;", "", OfflineStorageConstantsKt.ID, "", "kiosk_id", "name", "", "value", "<init>", "(IILjava/lang/String;Ljava/lang/String;)V", "getId", "()I", "getKiosk_id", "getName", "()Ljava/lang/String;", "getValue", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class KioskMeta {
    private final int id;
    private final int kiosk_id;
    private final String name;
    private final String value;

    public static /* synthetic */ KioskMeta copy$default(KioskMeta kioskMeta, int i, int i2, String str, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = kioskMeta.id;
        }
        if ((i3 & 2) != 0) {
            i2 = kioskMeta.kiosk_id;
        }
        if ((i3 & 4) != 0) {
            str = kioskMeta.name;
        }
        if ((i3 & 8) != 0) {
            str2 = kioskMeta.value;
        }
        return kioskMeta.copy(i, i2, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getKiosk_id() {
        return this.kiosk_id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    public final KioskMeta copy(int id, int kiosk_id, String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return new KioskMeta(id, kiosk_id, name, value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KioskMeta)) {
            return false;
        }
        KioskMeta kioskMeta = (KioskMeta) other;
        return this.id == kioskMeta.id && this.kiosk_id == kioskMeta.kiosk_id && Intrinsics.areEqual(this.name, kioskMeta.name) && Intrinsics.areEqual(this.value, kioskMeta.value);
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.id) * 31) + Integer.hashCode(this.kiosk_id)) * 31) + this.name.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "KioskMeta(id=" + this.id + ", kiosk_id=" + this.kiosk_id + ", name=" + this.name + ", value=" + this.value + ')';
    }

    public KioskMeta(int i, int i2, String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.id = i;
        this.kiosk_id = i2;
        this.name = name;
        this.value = value;
    }

    public final int getId() {
        return this.id;
    }

    public final int getKiosk_id() {
        return this.kiosk_id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }
}
