package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: CartItemSide.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\b\"\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/example/digitalkiosk/models/CartItemSide;", "", OfflineStorageConstantsKt.ID, "", FirebaseAnalytics.Param.QUANTITY, "<init>", "(II)V", "getId", "()I", "getQuantity", "setQuantity", "(I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CartItemSide {
    private final int id;
    private int quantity;

    public static /* synthetic */ CartItemSide copy$default(CartItemSide cartItemSide, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = cartItemSide.id;
        }
        if ((i3 & 2) != 0) {
            i2 = cartItemSide.quantity;
        }
        return cartItemSide.copy(i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    public final CartItemSide copy(int id, int quantity) {
        return new CartItemSide(id, quantity);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CartItemSide)) {
            return false;
        }
        CartItemSide cartItemSide = (CartItemSide) other;
        return this.id == cartItemSide.id && this.quantity == cartItemSide.quantity;
    }

    public int hashCode() {
        return (Integer.hashCode(this.id) * 31) + Integer.hashCode(this.quantity);
    }

    public String toString() {
        return "CartItemSide(id=" + this.id + ", quantity=" + this.quantity + ')';
    }

    public CartItemSide(int i, int i2) {
        this.id = i;
        this.quantity = i2;
    }

    public final int getId() {
        return this.id;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final void setQuantity(int i) {
        this.quantity = i;
    }
}
