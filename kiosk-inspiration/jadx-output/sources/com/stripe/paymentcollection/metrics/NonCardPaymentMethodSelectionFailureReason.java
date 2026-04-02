package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonCardPaymentMethodSelectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NonCardPaymentMethodSelectionFailureReason[] $VALUES;
    public static final NonCardPaymentMethodSelectionFailureReason UNKNOWN = new NonCardPaymentMethodSelectionFailureReason("UNKNOWN", 0);
    public static final NonCardPaymentMethodSelectionFailureReason MERCHANT_CANCELLED = new NonCardPaymentMethodSelectionFailureReason("MERCHANT_CANCELLED", 1);
    public static final NonCardPaymentMethodSelectionFailureReason CUSTOMER_CANCELLED = new NonCardPaymentMethodSelectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final NonCardPaymentMethodSelectionFailureReason HARDWARE_CANCELLED = new NonCardPaymentMethodSelectionFailureReason("HARDWARE_CANCELLED", 3);

    private static final /* synthetic */ NonCardPaymentMethodSelectionFailureReason[] $values() {
        return new NonCardPaymentMethodSelectionFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED};
    }

    public static EnumEntries<NonCardPaymentMethodSelectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static NonCardPaymentMethodSelectionFailureReason valueOf(String str) {
        return (NonCardPaymentMethodSelectionFailureReason) Enum.valueOf(NonCardPaymentMethodSelectionFailureReason.class, str);
    }

    public static NonCardPaymentMethodSelectionFailureReason[] values() {
        return (NonCardPaymentMethodSelectionFailureReason[]) $VALUES.clone();
    }

    private NonCardPaymentMethodSelectionFailureReason(String str, int i) {
    }

    static {
        NonCardPaymentMethodSelectionFailureReason[] nonCardPaymentMethodSelectionFailureReasonArr$values = $values();
        $VALUES = nonCardPaymentMethodSelectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(nonCardPaymentMethodSelectionFailureReasonArr$values);
    }
}
