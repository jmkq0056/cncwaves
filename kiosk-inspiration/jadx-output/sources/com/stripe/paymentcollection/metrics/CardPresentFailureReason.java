package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "TIMEOUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPresentFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardPresentFailureReason[] $VALUES;
    public static final CardPresentFailureReason UNKNOWN = new CardPresentFailureReason("UNKNOWN", 0);
    public static final CardPresentFailureReason MERCHANT_CANCELLED = new CardPresentFailureReason("MERCHANT_CANCELLED", 1);
    public static final CardPresentFailureReason CUSTOMER_CANCELLED = new CardPresentFailureReason("CUSTOMER_CANCELLED", 2);
    public static final CardPresentFailureReason HARDWARE_CANCELLED = new CardPresentFailureReason("HARDWARE_CANCELLED", 3);
    public static final CardPresentFailureReason TIMEOUT = new CardPresentFailureReason("TIMEOUT", 4);

    private static final /* synthetic */ CardPresentFailureReason[] $values() {
        return new CardPresentFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, TIMEOUT};
    }

    public static EnumEntries<CardPresentFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static CardPresentFailureReason valueOf(String str) {
        return (CardPresentFailureReason) Enum.valueOf(CardPresentFailureReason.class, str);
    }

    public static CardPresentFailureReason[] values() {
        return (CardPresentFailureReason[]) $VALUES.clone();
    }

    private CardPresentFailureReason(String str, int i) {
    }

    static {
        CardPresentFailureReason[] cardPresentFailureReasonArr$values = $values();
        $VALUES = cardPresentFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cardPresentFailureReasonArr$values);
    }
}
