package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OrderItemExtra.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/example/digitalkiosk/models/OrderItemExtra;", "", "name", "", FirebaseAnalytics.Param.PRICE, "", FirebaseAnalytics.Param.QUANTITY, "", "<init>", "(Ljava/lang/String;FI)V", "getName", "()Ljava/lang/String;", "getPrice", "()F", "getQuantity", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class OrderItemExtra {
    private final String name;
    private final float price;
    private final int quantity;

    public static /* synthetic */ OrderItemExtra copy$default(OrderItemExtra orderItemExtra, String str, float f, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = orderItemExtra.name;
        }
        if ((i2 & 2) != 0) {
            f = orderItemExtra.price;
        }
        if ((i2 & 4) != 0) {
            i = orderItemExtra.quantity;
        }
        return orderItemExtra.copy(str, f, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    public final OrderItemExtra copy(String name, float price, int quantity) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new OrderItemExtra(name, price, quantity);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OrderItemExtra)) {
            return false;
        }
        OrderItemExtra orderItemExtra = (OrderItemExtra) other;
        return Intrinsics.areEqual(this.name, orderItemExtra.name) && Float.compare(this.price, orderItemExtra.price) == 0 && this.quantity == orderItemExtra.quantity;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + Float.hashCode(this.price)) * 31) + Integer.hashCode(this.quantity);
    }

    public String toString() {
        return "OrderItemExtra(name=" + this.name + ", price=" + this.price + ", quantity=" + this.quantity + ')';
    }

    public OrderItemExtra(String name, float f, int i) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.price = f;
        this.quantity = i;
    }

    public final String getName() {
        return this.name;
    }

    public final float getPrice() {
        return this.price;
    }

    public final int getQuantity() {
        return this.quantity;
    }
}
