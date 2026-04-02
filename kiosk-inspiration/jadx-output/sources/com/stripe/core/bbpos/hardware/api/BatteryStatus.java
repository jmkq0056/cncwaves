package com.stripe.core.bbpos.hardware.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BatteryStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "", "(Ljava/lang/String;I)V", "LOW", "CRITICALLY_LOW", "CHARGING", "NOT_CHARGING", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BatteryStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BatteryStatus[] $VALUES;
    public static final BatteryStatus LOW = new BatteryStatus("LOW", 0);
    public static final BatteryStatus CRITICALLY_LOW = new BatteryStatus("CRITICALLY_LOW", 1);
    public static final BatteryStatus CHARGING = new BatteryStatus("CHARGING", 2);
    public static final BatteryStatus NOT_CHARGING = new BatteryStatus("NOT_CHARGING", 3);

    private static final /* synthetic */ BatteryStatus[] $values() {
        return new BatteryStatus[]{LOW, CRITICALLY_LOW, CHARGING, NOT_CHARGING};
    }

    public static EnumEntries<BatteryStatus> getEntries() {
        return $ENTRIES;
    }

    public static BatteryStatus valueOf(String str) {
        return (BatteryStatus) Enum.valueOf(BatteryStatus.class, str);
    }

    public static BatteryStatus[] values() {
        return (BatteryStatus[]) $VALUES.clone();
    }

    private BatteryStatus(String str, int i) {
    }

    static {
        BatteryStatus[] batteryStatusArr$values = $values();
        $VALUES = batteryStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(batteryStatusArr$values);
    }
}
