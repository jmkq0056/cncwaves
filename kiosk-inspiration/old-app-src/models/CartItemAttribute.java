package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CartItemAttribute.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0003J-\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/models/CartItemAttribute;", "", "name", "", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItemAttributeItem;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;)V", "getName", "()Ljava/lang/String;", "getItems", "()Ljava/util/ArrayList;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CartItemAttribute {
    private final ArrayList<CartItemAttributeItem> items;
    private final String name;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CartItemAttribute copy$default(CartItemAttribute cartItemAttribute, String str, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cartItemAttribute.name;
        }
        if ((i & 2) != 0) {
            arrayList = cartItemAttribute.items;
        }
        return cartItemAttribute.copy(str, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final ArrayList<CartItemAttributeItem> component2() {
        return this.items;
    }

    public final CartItemAttribute copy(String name, ArrayList<CartItemAttributeItem> items) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(items, "items");
        return new CartItemAttribute(name, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CartItemAttribute)) {
            return false;
        }
        CartItemAttribute cartItemAttribute = (CartItemAttribute) other;
        return Intrinsics.areEqual(this.name, cartItemAttribute.name) && Intrinsics.areEqual(this.items, cartItemAttribute.items);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.items.hashCode();
    }

    public String toString() {
        return "CartItemAttribute(name=" + this.name + ", items=" + this.items + ')';
    }

    public CartItemAttribute(String name, ArrayList<CartItemAttributeItem> items) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(items, "items");
        this.name = name;
        this.items = items;
    }

    public final String getName() {
        return this.name;
    }

    public final ArrayList<CartItemAttributeItem> getItems() {
        return this.items;
    }
}
