package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ManualEntryEventReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ManualEntryType;", "", "(Ljava/lang/String;I)V", "PAN_ENTRY", "EXPIRY_DATE_ENTRY", "CVV_ENTRY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ManualEntryType[] $VALUES;
    public static final ManualEntryType PAN_ENTRY = new ManualEntryType("PAN_ENTRY", 0);
    public static final ManualEntryType EXPIRY_DATE_ENTRY = new ManualEntryType("EXPIRY_DATE_ENTRY", 1);
    public static final ManualEntryType CVV_ENTRY = new ManualEntryType("CVV_ENTRY", 2);

    private static final /* synthetic */ ManualEntryType[] $values() {
        return new ManualEntryType[]{PAN_ENTRY, EXPIRY_DATE_ENTRY, CVV_ENTRY};
    }

    public static EnumEntries<ManualEntryType> getEntries() {
        return $ENTRIES;
    }

    public static ManualEntryType valueOf(String str) {
        return (ManualEntryType) Enum.valueOf(ManualEntryType.class, str);
    }

    public static ManualEntryType[] values() {
        return (ManualEntryType[]) $VALUES.clone();
    }

    private ManualEntryType(String str, int i) {
    }

    static {
        ManualEntryType[] manualEntryTypeArr$values = $values();
        $VALUES = manualEntryTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(manualEntryTypeArr$values);
    }
}
