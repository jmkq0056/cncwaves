package com.stripe.cart;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Item.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t¢\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\tHÆ\u0003JG\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\""}, d2 = {"Lcom/stripe/cart/Item;", "", FirebaseAnalytics.Param.QUANTITY, "", "description", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "modifiers", "", "Lcom/stripe/cart/Modifier;", "discounts", "Lcom/stripe/cart/Discount;", "(ILjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/util/List;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getDescription", "()Ljava/lang/String;", "getDiscounts", "()Ljava/util/List;", "getModifiers", "getQuantity", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Item {
    private final Amount amount;
    private final String description;
    private final List<Discount> discounts;
    private final List<Modifier> modifiers;
    private final int quantity;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Item copy$default(Item item, int i, String str, Amount amount, List list, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = item.quantity;
        }
        if ((i2 & 2) != 0) {
            str = item.description;
        }
        if ((i2 & 4) != 0) {
            amount = item.amount;
        }
        if ((i2 & 8) != 0) {
            list = item.modifiers;
        }
        if ((i2 & 16) != 0) {
            list2 = item.discounts;
        }
        List list3 = list2;
        Amount amount2 = amount;
        return item.copy(i, str, amount2, list, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getQuantity() {
        return this.quantity;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    public final List<Modifier> component4() {
        return this.modifiers;
    }

    public final List<Discount> component5() {
        return this.discounts;
    }

    public final Item copy(int quantity, String description, Amount amount, List<Modifier> modifiers, List<Discount> discounts) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        return new Item(quantity, description, amount, modifiers, discounts);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Item)) {
            return false;
        }
        Item item = (Item) other;
        return this.quantity == item.quantity && Intrinsics.areEqual(this.description, item.description) && Intrinsics.areEqual(this.amount, item.amount) && Intrinsics.areEqual(this.modifiers, item.modifiers) && Intrinsics.areEqual(this.discounts, item.discounts);
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.quantity) * 31) + this.description.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.modifiers.hashCode()) * 31) + this.discounts.hashCode();
    }

    public String toString() {
        return "Item(quantity=" + this.quantity + ", description=" + this.description + ", amount=" + this.amount + ", modifiers=" + this.modifiers + ", discounts=" + this.discounts + ')';
    }

    public Item(int i, String description, Amount amount, List<Modifier> modifiers, List<Discount> discounts) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        this.quantity = i;
        this.description = description;
        this.amount = amount;
        this.modifiers = modifiers;
        this.discounts = discounts;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final List<Modifier> getModifiers() {
        return this.modifiers;
    }

    public final List<Discount> getDiscounts() {
        return this.discounts;
    }
}
