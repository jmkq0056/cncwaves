package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Extra.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003J;\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lcom/example/digitalkiosk/models/Extra;", "", OfflineStorageConstantsKt.ID, "", "name", "", "image", FirebaseAnalytics.Param.PRICE, "", "sold_out", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;FZ)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getImage", "getPrice", "()F", "getSold_out", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Extra {
    private final int id;
    private final String image;
    private final String name;
    private final float price;
    private final boolean sold_out;

    public static /* synthetic */ Extra copy$default(Extra extra, int i, String str, String str2, float f, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = extra.id;
        }
        if ((i2 & 2) != 0) {
            str = extra.name;
        }
        if ((i2 & 4) != 0) {
            str2 = extra.image;
        }
        if ((i2 & 8) != 0) {
            f = extra.price;
        }
        if ((i2 & 16) != 0) {
            z = extra.sold_out;
        }
        boolean z2 = z;
        String str3 = str2;
        return extra.copy(i, str, str3, f, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final float getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getSold_out() {
        return this.sold_out;
    }

    public final Extra copy(int id, String name, String image, float price, boolean sold_out) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        return new Extra(id, name, image, price, sold_out);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Extra)) {
            return false;
        }
        Extra extra = (Extra) other;
        return this.id == extra.id && Intrinsics.areEqual(this.name, extra.name) && Intrinsics.areEqual(this.image, extra.image) && Float.compare(this.price, extra.price) == 0 && this.sold_out == extra.sold_out;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + this.image.hashCode()) * 31) + Float.hashCode(this.price)) * 31) + Boolean.hashCode(this.sold_out);
    }

    public String toString() {
        return "Extra(id=" + this.id + ", name=" + this.name + ", image=" + this.image + ", price=" + this.price + ", sold_out=" + this.sold_out + ')';
    }

    public Extra(int i, String name, String image, float f, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(image, "image");
        this.id = i;
        this.name = name;
        this.image = image;
        this.price = f;
        this.sold_out = z;
    }

    public /* synthetic */ Extra(int i, String str, String str2, float f, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, f, (i2 & 16) != 0 ? false : z);
    }

    public final int getId() {
        return this.id;
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
}
