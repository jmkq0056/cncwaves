package com.stripe.core.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PinButtons.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/hardware/paymentcollection/PinKey;", "", "(Ljava/lang/String;I)V", "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "BACKSPACE", "CANCEL", "ENTER", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinKey {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinKey[] $VALUES;
    public static final PinKey ZERO = new PinKey("ZERO", 0);
    public static final PinKey ONE = new PinKey("ONE", 1);
    public static final PinKey TWO = new PinKey("TWO", 2);
    public static final PinKey THREE = new PinKey("THREE", 3);
    public static final PinKey FOUR = new PinKey("FOUR", 4);
    public static final PinKey FIVE = new PinKey("FIVE", 5);
    public static final PinKey SIX = new PinKey("SIX", 6);
    public static final PinKey SEVEN = new PinKey("SEVEN", 7);
    public static final PinKey EIGHT = new PinKey("EIGHT", 8);
    public static final PinKey NINE = new PinKey("NINE", 9);
    public static final PinKey BACKSPACE = new PinKey("BACKSPACE", 10);
    public static final PinKey CANCEL = new PinKey("CANCEL", 11);
    public static final PinKey ENTER = new PinKey("ENTER", 12);

    private static final /* synthetic */ PinKey[] $values() {
        return new PinKey[]{ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, BACKSPACE, CANCEL, ENTER};
    }

    public static EnumEntries<PinKey> getEntries() {
        return $ENTRIES;
    }

    public static PinKey valueOf(String str) {
        return (PinKey) Enum.valueOf(PinKey.class, str);
    }

    public static PinKey[] values() {
        return (PinKey[]) $VALUES.clone();
    }

    private PinKey(String str, int i) {
    }

    static {
        PinKey[] pinKeyArr$values = $values();
        $VALUES = pinKeyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinKeyArr$values);
    }
}
