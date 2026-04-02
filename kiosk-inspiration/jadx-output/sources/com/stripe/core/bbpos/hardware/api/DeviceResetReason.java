package com.stripe.core.bbpos.hardware.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DeviceResetReason.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "APP_RESET_DEVICE", "FIRMWARE_SELF_TEST", "RECOVERY_ATTEMPT", "WATCHDOG_TIMEOUT", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceResetReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceResetReason[] $VALUES;
    public static final DeviceResetReason UNKNOWN = new DeviceResetReason("UNKNOWN", 0);
    public static final DeviceResetReason APP_RESET_DEVICE = new DeviceResetReason("APP_RESET_DEVICE", 1);
    public static final DeviceResetReason FIRMWARE_SELF_TEST = new DeviceResetReason("FIRMWARE_SELF_TEST", 2);
    public static final DeviceResetReason RECOVERY_ATTEMPT = new DeviceResetReason("RECOVERY_ATTEMPT", 3);
    public static final DeviceResetReason WATCHDOG_TIMEOUT = new DeviceResetReason("WATCHDOG_TIMEOUT", 4);

    private static final /* synthetic */ DeviceResetReason[] $values() {
        return new DeviceResetReason[]{UNKNOWN, APP_RESET_DEVICE, FIRMWARE_SELF_TEST, RECOVERY_ATTEMPT, WATCHDOG_TIMEOUT};
    }

    public static EnumEntries<DeviceResetReason> getEntries() {
        return $ENTRIES;
    }

    public static DeviceResetReason valueOf(String str) {
        return (DeviceResetReason) Enum.valueOf(DeviceResetReason.class, str);
    }

    public static DeviceResetReason[] values() {
        return (DeviceResetReason[]) $VALUES.clone();
    }

    private DeviceResetReason(String str, int i) {
    }

    static {
        DeviceResetReason[] deviceResetReasonArr$values = $values();
        $VALUES = deviceResetReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(deviceResetReasonArr$values);
    }
}
