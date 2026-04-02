package com.stripe.hardware.tipping;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TippingSelectionFailureReason.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;", "", "(Ljava/lang/String;I)V", "MERCHANT_CANCELLED", "HARDWARE_CANCELLED", "CUSTOMER_CANCELLED", "TIP_SELECTION_TYPE_NOT_FOUND", "CALLBACK_NO_TIP_AMOUNT", "CALLBACK_NO_DATA", "TIMEOUT", "INVALID_AMOUNT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TippingSelectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TippingSelectionFailureReason[] $VALUES;
    public static final TippingSelectionFailureReason MERCHANT_CANCELLED = new TippingSelectionFailureReason("MERCHANT_CANCELLED", 0);
    public static final TippingSelectionFailureReason HARDWARE_CANCELLED = new TippingSelectionFailureReason("HARDWARE_CANCELLED", 1);
    public static final TippingSelectionFailureReason CUSTOMER_CANCELLED = new TippingSelectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final TippingSelectionFailureReason TIP_SELECTION_TYPE_NOT_FOUND = new TippingSelectionFailureReason("TIP_SELECTION_TYPE_NOT_FOUND", 3);
    public static final TippingSelectionFailureReason CALLBACK_NO_TIP_AMOUNT = new TippingSelectionFailureReason("CALLBACK_NO_TIP_AMOUNT", 4);
    public static final TippingSelectionFailureReason CALLBACK_NO_DATA = new TippingSelectionFailureReason("CALLBACK_NO_DATA", 5);
    public static final TippingSelectionFailureReason TIMEOUT = new TippingSelectionFailureReason("TIMEOUT", 6);
    public static final TippingSelectionFailureReason INVALID_AMOUNT = new TippingSelectionFailureReason("INVALID_AMOUNT", 7);

    private static final /* synthetic */ TippingSelectionFailureReason[] $values() {
        return new TippingSelectionFailureReason[]{MERCHANT_CANCELLED, HARDWARE_CANCELLED, CUSTOMER_CANCELLED, TIP_SELECTION_TYPE_NOT_FOUND, CALLBACK_NO_TIP_AMOUNT, CALLBACK_NO_DATA, TIMEOUT, INVALID_AMOUNT};
    }

    public static EnumEntries<TippingSelectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static TippingSelectionFailureReason valueOf(String str) {
        return (TippingSelectionFailureReason) Enum.valueOf(TippingSelectionFailureReason.class, str);
    }

    public static TippingSelectionFailureReason[] values() {
        return (TippingSelectionFailureReason[]) $VALUES.clone();
    }

    private TippingSelectionFailureReason(String str, int i) {
    }

    static {
        TippingSelectionFailureReason[] tippingSelectionFailureReasonArr$values = $values();
        $VALUES = tippingSelectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tippingSelectionFailureReasonArr$values);
    }
}
