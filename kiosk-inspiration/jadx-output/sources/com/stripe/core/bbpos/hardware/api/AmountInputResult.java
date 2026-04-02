package com.stripe.core.bbpos.hardware.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AmountInputResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "", "(Ljava/lang/String;I)V", "SUCCESS", "CANCEL", "TIMEOUT", "INVALID_AMOUNT", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AmountInputResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AmountInputResult[] $VALUES;
    public static final AmountInputResult SUCCESS = new AmountInputResult("SUCCESS", 0);
    public static final AmountInputResult CANCEL = new AmountInputResult("CANCEL", 1);
    public static final AmountInputResult TIMEOUT = new AmountInputResult("TIMEOUT", 2);
    public static final AmountInputResult INVALID_AMOUNT = new AmountInputResult("INVALID_AMOUNT", 3);

    private static final /* synthetic */ AmountInputResult[] $values() {
        return new AmountInputResult[]{SUCCESS, CANCEL, TIMEOUT, INVALID_AMOUNT};
    }

    public static EnumEntries<AmountInputResult> getEntries() {
        return $ENTRIES;
    }

    public static AmountInputResult valueOf(String str) {
        return (AmountInputResult) Enum.valueOf(AmountInputResult.class, str);
    }

    public static AmountInputResult[] values() {
        return (AmountInputResult[]) $VALUES.clone();
    }

    private AmountInputResult(String str, int i) {
    }

    static {
        AmountInputResult[] amountInputResultArr$values = $values();
        $VALUES = amountInputResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(amountInputResultArr$values);
    }
}
