package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DisconnectReason.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "DISCONNECT_REQUESTED", "REBOOT_REQUESTED", "SECURITY_REBOOT", "CRITICALLY_LOW_BATTERY", "POWERED_OFF", "BLUETOOTH_DISABLED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisconnectReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DisconnectReason[] $VALUES;
    public static final DisconnectReason UNKNOWN = new DisconnectReason("UNKNOWN", 0);
    public static final DisconnectReason DISCONNECT_REQUESTED = new DisconnectReason("DISCONNECT_REQUESTED", 1);
    public static final DisconnectReason REBOOT_REQUESTED = new DisconnectReason("REBOOT_REQUESTED", 2);
    public static final DisconnectReason SECURITY_REBOOT = new DisconnectReason("SECURITY_REBOOT", 3);
    public static final DisconnectReason CRITICALLY_LOW_BATTERY = new DisconnectReason("CRITICALLY_LOW_BATTERY", 4);
    public static final DisconnectReason POWERED_OFF = new DisconnectReason("POWERED_OFF", 5);
    public static final DisconnectReason BLUETOOTH_DISABLED = new DisconnectReason("BLUETOOTH_DISABLED", 6);

    private static final /* synthetic */ DisconnectReason[] $values() {
        return new DisconnectReason[]{UNKNOWN, DISCONNECT_REQUESTED, REBOOT_REQUESTED, SECURITY_REBOOT, CRITICALLY_LOW_BATTERY, POWERED_OFF, BLUETOOTH_DISABLED};
    }

    public static EnumEntries<DisconnectReason> getEntries() {
        return $ENTRIES;
    }

    public static DisconnectReason valueOf(String str) {
        return (DisconnectReason) Enum.valueOf(DisconnectReason.class, str);
    }

    public static DisconnectReason[] values() {
        return (DisconnectReason[]) $VALUES.clone();
    }

    private DisconnectReason(String str, int i) {
    }

    static {
        DisconnectReason[] disconnectReasonArr$values = $values();
        $VALUES = disconnectReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(disconnectReasonArr$values);
    }
}
