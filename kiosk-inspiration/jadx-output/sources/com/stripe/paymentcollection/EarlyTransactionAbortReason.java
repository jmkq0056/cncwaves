package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: EarlyTransactionAbortReason.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "", "(Ljava/lang/String;I)V", "CHIP_CARD_INITIALIZATION_FAILED", "EMPTY_CANDIDATE_LIST", "PIN_ENTRY_CANCELED", "PIN_ENTRY_TIMED_OUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EarlyTransactionAbortReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EarlyTransactionAbortReason[] $VALUES;
    public static final EarlyTransactionAbortReason CHIP_CARD_INITIALIZATION_FAILED = new EarlyTransactionAbortReason("CHIP_CARD_INITIALIZATION_FAILED", 0);
    public static final EarlyTransactionAbortReason EMPTY_CANDIDATE_LIST = new EarlyTransactionAbortReason("EMPTY_CANDIDATE_LIST", 1);
    public static final EarlyTransactionAbortReason PIN_ENTRY_CANCELED = new EarlyTransactionAbortReason("PIN_ENTRY_CANCELED", 2);
    public static final EarlyTransactionAbortReason PIN_ENTRY_TIMED_OUT = new EarlyTransactionAbortReason("PIN_ENTRY_TIMED_OUT", 3);

    private static final /* synthetic */ EarlyTransactionAbortReason[] $values() {
        return new EarlyTransactionAbortReason[]{CHIP_CARD_INITIALIZATION_FAILED, EMPTY_CANDIDATE_LIST, PIN_ENTRY_CANCELED, PIN_ENTRY_TIMED_OUT};
    }

    public static EnumEntries<EarlyTransactionAbortReason> getEntries() {
        return $ENTRIES;
    }

    public static EarlyTransactionAbortReason valueOf(String str) {
        return (EarlyTransactionAbortReason) Enum.valueOf(EarlyTransactionAbortReason.class, str);
    }

    public static EarlyTransactionAbortReason[] values() {
        return (EarlyTransactionAbortReason[]) $VALUES.clone();
    }

    private EarlyTransactionAbortReason(String str, int i) {
    }

    static {
        EarlyTransactionAbortReason[] earlyTransactionAbortReasonArr$values = $values();
        $VALUES = earlyTransactionAbortReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(earlyTransactionAbortReasonArr$values);
    }
}
