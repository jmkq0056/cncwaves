package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DisplayCartResult;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "CART_UPDATED", "STARTED_COLLECTION", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisplayCartResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DisplayCartResult[] $VALUES;
    public static final DisplayCartResult UNKNOWN = new DisplayCartResult("UNKNOWN", 0);
    public static final DisplayCartResult CART_UPDATED = new DisplayCartResult("CART_UPDATED", 1);
    public static final DisplayCartResult STARTED_COLLECTION = new DisplayCartResult("STARTED_COLLECTION", 2);
    public static final DisplayCartResult MERCHANT_CANCELLED = new DisplayCartResult("MERCHANT_CANCELLED", 3);
    public static final DisplayCartResult CUSTOMER_CANCELLED = new DisplayCartResult("CUSTOMER_CANCELLED", 4);

    private static final /* synthetic */ DisplayCartResult[] $values() {
        return new DisplayCartResult[]{UNKNOWN, CART_UPDATED, STARTED_COLLECTION, MERCHANT_CANCELLED, CUSTOMER_CANCELLED};
    }

    public static EnumEntries<DisplayCartResult> getEntries() {
        return $ENTRIES;
    }

    public static DisplayCartResult valueOf(String str) {
        return (DisplayCartResult) Enum.valueOf(DisplayCartResult.class, str);
    }

    public static DisplayCartResult[] values() {
        return (DisplayCartResult[]) $VALUES.clone();
    }

    private DisplayCartResult(String str, int i) {
    }

    static {
        DisplayCartResult[] displayCartResultArr$values = $values();
        $VALUES = displayCartResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(displayCartResultArr$values);
    }
}
