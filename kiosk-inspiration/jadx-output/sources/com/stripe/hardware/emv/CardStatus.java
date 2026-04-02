package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CardStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/emv/CardStatus;", "", "(Ljava/lang/String;I)V", "NO_CARD", "CARD_PROCESSING", "CARD_IDLE", "CARD_NOT_WORKING", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardStatus[] $VALUES;
    public static final CardStatus NO_CARD = new CardStatus("NO_CARD", 0);
    public static final CardStatus CARD_PROCESSING = new CardStatus("CARD_PROCESSING", 1);
    public static final CardStatus CARD_IDLE = new CardStatus("CARD_IDLE", 2);
    public static final CardStatus CARD_NOT_WORKING = new CardStatus("CARD_NOT_WORKING", 3);

    private static final /* synthetic */ CardStatus[] $values() {
        return new CardStatus[]{NO_CARD, CARD_PROCESSING, CARD_IDLE, CARD_NOT_WORKING};
    }

    public static EnumEntries<CardStatus> getEntries() {
        return $ENTRIES;
    }

    public static CardStatus valueOf(String str) {
        return (CardStatus) Enum.valueOf(CardStatus.class, str);
    }

    public static CardStatus[] values() {
        return (CardStatus[]) $VALUES.clone();
    }

    private CardStatus(String str, int i) {
    }

    static {
        CardStatus[] cardStatusArr$values = $values();
        $VALUES = cardStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cardStatusArr$values);
    }
}
