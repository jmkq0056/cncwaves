package com.stripe.hardware.paymentcollection;

import com.stripe.cart.Cart;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisplayCartModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "", "cart", "Lcom/stripe/cart/Cart;", "isPredipEnabled", "", "hasPayment", "(Lcom/stripe/cart/Cart;ZZ)V", "getCart", "()Lcom/stripe/cart/Cart;", "getHasPayment", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DisplayCartModel {
    private final Cart cart;
    private final boolean hasPayment;
    private final boolean isPredipEnabled;

    public static /* synthetic */ DisplayCartModel copy$default(DisplayCartModel displayCartModel, Cart cart, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            cart = displayCartModel.cart;
        }
        if ((i & 2) != 0) {
            z = displayCartModel.isPredipEnabled;
        }
        if ((i & 4) != 0) {
            z2 = displayCartModel.hasPayment;
        }
        return displayCartModel.copy(cart, z, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Cart getCart() {
        return this.cart;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsPredipEnabled() {
        return this.isPredipEnabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getHasPayment() {
        return this.hasPayment;
    }

    public final DisplayCartModel copy(Cart cart, boolean isPredipEnabled, boolean hasPayment) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        return new DisplayCartModel(cart, isPredipEnabled, hasPayment);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DisplayCartModel)) {
            return false;
        }
        DisplayCartModel displayCartModel = (DisplayCartModel) other;
        return Intrinsics.areEqual(this.cart, displayCartModel.cart) && this.isPredipEnabled == displayCartModel.isPredipEnabled && this.hasPayment == displayCartModel.hasPayment;
    }

    public int hashCode() {
        return (((this.cart.hashCode() * 31) + Boolean.hashCode(this.isPredipEnabled)) * 31) + Boolean.hashCode(this.hasPayment);
    }

    public String toString() {
        return "DisplayCartModel(cart=" + this.cart + ", isPredipEnabled=" + this.isPredipEnabled + ", hasPayment=" + this.hasPayment + ')';
    }

    public DisplayCartModel(Cart cart, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        this.cart = cart;
        this.isPredipEnabled = z;
        this.hasPayment = z2;
    }

    public /* synthetic */ DisplayCartModel(Cart cart, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cart, z, (i & 4) != 0 ? false : z2);
    }

    public final Cart getCart() {
        return this.cart;
    }

    public final boolean isPredipEnabled() {
        return this.isPredipEnabled;
    }

    public final boolean getHasPayment() {
        return this.hasPayment;
    }
}
