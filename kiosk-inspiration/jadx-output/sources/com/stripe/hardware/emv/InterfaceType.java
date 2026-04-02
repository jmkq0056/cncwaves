package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: InterfaceType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/emv/InterfaceType;", "", "(Ljava/lang/String;I)V", "CONTACT", "CONTACTLESS", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InterfaceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InterfaceType[] $VALUES;
    public static final InterfaceType CONTACT = new InterfaceType("CONTACT", 0);
    public static final InterfaceType CONTACTLESS = new InterfaceType("CONTACTLESS", 1);

    private static final /* synthetic */ InterfaceType[] $values() {
        return new InterfaceType[]{CONTACT, CONTACTLESS};
    }

    public static EnumEntries<InterfaceType> getEntries() {
        return $ENTRIES;
    }

    public static InterfaceType valueOf(String str) {
        return (InterfaceType) Enum.valueOf(InterfaceType.class, str);
    }

    public static InterfaceType[] values() {
        return (InterfaceType[]) $VALUES.clone();
    }

    private InterfaceType(String str, int i) {
    }

    static {
        InterfaceType[] interfaceTypeArr$values = $values();
        $VALUES = interfaceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(interfaceTypeArr$values);
    }
}
