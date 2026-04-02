package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OrderItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\u001d\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\nHÆ\u0003JL\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u001c\b\u0002\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\nHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\t\u0010 \u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R%\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcom/example/digitalkiosk/models/OrderItem;", "", "subtotal", "", FirebaseAnalytics.Param.QUANTITY, "", "name", "", "sub_items", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "<init>", "(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V", "getSubtotal", "()F", "getQuantity", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getSub_items", "()Ljava/util/ArrayList;", "component1", "component2", "component3", "component4", "copy", "(FLjava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/example/digitalkiosk/models/OrderItem;", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class OrderItem {
    private final String name;
    private final Integer quantity;
    private final ArrayList<OrderItem> sub_items;
    private final float subtotal;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OrderItem copy$default(OrderItem orderItem, float f, Integer num, String str, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            f = orderItem.subtotal;
        }
        if ((i & 2) != 0) {
            num = orderItem.quantity;
        }
        if ((i & 4) != 0) {
            str = orderItem.name;
        }
        if ((i & 8) != 0) {
            arrayList = orderItem.sub_items;
        }
        return orderItem.copy(f, num, str, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getSubtotal() {
        return this.subtotal;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getQuantity() {
        return this.quantity;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final ArrayList<OrderItem> component4() {
        return this.sub_items;
    }

    public final OrderItem copy(float subtotal, Integer quantity, String name, ArrayList<OrderItem> sub_items) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new OrderItem(subtotal, quantity, name, sub_items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OrderItem)) {
            return false;
        }
        OrderItem orderItem = (OrderItem) other;
        return Float.compare(this.subtotal, orderItem.subtotal) == 0 && Intrinsics.areEqual(this.quantity, orderItem.quantity) && Intrinsics.areEqual(this.name, orderItem.name) && Intrinsics.areEqual(this.sub_items, orderItem.sub_items);
    }

    public int hashCode() {
        int iHashCode = Float.hashCode(this.subtotal) * 31;
        Integer num = this.quantity;
        int iHashCode2 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + this.name.hashCode()) * 31;
        ArrayList<OrderItem> arrayList = this.sub_items;
        return iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "OrderItem(subtotal=" + this.subtotal + ", quantity=" + this.quantity + ", name=" + this.name + ", sub_items=" + this.sub_items + ')';
    }

    public OrderItem(float f, Integer num, String name, ArrayList<OrderItem> arrayList) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.subtotal = f;
        this.quantity = num;
        this.name = name;
        this.sub_items = arrayList;
    }

    public final float getSubtotal() {
        return this.subtotal;
    }

    public final Integer getQuantity() {
        return this.quantity;
    }

    public final String getName() {
        return this.name;
    }

    public final ArrayList<OrderItem> getSub_items() {
        return this.sub_items;
    }
}
