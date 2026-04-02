package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SimulatedCardType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b(\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000ej\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,¨\u0006-"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SimulatedCardType;", "", "cardNumber", "", "expMonth", "", "expYear", "(Ljava/lang/String;ILjava/lang/String;II)V", "getCardNumber$annotations", "()V", "getCardNumber", "()Ljava/lang/String;", "getExpMonth$annotations", "getExpMonth", "()I", "getExpYear$annotations", "getExpYear", "VISA", "VISA_DEBIT", "MASTERCARD", "MASTERCARD_DEBIT", "MASTERCARD_PREPAID", "AMEX", "AMEX_2", "DISCOVER", "DISCOVER_2", "DINERS", "DINERS_14_DIGITS", "JCB", "UNION_PAY", "INTERAC", "EFTPOS_AU_DEBIT", "VISA_US_COMMON_DEBIT", "CHARGE_DECLINED", "CHARGE_DECLINED_INSUFFICIENT_FUNDS", "CHARGE_DECLINED_LOST_CARD", "CHARGE_DECLINED_STOLEN_CARD", "CHARGE_DECLINED_EXPIRED_CARD", "CHARGE_DECLINED_PROCESSING_ERROR", "EFTPOS_AU_VISA_DEBIT", "EFTPOS_AU_DEBIT_MASTERCARD", "OFFLINE_PIN_CVM", "OFFLINE_PIN_SCA_RETRY", "ONLINE_PIN_CVM", "ONLINE_PIN_SCA_RETRY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedCardType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SimulatedCardType[] $VALUES;
    private final String cardNumber;
    private final int expMonth;
    private final int expYear;
    public static final SimulatedCardType VISA = new SimulatedCardType("VISA", 0, "4242424242424242", 12, 30);
    public static final SimulatedCardType VISA_DEBIT = new SimulatedCardType("VISA_DEBIT", 1, "4000056655665556", 12, 30);
    public static final SimulatedCardType MASTERCARD = new SimulatedCardType("MASTERCARD", 2, "5555555555554444", 12, 30);
    public static final SimulatedCardType MASTERCARD_DEBIT = new SimulatedCardType("MASTERCARD_DEBIT", 3, "5200828282828210", 12, 30);
    public static final SimulatedCardType MASTERCARD_PREPAID = new SimulatedCardType("MASTERCARD_PREPAID", 4, "5105105105105100", 12, 30);
    public static final SimulatedCardType AMEX = new SimulatedCardType("AMEX", 5, "378282246310005", 12, 30);
    public static final SimulatedCardType AMEX_2 = new SimulatedCardType("AMEX_2", 6, "371449635398431", 12, 30);
    public static final SimulatedCardType DISCOVER = new SimulatedCardType("DISCOVER", 7, "6011111111111117", 12, 30);
    public static final SimulatedCardType DISCOVER_2 = new SimulatedCardType("DISCOVER_2", 8, "6011000990139424", 12, 30);
    public static final SimulatedCardType DINERS = new SimulatedCardType("DINERS", 9, "3056930009020004", 12, 30);
    public static final SimulatedCardType DINERS_14_DIGITS = new SimulatedCardType("DINERS_14_DIGITS", 10, "36227206271667", 12, 30);
    public static final SimulatedCardType JCB = new SimulatedCardType("JCB", 11, "3566002020360505", 12, 30);
    public static final SimulatedCardType UNION_PAY = new SimulatedCardType("UNION_PAY", 12, "6200000000000005", 12, 30);
    public static final SimulatedCardType INTERAC = new SimulatedCardType("INTERAC", 13, "4506445006931933", 12, 30);
    public static final SimulatedCardType EFTPOS_AU_DEBIT = new SimulatedCardType("EFTPOS_AU_DEBIT", 14, "6280000360000978", 12, 30);
    public static final SimulatedCardType VISA_US_COMMON_DEBIT = new SimulatedCardType("VISA_US_COMMON_DEBIT", 15, "4000058400000048", 12, 30);
    public static final SimulatedCardType CHARGE_DECLINED = new SimulatedCardType("CHARGE_DECLINED", 16, "4000000000000002", 12, 30);
    public static final SimulatedCardType CHARGE_DECLINED_INSUFFICIENT_FUNDS = new SimulatedCardType("CHARGE_DECLINED_INSUFFICIENT_FUNDS", 17, "4000000000009995", 12, 30);
    public static final SimulatedCardType CHARGE_DECLINED_LOST_CARD = new SimulatedCardType("CHARGE_DECLINED_LOST_CARD", 18, "4000000000009987", 12, 30);
    public static final SimulatedCardType CHARGE_DECLINED_STOLEN_CARD = new SimulatedCardType("CHARGE_DECLINED_STOLEN_CARD", 19, "4000000000009979", 12, 30);
    public static final SimulatedCardType CHARGE_DECLINED_EXPIRED_CARD = new SimulatedCardType("CHARGE_DECLINED_EXPIRED_CARD", 20, "4000000000000069", 10, 20);
    public static final SimulatedCardType CHARGE_DECLINED_PROCESSING_ERROR = new SimulatedCardType("CHARGE_DECLINED_PROCESSING_ERROR", 21, "4000000000000119", 12, 30);
    public static final SimulatedCardType EFTPOS_AU_VISA_DEBIT = new SimulatedCardType("EFTPOS_AU_VISA_DEBIT", 22, "4000050360000001", 12, 30);
    public static final SimulatedCardType EFTPOS_AU_DEBIT_MASTERCARD = new SimulatedCardType("EFTPOS_AU_DEBIT_MASTERCARD", 23, "5555050360000080", 12, 30);
    public static final SimulatedCardType OFFLINE_PIN_CVM = new SimulatedCardType("OFFLINE_PIN_CVM", 24, "4001007020000002", 12, 30);
    public static final SimulatedCardType OFFLINE_PIN_SCA_RETRY = new SimulatedCardType("OFFLINE_PIN_SCA_RETRY", 25, "4000008260000075", 12, 30);
    public static final SimulatedCardType ONLINE_PIN_CVM = new SimulatedCardType("ONLINE_PIN_CVM", 26, "4001000360000005", 12, 30);
    public static final SimulatedCardType ONLINE_PIN_SCA_RETRY = new SimulatedCardType("ONLINE_PIN_SCA_RETRY", 27, "4000002760000008", 12, 30);

    private static final /* synthetic */ SimulatedCardType[] $values() {
        return new SimulatedCardType[]{VISA, VISA_DEBIT, MASTERCARD, MASTERCARD_DEBIT, MASTERCARD_PREPAID, AMEX, AMEX_2, DISCOVER, DISCOVER_2, DINERS, DINERS_14_DIGITS, JCB, UNION_PAY, INTERAC, EFTPOS_AU_DEBIT, VISA_US_COMMON_DEBIT, CHARGE_DECLINED, CHARGE_DECLINED_INSUFFICIENT_FUNDS, CHARGE_DECLINED_LOST_CARD, CHARGE_DECLINED_STOLEN_CARD, CHARGE_DECLINED_EXPIRED_CARD, CHARGE_DECLINED_PROCESSING_ERROR, EFTPOS_AU_VISA_DEBIT, EFTPOS_AU_DEBIT_MASTERCARD, OFFLINE_PIN_CVM, OFFLINE_PIN_SCA_RETRY, ONLINE_PIN_CVM, ONLINE_PIN_SCA_RETRY};
    }

    public static /* synthetic */ void getCardNumber$annotations() {
    }

    public static EnumEntries<SimulatedCardType> getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ void getExpMonth$annotations() {
    }

    public static /* synthetic */ void getExpYear$annotations() {
    }

    public static SimulatedCardType valueOf(String str) {
        return (SimulatedCardType) Enum.valueOf(SimulatedCardType.class, str);
    }

    public static SimulatedCardType[] values() {
        return (SimulatedCardType[]) $VALUES.clone();
    }

    private SimulatedCardType(String str, int i, String str2, int i2, int i3) {
        this.cardNumber = str2;
        this.expMonth = i2;
        this.expYear = i3;
    }

    public final String getCardNumber() {
        return this.cardNumber;
    }

    public final int getExpMonth() {
        return this.expMonth;
    }

    public final int getExpYear() {
        return this.expYear;
    }

    static {
        SimulatedCardType[] simulatedCardTypeArr$values = $values();
        $VALUES = simulatedCardTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(simulatedCardTypeArr$values);
    }
}
