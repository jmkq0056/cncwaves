package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BbposTamper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/hardware/status/TamperType;", "", "(Ljava/lang/String;I)V", "Unknown", "FirmwareIntegrityCheck", "ConfigIntegrityCheck", "KeyIntegrityCheck", "UnrecoverableTamper", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TamperType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TamperType[] $VALUES;
    public static final TamperType Unknown = new TamperType("Unknown", 0);
    public static final TamperType FirmwareIntegrityCheck = new TamperType("FirmwareIntegrityCheck", 1);
    public static final TamperType ConfigIntegrityCheck = new TamperType("ConfigIntegrityCheck", 2);
    public static final TamperType KeyIntegrityCheck = new TamperType("KeyIntegrityCheck", 3);
    public static final TamperType UnrecoverableTamper = new TamperType("UnrecoverableTamper", 4);

    private static final /* synthetic */ TamperType[] $values() {
        return new TamperType[]{Unknown, FirmwareIntegrityCheck, ConfigIntegrityCheck, KeyIntegrityCheck, UnrecoverableTamper};
    }

    public static EnumEntries<TamperType> getEntries() {
        return $ENTRIES;
    }

    public static TamperType valueOf(String str) {
        return (TamperType) Enum.valueOf(TamperType.class, str);
    }

    public static TamperType[] values() {
        return (TamperType[]) $VALUES.clone();
    }

    private TamperType(String str, int i) {
    }

    static {
        TamperType[] tamperTypeArr$values = $values();
        $VALUES = tamperTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tamperTypeArr$values);
    }
}
