package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PaymentCollectionData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/paymentcollection/CancelReason;", "", "(Ljava/lang/String;I)V", "HARDWARE_CANCELLED", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CancelReason[] $VALUES;
    public static final CancelReason HARDWARE_CANCELLED = new CancelReason("HARDWARE_CANCELLED", 0);
    public static final CancelReason MERCHANT_CANCELLED = new CancelReason("MERCHANT_CANCELLED", 1);
    public static final CancelReason CUSTOMER_CANCELLED = new CancelReason("CUSTOMER_CANCELLED", 2);

    private static final /* synthetic */ CancelReason[] $values() {
        return new CancelReason[]{HARDWARE_CANCELLED, MERCHANT_CANCELLED, CUSTOMER_CANCELLED};
    }

    public static EnumEntries<CancelReason> getEntries() {
        return $ENTRIES;
    }

    public static CancelReason valueOf(String str) {
        return (CancelReason) Enum.valueOf(CancelReason.class, str);
    }

    public static CancelReason[] values() {
        return (CancelReason[]) $VALUES.clone();
    }

    private CancelReason(String str, int i) {
    }

    static {
        CancelReason[] cancelReasonArr$values = $values();
        $VALUES = cancelReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cancelReasonArr$values);
    }
}
