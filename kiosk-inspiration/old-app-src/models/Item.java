package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Item.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\"\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018¨\u0006&"}, d2 = {"Lcom/example/digitalkiosk/models/Item;", "", OfflineStorageConstantsKt.ID, "", "type", "", "name", "image", FirebaseAnalytics.Param.PRICE, "", "sold_out", "", "details_present", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZZ)V", "getId", "()I", "getType", "()Ljava/lang/String;", "getName", "getImage", "getPrice", "()F", "getSold_out", "()Z", "getDetails_present", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Item {
    private final boolean details_present;
    private final int id;
    private final String image;
    private final String name;
    private final float price;
    private final boolean sold_out;
    private final String type;

    public static /* synthetic */ Item copy$default(Item item, int i, String str, String str2, String str3, float f, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = item.id;
        }
        if ((i2 & 2) != 0) {
            str = item.type;
        }
        if ((i2 & 4) != 0) {
            str2 = item.name;
        }
        if ((i2 & 8) != 0) {
            str3 = item.image;
        }
        if ((i2 & 16) != 0) {
            f = item.price;
        }
        if ((i2 & 32) != 0) {
            z = item.sold_out;
        }
        if ((i2 & 64) != 0) {
            z2 = item.details_present;
        }
        boolean z3 = z;
        boolean z4 = z2;
        float f2 = f;
        String str4 = str2;
        return item.copy(i, str, str4, str3, f2, z3, z4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final float getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getSold_out() {
        return this.sold_out;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getDetails_present() {
        return this.details_present;
    }

    public final Item copy(int id, String type, String name, String image, float price, boolean sold_out, boolean details_present) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        return new Item(id, type, name, image, price, sold_out, details_present);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Item)) {
            return false;
        }
        Item item = (Item) other;
        return this.id == item.id && Intrinsics.areEqual(this.type, item.type) && Intrinsics.areEqual(this.name, item.name) && Intrinsics.areEqual(this.image, item.image) && Float.compare(this.price, item.price) == 0 && this.sold_out == item.sold_out && this.details_present == item.details_present;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.id) * 31) + this.type.hashCode()) * 31) + this.name.hashCode()) * 31) + this.image.hashCode()) * 31) + Float.hashCode(this.price)) * 31) + Boolean.hashCode(this.sold_out)) * 31) + Boolean.hashCode(this.details_present);
    }

    public String toString() {
        return "Item(id=" + this.id + ", type=" + this.type + ", name=" + this.name + ", image=" + this.image + ", price=" + this.price + ", sold_out=" + this.sold_out + ", details_present=" + this.details_present + ')';
    }

    public Item(int i, String type, String name, String image, float f, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        this.id = i;
        this.type = type;
        this.name = name;
        this.image = image;
        this.price = f;
        this.sold_out = z;
        this.details_present = z2;
    }

    public /* synthetic */ Item(int i, String str, String str2, String str3, float f, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, str3, f, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? false : z2);
    }

    public final int getId() {
        return this.id;
    }

    public final String getType() {
        return this.type;
    }

    public final String getName() {
        return this.name;
    }

    public final String getImage() {
        return this.image;
    }

    public final float getPrice() {
        return this.price;
    }

    public final boolean getSold_out() {
        return this.sold_out;
    }

    public final boolean getDetails_present() {
        return this.details_present;
    }
}
