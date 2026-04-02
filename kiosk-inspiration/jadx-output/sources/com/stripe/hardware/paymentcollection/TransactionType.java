package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TransactionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/paymentcollection/TransactionType;", "", "(Ljava/lang/String;I)V", "CHARGE", "REFUND", "SETUP", "REUSABLE_CARD", "STRONG_CUSTOMER_AUTHENTICATION", "MAGSTRIPE_PASSTHROUGH", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransactionType[] $VALUES;
    public static final TransactionType CHARGE = new TransactionType("CHARGE", 0);
    public static final TransactionType REFUND = new TransactionType("REFUND", 1);
    public static final TransactionType SETUP = new TransactionType("SETUP", 2);
    public static final TransactionType REUSABLE_CARD = new TransactionType("REUSABLE_CARD", 3);
    public static final TransactionType STRONG_CUSTOMER_AUTHENTICATION = new TransactionType("STRONG_CUSTOMER_AUTHENTICATION", 4);
    public static final TransactionType MAGSTRIPE_PASSTHROUGH = new TransactionType("MAGSTRIPE_PASSTHROUGH", 5);

    private static final /* synthetic */ TransactionType[] $values() {
        return new TransactionType[]{CHARGE, REFUND, SETUP, REUSABLE_CARD, STRONG_CUSTOMER_AUTHENTICATION, MAGSTRIPE_PASSTHROUGH};
    }

    public static EnumEntries<TransactionType> getEntries() {
        return $ENTRIES;
    }

    public static TransactionType valueOf(String str) {
        return (TransactionType) Enum.valueOf(TransactionType.class, str);
    }

    public static TransactionType[] values() {
        return (TransactionType[]) $VALUES.clone();
    }

    private TransactionType(String str, int i) {
    }

    static {
        TransactionType[] transactionTypeArr$values = $values();
        $VALUES = transactionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transactionTypeArr$values);
    }
}
