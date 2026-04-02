package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PinEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "", "(Ljava/lang/String;I)V", "WRONG_PIN_LENGTH", "INCORRECT_PIN", "CARD_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinEntryRetryReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinEntryRetryReason[] $VALUES;
    public static final PinEntryRetryReason WRONG_PIN_LENGTH = new PinEntryRetryReason("WRONG_PIN_LENGTH", 0);
    public static final PinEntryRetryReason INCORRECT_PIN = new PinEntryRetryReason("INCORRECT_PIN", 1);
    public static final PinEntryRetryReason CARD_ERROR = new PinEntryRetryReason("CARD_ERROR", 2);

    private static final /* synthetic */ PinEntryRetryReason[] $values() {
        return new PinEntryRetryReason[]{WRONG_PIN_LENGTH, INCORRECT_PIN, CARD_ERROR};
    }

    public static EnumEntries<PinEntryRetryReason> getEntries() {
        return $ENTRIES;
    }

    public static PinEntryRetryReason valueOf(String str) {
        return (PinEntryRetryReason) Enum.valueOf(PinEntryRetryReason.class, str);
    }

    public static PinEntryRetryReason[] values() {
        return (PinEntryRetryReason[]) $VALUES.clone();
    }

    private PinEntryRetryReason(String str, int i) {
    }

    static {
        PinEntryRetryReason[] pinEntryRetryReasonArr$values = $values();
        $VALUES = pinEntryRetryReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinEntryRetryReasonArr$values);
    }
}
