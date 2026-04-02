package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: EmvTransactionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/emv/EmvTransactionType;", "", "(Ljava/lang/String;I)V", "QUICK", "TRADITIONAL", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmvTransactionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EmvTransactionType[] $VALUES;
    public static final EmvTransactionType QUICK = new EmvTransactionType("QUICK", 0);
    public static final EmvTransactionType TRADITIONAL = new EmvTransactionType("TRADITIONAL", 1);

    private static final /* synthetic */ EmvTransactionType[] $values() {
        return new EmvTransactionType[]{QUICK, TRADITIONAL};
    }

    public static EnumEntries<EmvTransactionType> getEntries() {
        return $ENTRIES;
    }

    public static EmvTransactionType valueOf(String str) {
        return (EmvTransactionType) Enum.valueOf(EmvTransactionType.class, str);
    }

    public static EmvTransactionType[] values() {
        return (EmvTransactionType[]) $VALUES.clone();
    }

    private EmvTransactionType(String str, int i) {
    }

    static {
        EmvTransactionType[] emvTransactionTypeArr$values = $values();
        $VALUES = emvTransactionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(emvTransactionTypeArr$values);
    }
}
