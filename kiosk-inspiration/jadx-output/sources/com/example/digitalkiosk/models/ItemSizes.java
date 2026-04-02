package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemSizes.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/models/ItemSizes;", "", "xl", "Lcom/example/digitalkiosk/models/ItemSize;", "large", FirebaseAnalytics.Param.MEDIUM, "<init>", "(Lcom/example/digitalkiosk/models/ItemSize;Lcom/example/digitalkiosk/models/ItemSize;Lcom/example/digitalkiosk/models/ItemSize;)V", "getXl", "()Lcom/example/digitalkiosk/models/ItemSize;", "getLarge", "getMedium", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ItemSizes {
    private final ItemSize large;
    private final ItemSize medium;
    private final ItemSize xl;

    public static /* synthetic */ ItemSizes copy$default(ItemSizes itemSizes, ItemSize itemSize, ItemSize itemSize2, ItemSize itemSize3, int i, Object obj) {
        if ((i & 1) != 0) {
            itemSize = itemSizes.xl;
        }
        if ((i & 2) != 0) {
            itemSize2 = itemSizes.large;
        }
        if ((i & 4) != 0) {
            itemSize3 = itemSizes.medium;
        }
        return itemSizes.copy(itemSize, itemSize2, itemSize3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ItemSize getXl() {
        return this.xl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ItemSize getLarge() {
        return this.large;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ItemSize getMedium() {
        return this.medium;
    }

    public final ItemSizes copy(ItemSize xl, ItemSize large, ItemSize medium) {
        Intrinsics.checkNotNullParameter(xl, "xl");
        Intrinsics.checkNotNullParameter(large, "large");
        Intrinsics.checkNotNullParameter(medium, "medium");
        return new ItemSizes(xl, large, medium);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemSizes)) {
            return false;
        }
        ItemSizes itemSizes = (ItemSizes) other;
        return Intrinsics.areEqual(this.xl, itemSizes.xl) && Intrinsics.areEqual(this.large, itemSizes.large) && Intrinsics.areEqual(this.medium, itemSizes.medium);
    }

    public int hashCode() {
        return (((this.xl.hashCode() * 31) + this.large.hashCode()) * 31) + this.medium.hashCode();
    }

    public String toString() {
        return "ItemSizes(xl=" + this.xl + ", large=" + this.large + ", medium=" + this.medium + ')';
    }

    public ItemSizes(ItemSize xl, ItemSize large, ItemSize medium) {
        Intrinsics.checkNotNullParameter(xl, "xl");
        Intrinsics.checkNotNullParameter(large, "large");
        Intrinsics.checkNotNullParameter(medium, "medium");
        this.xl = xl;
        this.large = large;
        this.medium = medium;
    }

    public final ItemSize getXl() {
        return this.xl;
    }

    public final ItemSize getLarge() {
        return this.large;
    }

    public final ItemSize getMedium() {
        return this.medium;
    }
}
