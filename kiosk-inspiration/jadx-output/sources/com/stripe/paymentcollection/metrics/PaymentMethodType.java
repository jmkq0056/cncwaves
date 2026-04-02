package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/paymentcollection/metrics/PaymentMethodType;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "EMV_TAP", "EMV_INSERT_QUICK", "EMV_INSERT_FULL", "MAGSTRIPE", "MANUAL_ENTRY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PaymentMethodType[] $VALUES;
    public static final PaymentMethodType UNKNOWN = new PaymentMethodType("UNKNOWN", 0);
    public static final PaymentMethodType EMV_TAP = new PaymentMethodType("EMV_TAP", 1);
    public static final PaymentMethodType EMV_INSERT_QUICK = new PaymentMethodType("EMV_INSERT_QUICK", 2);
    public static final PaymentMethodType EMV_INSERT_FULL = new PaymentMethodType("EMV_INSERT_FULL", 3);
    public static final PaymentMethodType MAGSTRIPE = new PaymentMethodType("MAGSTRIPE", 4);
    public static final PaymentMethodType MANUAL_ENTRY = new PaymentMethodType("MANUAL_ENTRY", 5);

    private static final /* synthetic */ PaymentMethodType[] $values() {
        return new PaymentMethodType[]{UNKNOWN, EMV_TAP, EMV_INSERT_QUICK, EMV_INSERT_FULL, MAGSTRIPE, MANUAL_ENTRY};
    }

    public static EnumEntries<PaymentMethodType> getEntries() {
        return $ENTRIES;
    }

    public static PaymentMethodType valueOf(String str) {
        return (PaymentMethodType) Enum.valueOf(PaymentMethodType.class, str);
    }

    public static PaymentMethodType[] values() {
        return (PaymentMethodType[]) $VALUES.clone();
    }

    private PaymentMethodType(String str, int i) {
    }

    static {
        PaymentMethodType[] paymentMethodTypeArr$values = $values();
        $VALUES = paymentMethodTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(paymentMethodTypeArr$values);
    }
}
