package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicCurrencyConversionSelectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DynamicCurrencyConversionSelectionFailureReason[] $VALUES;
    public static final DynamicCurrencyConversionSelectionFailureReason UNKNOWN = new DynamicCurrencyConversionSelectionFailureReason("UNKNOWN", 0);
    public static final DynamicCurrencyConversionSelectionFailureReason MERCHANT_CANCELLED = new DynamicCurrencyConversionSelectionFailureReason("MERCHANT_CANCELLED", 1);
    public static final DynamicCurrencyConversionSelectionFailureReason CUSTOMER_CANCELLED = new DynamicCurrencyConversionSelectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final DynamicCurrencyConversionSelectionFailureReason HARDWARE_CANCELLED = new DynamicCurrencyConversionSelectionFailureReason("HARDWARE_CANCELLED", 3);

    private static final /* synthetic */ DynamicCurrencyConversionSelectionFailureReason[] $values() {
        return new DynamicCurrencyConversionSelectionFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED};
    }

    public static EnumEntries<DynamicCurrencyConversionSelectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static DynamicCurrencyConversionSelectionFailureReason valueOf(String str) {
        return (DynamicCurrencyConversionSelectionFailureReason) Enum.valueOf(DynamicCurrencyConversionSelectionFailureReason.class, str);
    }

    public static DynamicCurrencyConversionSelectionFailureReason[] values() {
        return (DynamicCurrencyConversionSelectionFailureReason[]) $VALUES.clone();
    }

    private DynamicCurrencyConversionSelectionFailureReason(String str, int i) {
    }

    static {
        DynamicCurrencyConversionSelectionFailureReason[] dynamicCurrencyConversionSelectionFailureReasonArr$values = $values();
        $VALUES = dynamicCurrencyConversionSelectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dynamicCurrencyConversionSelectionFailureReasonArr$values);
    }
}
