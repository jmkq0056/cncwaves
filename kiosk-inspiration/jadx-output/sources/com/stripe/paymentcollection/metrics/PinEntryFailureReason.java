package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "TIMEOUT", "BYPASSED", "WRONG_PIN_LENGTH", "INCORRECT_PIN", "ICC_REMOVED", "CARD_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinEntryFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinEntryFailureReason[] $VALUES;
    public static final PinEntryFailureReason UNKNOWN = new PinEntryFailureReason("UNKNOWN", 0);
    public static final PinEntryFailureReason MERCHANT_CANCELLED = new PinEntryFailureReason("MERCHANT_CANCELLED", 1);
    public static final PinEntryFailureReason CUSTOMER_CANCELLED = new PinEntryFailureReason("CUSTOMER_CANCELLED", 2);
    public static final PinEntryFailureReason TIMEOUT = new PinEntryFailureReason("TIMEOUT", 3);
    public static final PinEntryFailureReason BYPASSED = new PinEntryFailureReason("BYPASSED", 4);
    public static final PinEntryFailureReason WRONG_PIN_LENGTH = new PinEntryFailureReason("WRONG_PIN_LENGTH", 5);
    public static final PinEntryFailureReason INCORRECT_PIN = new PinEntryFailureReason("INCORRECT_PIN", 6);
    public static final PinEntryFailureReason ICC_REMOVED = new PinEntryFailureReason("ICC_REMOVED", 7);
    public static final PinEntryFailureReason CARD_ERROR = new PinEntryFailureReason("CARD_ERROR", 8);

    private static final /* synthetic */ PinEntryFailureReason[] $values() {
        return new PinEntryFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, TIMEOUT, BYPASSED, WRONG_PIN_LENGTH, INCORRECT_PIN, ICC_REMOVED, CARD_ERROR};
    }

    public static EnumEntries<PinEntryFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static PinEntryFailureReason valueOf(String str) {
        return (PinEntryFailureReason) Enum.valueOf(PinEntryFailureReason.class, str);
    }

    public static PinEntryFailureReason[] values() {
        return (PinEntryFailureReason[]) $VALUES.clone();
    }

    private PinEntryFailureReason(String str, int i) {
    }

    static {
        PinEntryFailureReason[] pinEntryFailureReasonArr$values = $values();
        $VALUES = pinEntryFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinEntryFailureReasonArr$values);
    }
}
