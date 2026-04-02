package com.stripe.cart;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.currency.Amount;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cart.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJ\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\fHÆ\u0003J\t\u0010\u001c\u001a\u00020\fHÆ\u0003J]\u0010\u001d\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012¨\u0006%"}, d2 = {"Lcom/stripe/cart/Cart;", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/stripe/cart/Item;", "modifiers", "Lcom/stripe/cart/Modifier;", "discounts", "Lcom/stripe/cart/Discount;", "tenders", "Lcom/stripe/cart/Tender;", FirebaseAnalytics.Param.TAX, "Lcom/stripe/currency/Amount;", "balance", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V", "getBalance", "()Lcom/stripe/currency/Amount;", "getDiscounts", "()Ljava/util/List;", "getItems", "getModifiers", "getTax", "getTenders", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Cart {
    private final Amount balance;
    private final List<Discount> discounts;
    private final List<Item> items;
    private final List<Modifier> modifiers;
    private final Amount tax;
    private final List<Tender> tenders;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Cart copy$default(Cart cart, List list, List list2, List list3, List list4, Amount amount, Amount amount2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cart.items;
        }
        if ((i & 2) != 0) {
            list2 = cart.modifiers;
        }
        if ((i & 4) != 0) {
            list3 = cart.discounts;
        }
        if ((i & 8) != 0) {
            list4 = cart.tenders;
        }
        if ((i & 16) != 0) {
            amount = cart.tax;
        }
        if ((i & 32) != 0) {
            amount2 = cart.balance;
        }
        Amount amount3 = amount;
        Amount amount4 = amount2;
        return cart.copy(list, list2, list3, list4, amount3, amount4);
    }

    public final List<Item> component1() {
        return this.items;
    }

    public final List<Modifier> component2() {
        return this.modifiers;
    }

    public final List<Discount> component3() {
        return this.discounts;
    }

    public final List<Tender> component4() {
        return this.tenders;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Amount getTax() {
        return this.tax;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Amount getBalance() {
        return this.balance;
    }

    public final Cart copy(List<Item> items, List<Modifier> modifiers, List<Discount> discounts, List<Tender> tenders, Amount tax, Amount balance) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(tenders, "tenders");
        Intrinsics.checkNotNullParameter(tax, "tax");
        Intrinsics.checkNotNullParameter(balance, "balance");
        return new Cart(items, modifiers, discounts, tenders, tax, balance);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Cart)) {
            return false;
        }
        Cart cart = (Cart) other;
        return Intrinsics.areEqual(this.items, cart.items) && Intrinsics.areEqual(this.modifiers, cart.modifiers) && Intrinsics.areEqual(this.discounts, cart.discounts) && Intrinsics.areEqual(this.tenders, cart.tenders) && Intrinsics.areEqual(this.tax, cart.tax) && Intrinsics.areEqual(this.balance, cart.balance);
    }

    public int hashCode() {
        return (((((((((this.items.hashCode() * 31) + this.modifiers.hashCode()) * 31) + this.discounts.hashCode()) * 31) + this.tenders.hashCode()) * 31) + this.tax.hashCode()) * 31) + this.balance.hashCode();
    }

    public String toString() {
        return "Cart(items=" + this.items + ", modifiers=" + this.modifiers + ", discounts=" + this.discounts + ", tenders=" + this.tenders + ", tax=" + this.tax + ", balance=" + this.balance + ')';
    }

    public Cart(List<Item> items, List<Modifier> modifiers, List<Discount> discounts, List<Tender> tenders, Amount tax, Amount balance) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        Intrinsics.checkNotNullParameter(discounts, "discounts");
        Intrinsics.checkNotNullParameter(tenders, "tenders");
        Intrinsics.checkNotNullParameter(tax, "tax");
        Intrinsics.checkNotNullParameter(balance, "balance");
        this.items = items;
        this.modifiers = modifiers;
        this.discounts = discounts;
        this.tenders = tenders;
        this.tax = tax;
        this.balance = balance;
    }

    public final List<Item> getItems() {
        return this.items;
    }

    public final List<Modifier> getModifiers() {
        return this.modifiers;
    }

    public final List<Discount> getDiscounts() {
        return this.discounts;
    }

    public final List<Tender> getTenders() {
        return this.tenders;
    }

    public final Amount getTax() {
        return this.tax;
    }

    public final Amount getBalance() {
        return this.balance;
    }
}
