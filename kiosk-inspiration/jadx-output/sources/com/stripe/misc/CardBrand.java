package com.stripe.misc;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CardBrand.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/misc/CardBrand;", "", "(Ljava/lang/String;I)V", "AMEX", "DINERS_CLUB", "DISCOVER", "EFTPOS_AU", "GIROCARD", "JCB", "MASTERCARD", "UNIONPAY", "UNKNOWN", "VISA", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardBrand {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardBrand[] $VALUES;
    public static final CardBrand AMEX = new CardBrand("AMEX", 0);
    public static final CardBrand DINERS_CLUB = new CardBrand("DINERS_CLUB", 1);
    public static final CardBrand DISCOVER = new CardBrand("DISCOVER", 2);
    public static final CardBrand EFTPOS_AU = new CardBrand("EFTPOS_AU", 3);
    public static final CardBrand GIROCARD = new CardBrand("GIROCARD", 4);
    public static final CardBrand JCB = new CardBrand("JCB", 5);
    public static final CardBrand MASTERCARD = new CardBrand("MASTERCARD", 6);
    public static final CardBrand UNIONPAY = new CardBrand("UNIONPAY", 7);
    public static final CardBrand UNKNOWN = new CardBrand("UNKNOWN", 8);
    public static final CardBrand VISA = new CardBrand("VISA", 9);

    private static final /* synthetic */ CardBrand[] $values() {
        return new CardBrand[]{AMEX, DINERS_CLUB, DISCOVER, EFTPOS_AU, GIROCARD, JCB, MASTERCARD, UNIONPAY, UNKNOWN, VISA};
    }

    public static EnumEntries<CardBrand> getEntries() {
        return $ENTRIES;
    }

    public static CardBrand valueOf(String str) {
        return (CardBrand) Enum.valueOf(CardBrand.class, str);
    }

    public static CardBrand[] values() {
        return (CardBrand[]) $VALUES.clone();
    }

    private CardBrand(String str, int i) {
    }

    static {
        CardBrand[] cardBrandArr$values = $values();
        $VALUES = cardBrandArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cardBrandArr$values);
    }
}
