package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cart.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\t\u0010\u001b\u001a\u00020\nHÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003JR\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006%"}, d2 = {"Lcom/example/digitalkiosk/models/Cart;", "", "total", "", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItem;", "Lkotlin/collections/ArrayList;", FirebaseAnalytics.Param.TAX, "bag_ordered", "", "bag_price", "<init>", "(FLjava/util/ArrayList;Ljava/lang/Float;ZF)V", "getTotal", "()F", "getItems", "()Ljava/util/ArrayList;", "getTax", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getBag_ordered", "()Z", "getBag_price", "component1", "component2", "component3", "component4", "component5", "copy", "(FLjava/util/ArrayList;Ljava/lang/Float;ZF)Lcom/example/digitalkiosk/models/Cart;", "equals", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Cart {
    private final boolean bag_ordered;
    private final float bag_price;
    private final ArrayList<CartItem> items;
    private final Float tax;
    private final float total;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Cart copy$default(Cart cart, float f, ArrayList arrayList, Float f2, boolean z, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = cart.total;
        }
        if ((i & 2) != 0) {
            arrayList = cart.items;
        }
        if ((i & 4) != 0) {
            f2 = cart.tax;
        }
        if ((i & 8) != 0) {
            z = cart.bag_ordered;
        }
        if ((i & 16) != 0) {
            f3 = cart.bag_price;
        }
        float f4 = f3;
        Float f5 = f2;
        return cart.copy(f, arrayList, f5, z, f4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getTotal() {
        return this.total;
    }

    public final ArrayList<CartItem> component2() {
        return this.items;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getTax() {
        return this.tax;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getBag_ordered() {
        return this.bag_ordered;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final float getBag_price() {
        return this.bag_price;
    }

    public final Cart copy(float total, ArrayList<CartItem> items, Float tax, boolean bag_ordered, float bag_price) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new Cart(total, items, tax, bag_ordered, bag_price);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Cart)) {
            return false;
        }
        Cart cart = (Cart) other;
        return Float.compare(this.total, cart.total) == 0 && Intrinsics.areEqual(this.items, cart.items) && Intrinsics.areEqual((Object) this.tax, (Object) cart.tax) && this.bag_ordered == cart.bag_ordered && Float.compare(this.bag_price, cart.bag_price) == 0;
    }

    public int hashCode() {
        int iHashCode = ((Float.hashCode(this.total) * 31) + this.items.hashCode()) * 31;
        Float f = this.tax;
        return ((((iHashCode + (f == null ? 0 : f.hashCode())) * 31) + Boolean.hashCode(this.bag_ordered)) * 31) + Float.hashCode(this.bag_price);
    }

    public String toString() {
        return "Cart(total=" + this.total + ", items=" + this.items + ", tax=" + this.tax + ", bag_ordered=" + this.bag_ordered + ", bag_price=" + this.bag_price + ')';
    }

    public Cart(float f, ArrayList<CartItem> items, Float f2, boolean z, float f3) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.total = f;
        this.items = items;
        this.tax = f2;
        this.bag_ordered = z;
        this.bag_price = f3;
    }

    public final float getTotal() {
        return this.total;
    }

    public final ArrayList<CartItem> getItems() {
        return this.items;
    }

    public final Float getTax() {
        return this.tax;
    }

    public final boolean getBag_ordered() {
        return this.bag_ordered;
    }

    public final float getBag_price() {
        return this.bag_price;
    }
}
