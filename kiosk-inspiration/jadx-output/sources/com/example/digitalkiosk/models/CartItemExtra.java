package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CartItemExtra.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ.\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/example/digitalkiosk/models/CartItemExtra;", "", OfflineStorageConstantsKt.ID, "", "name", "", FirebaseAnalytics.Param.QUANTITY, "<init>", "(ILjava/lang/String;Ljava/lang/Integer;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getQuantity", "()Ljava/lang/Integer;", "setQuantity", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(ILjava/lang/String;Ljava/lang/Integer;)Lcom/example/digitalkiosk/models/CartItemExtra;", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CartItemExtra {
    private final int id;
    private final String name;
    private Integer quantity;

    public static /* synthetic */ CartItemExtra copy$default(CartItemExtra cartItemExtra, int i, String str, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cartItemExtra.id;
        }
        if ((i2 & 2) != 0) {
            str = cartItemExtra.name;
        }
        if ((i2 & 4) != 0) {
            num = cartItemExtra.quantity;
        }
        return cartItemExtra.copy(i, str, num);
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
    public final Integer getQuantity() {
        return this.quantity;
    }

    public final CartItemExtra copy(int id, String name, Integer quantity) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new CartItemExtra(id, name, quantity);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CartItemExtra)) {
            return false;
        }
        CartItemExtra cartItemExtra = (CartItemExtra) other;
        return this.id == cartItemExtra.id && Intrinsics.areEqual(this.name, cartItemExtra.name) && Intrinsics.areEqual(this.quantity, cartItemExtra.quantity);
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31;
        Integer num = this.quantity;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "CartItemExtra(id=" + this.id + ", name=" + this.name + ", quantity=" + this.quantity + ')';
    }

    public CartItemExtra(int i, String name, Integer num) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.id = i;
        this.name = name;
        this.quantity = num;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getQuantity() {
        return this.quantity;
    }

    public final void setQuantity(Integer num) {
        this.quantity = num;
    }
}
