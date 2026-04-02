package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "TIMED_OUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WaitForPosCommandFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WaitForPosCommandFailureReason[] $VALUES;
    public static final WaitForPosCommandFailureReason UNKNOWN = new WaitForPosCommandFailureReason("UNKNOWN", 0);
    public static final WaitForPosCommandFailureReason MERCHANT_CANCELLED = new WaitForPosCommandFailureReason("MERCHANT_CANCELLED", 1);
    public static final WaitForPosCommandFailureReason CUSTOMER_CANCELLED = new WaitForPosCommandFailureReason("CUSTOMER_CANCELLED", 2);
    public static final WaitForPosCommandFailureReason HARDWARE_CANCELLED = new WaitForPosCommandFailureReason("HARDWARE_CANCELLED", 3);
    public static final WaitForPosCommandFailureReason TIMED_OUT = new WaitForPosCommandFailureReason("TIMED_OUT", 4);

    private static final /* synthetic */ WaitForPosCommandFailureReason[] $values() {
        return new WaitForPosCommandFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, TIMED_OUT};
    }

    public static EnumEntries<WaitForPosCommandFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static WaitForPosCommandFailureReason valueOf(String str) {
        return (WaitForPosCommandFailureReason) Enum.valueOf(WaitForPosCommandFailureReason.class, str);
    }

    public static WaitForPosCommandFailureReason[] values() {
        return (WaitForPosCommandFailureReason[]) $VALUES.clone();
    }

    private WaitForPosCommandFailureReason(String str, int i) {
    }

    static {
        WaitForPosCommandFailureReason[] waitForPosCommandFailureReasonArr$values = $values();
        $VALUES = waitForPosCommandFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(waitForPosCommandFailureReasonArr$values);
    }
}
