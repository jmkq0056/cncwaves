package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PinEntryStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "", "(Ljava/lang/String;I)V", "NOT_REQUESTED", "REQUESTED", "ENTERED", "SUCCESS", "CANCEL", "TIMEOUT", "BYPASS", "WRONG_PIN_LENGTH", "INCORRECT_PIN", "ICC_REMOVED", "CARD_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinEntryStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinEntryStatus[] $VALUES;
    public static final PinEntryStatus NOT_REQUESTED = new PinEntryStatus("NOT_REQUESTED", 0);
    public static final PinEntryStatus REQUESTED = new PinEntryStatus("REQUESTED", 1);
    public static final PinEntryStatus ENTERED = new PinEntryStatus("ENTERED", 2);
    public static final PinEntryStatus SUCCESS = new PinEntryStatus("SUCCESS", 3);
    public static final PinEntryStatus CANCEL = new PinEntryStatus("CANCEL", 4);
    public static final PinEntryStatus TIMEOUT = new PinEntryStatus("TIMEOUT", 5);
    public static final PinEntryStatus BYPASS = new PinEntryStatus("BYPASS", 6);
    public static final PinEntryStatus WRONG_PIN_LENGTH = new PinEntryStatus("WRONG_PIN_LENGTH", 7);
    public static final PinEntryStatus INCORRECT_PIN = new PinEntryStatus("INCORRECT_PIN", 8);
    public static final PinEntryStatus ICC_REMOVED = new PinEntryStatus("ICC_REMOVED", 9);
    public static final PinEntryStatus CARD_ERROR = new PinEntryStatus("CARD_ERROR", 10);

    private static final /* synthetic */ PinEntryStatus[] $values() {
        return new PinEntryStatus[]{NOT_REQUESTED, REQUESTED, ENTERED, SUCCESS, CANCEL, TIMEOUT, BYPASS, WRONG_PIN_LENGTH, INCORRECT_PIN, ICC_REMOVED, CARD_ERROR};
    }

    public static EnumEntries<PinEntryStatus> getEntries() {
        return $ENTRIES;
    }

    public static PinEntryStatus valueOf(String str) {
        return (PinEntryStatus) Enum.valueOf(PinEntryStatus.class, str);
    }

    public static PinEntryStatus[] values() {
        return (PinEntryStatus[]) $VALUES.clone();
    }

    private PinEntryStatus(String str, int i) {
    }

    static {
        PinEntryStatus[] pinEntryStatusArr$values = $values();
        $VALUES = pinEntryStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinEntryStatusArr$values);
    }
}
