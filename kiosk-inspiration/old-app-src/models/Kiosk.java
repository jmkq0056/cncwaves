package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Kiosk.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006 "}, d2 = {"Lcom/example/digitalkiosk/models/Kiosk;", "", "kiosk_id", "", OfflineStorageConstantsKt.ID, "", "name", FirebaseAnalytics.Param.LOCATION, "merchant", "branch", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V", "getKiosk_id", "()Ljava/lang/String;", "getId", "()I", "getName", "getLocation", "getMerchant", "getBranch", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Kiosk {
    private final int branch;
    private final int id;
    private final String kiosk_id;
    private final String location;
    private final int merchant;
    private final String name;

    public static /* synthetic */ Kiosk copy$default(Kiosk kiosk, String str, int i, String str2, String str3, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = kiosk.kiosk_id;
        }
        if ((i4 & 2) != 0) {
            i = kiosk.id;
        }
        if ((i4 & 4) != 0) {
            str2 = kiosk.name;
        }
        if ((i4 & 8) != 0) {
            str3 = kiosk.location;
        }
        if ((i4 & 16) != 0) {
            i2 = kiosk.merchant;
        }
        if ((i4 & 32) != 0) {
            i3 = kiosk.branch;
        }
        int i5 = i2;
        int i6 = i3;
        return kiosk.copy(str, i, str2, str3, i5, i6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKiosk_id() {
        return this.kiosk_id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getMerchant() {
        return this.merchant;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getBranch() {
        return this.branch;
    }

    public final Kiosk copy(String kiosk_id, int id, String name, String location, int merchant, int branch) {
        Intrinsics.checkNotNullParameter(kiosk_id, "kiosk_id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return new Kiosk(kiosk_id, id, name, location, merchant, branch);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Kiosk)) {
            return false;
        }
        Kiosk kiosk = (Kiosk) other;
        return Intrinsics.areEqual(this.kiosk_id, kiosk.kiosk_id) && this.id == kiosk.id && Intrinsics.areEqual(this.name, kiosk.name) && Intrinsics.areEqual(this.location, kiosk.location) && this.merchant == kiosk.merchant && this.branch == kiosk.branch;
    }

    public int hashCode() {
        return (((((((((this.kiosk_id.hashCode() * 31) + Integer.hashCode(this.id)) * 31) + this.name.hashCode()) * 31) + this.location.hashCode()) * 31) + Integer.hashCode(this.merchant)) * 31) + Integer.hashCode(this.branch);
    }

    public String toString() {
        return "Kiosk(kiosk_id=" + this.kiosk_id + ", id=" + this.id + ", name=" + this.name + ", location=" + this.location + ", merchant=" + this.merchant + ", branch=" + this.branch + ')';
    }

    public Kiosk(String kiosk_id, int i, String name, String location, int i2, int i3) {
        Intrinsics.checkNotNullParameter(kiosk_id, "kiosk_id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        this.kiosk_id = kiosk_id;
        this.id = i;
        this.name = name;
        this.location = location;
        this.merchant = i2;
        this.branch = i3;
    }

    public final int getBranch() {
        return this.branch;
    }

    public final int getId() {
        return this.id;
    }

    public final String getKiosk_id() {
        return this.kiosk_id;
    }

    public final String getLocation() {
        return this.location;
    }

    public final int getMerchant() {
        return this.merchant;
    }

    public final String getName() {
        return this.name;
    }
}
