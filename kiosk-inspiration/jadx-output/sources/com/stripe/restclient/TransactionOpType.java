package com.stripe.restclient;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Enums.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/restclient/TransactionOpType;", "", "(Ljava/lang/String;I)V", "ACTIVATION", "CONFIRM_PAYMENT_INTENT", "CONFIRM_INTERAC_REFUND", "CONFIRM_SETUP_INTENT", "CONFIRM_REUSABLE_CARD", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionOpType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransactionOpType[] $VALUES;
    public static final TransactionOpType ACTIVATION = new TransactionOpType("ACTIVATION", 0);
    public static final TransactionOpType CONFIRM_PAYMENT_INTENT = new TransactionOpType("CONFIRM_PAYMENT_INTENT", 1);
    public static final TransactionOpType CONFIRM_INTERAC_REFUND = new TransactionOpType("CONFIRM_INTERAC_REFUND", 2);
    public static final TransactionOpType CONFIRM_SETUP_INTENT = new TransactionOpType("CONFIRM_SETUP_INTENT", 3);
    public static final TransactionOpType CONFIRM_REUSABLE_CARD = new TransactionOpType("CONFIRM_REUSABLE_CARD", 4);

    private static final /* synthetic */ TransactionOpType[] $values() {
        return new TransactionOpType[]{ACTIVATION, CONFIRM_PAYMENT_INTENT, CONFIRM_INTERAC_REFUND, CONFIRM_SETUP_INTENT, CONFIRM_REUSABLE_CARD};
    }

    public static EnumEntries<TransactionOpType> getEntries() {
        return $ENTRIES;
    }

    public static TransactionOpType valueOf(String str) {
        return (TransactionOpType) Enum.valueOf(TransactionOpType.class, str);
    }

    public static TransactionOpType[] values() {
        return (TransactionOpType[]) $VALUES.clone();
    }

    private TransactionOpType(String str, int i) {
    }

    static {
        TransactionOpType[] transactionOpTypeArr$values = $values();
        $VALUES = transactionOpTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transactionOpTypeArr$values);
    }
}
