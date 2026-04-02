package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RebootCause.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/hardware/status/RebootCause;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "SDK_REQUESTED_REBOOT", "FIRMWARE_SELF_TEST", "RECOVERY_ATTEMPT", "WATCHDOG_TIMEOUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RebootCause {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RebootCause[] $VALUES;
    public static final RebootCause UNKNOWN = new RebootCause("UNKNOWN", 0);
    public static final RebootCause SDK_REQUESTED_REBOOT = new RebootCause("SDK_REQUESTED_REBOOT", 1);
    public static final RebootCause FIRMWARE_SELF_TEST = new RebootCause("FIRMWARE_SELF_TEST", 2);
    public static final RebootCause RECOVERY_ATTEMPT = new RebootCause("RECOVERY_ATTEMPT", 3);
    public static final RebootCause WATCHDOG_TIMEOUT = new RebootCause("WATCHDOG_TIMEOUT", 4);

    private static final /* synthetic */ RebootCause[] $values() {
        return new RebootCause[]{UNKNOWN, SDK_REQUESTED_REBOOT, FIRMWARE_SELF_TEST, RECOVERY_ATTEMPT, WATCHDOG_TIMEOUT};
    }

    public static EnumEntries<RebootCause> getEntries() {
        return $ENTRIES;
    }

    public static RebootCause valueOf(String str) {
        return (RebootCause) Enum.valueOf(RebootCause.class, str);
    }

    public static RebootCause[] values() {
        return (RebootCause[]) $VALUES.clone();
    }

    private RebootCause(String str, int i) {
    }

    static {
        RebootCause[] rebootCauseArr$values = $values();
        $VALUES = rebootCauseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(rebootCauseArr$values);
    }
}
