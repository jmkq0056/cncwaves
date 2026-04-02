package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemSize.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/example/digitalkiosk/models/ItemSize;", "", FirebaseAnalytics.Param.PRICE, "", "enabled", "", "<init>", "(Ljava/lang/String;Z)V", "getPrice", "()Ljava/lang/String;", "getEnabled", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ItemSize {
    private final boolean enabled;
    private final String price;

    public static /* synthetic */ ItemSize copy$default(ItemSize itemSize, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = itemSize.price;
        }
        if ((i & 2) != 0) {
            z = itemSize.enabled;
        }
        return itemSize.copy(str, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    public final ItemSize copy(String price, boolean enabled) {
        return new ItemSize(price, enabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemSize)) {
            return false;
        }
        ItemSize itemSize = (ItemSize) other;
        return Intrinsics.areEqual(this.price, itemSize.price) && this.enabled == itemSize.enabled;
    }

    public int hashCode() {
        String str = this.price;
        return ((str == null ? 0 : str.hashCode()) * 31) + Boolean.hashCode(this.enabled);
    }

    public String toString() {
        return "ItemSize(price=" + this.price + ", enabled=" + this.enabled + ')';
    }

    public ItemSize(String str, boolean z) {
        this.price = str;
        this.enabled = z;
    }

    public final String getPrice() {
        return this.price;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }
}
