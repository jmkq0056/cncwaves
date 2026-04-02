package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DisconnectCause.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/status/DisconnectCause;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "COMM_LINK_UNINITIALIZED", "CONNECTED_TO_ANOTHER_DEVICE", "FAIL_TO_START_BLUETOOTH", "FAIL_TO_START_USB", "USB_DEVICE_NOT_FOUND", "USB_DEVICE_PERMISSION_DENIED", "USB_NOT_SUPPORTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisconnectCause {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DisconnectCause[] $VALUES;
    public static final DisconnectCause UNKNOWN = new DisconnectCause("UNKNOWN", 0);
    public static final DisconnectCause COMM_LINK_UNINITIALIZED = new DisconnectCause("COMM_LINK_UNINITIALIZED", 1);
    public static final DisconnectCause CONNECTED_TO_ANOTHER_DEVICE = new DisconnectCause("CONNECTED_TO_ANOTHER_DEVICE", 2);
    public static final DisconnectCause FAIL_TO_START_BLUETOOTH = new DisconnectCause("FAIL_TO_START_BLUETOOTH", 3);
    public static final DisconnectCause FAIL_TO_START_USB = new DisconnectCause("FAIL_TO_START_USB", 4);
    public static final DisconnectCause USB_DEVICE_NOT_FOUND = new DisconnectCause("USB_DEVICE_NOT_FOUND", 5);
    public static final DisconnectCause USB_DEVICE_PERMISSION_DENIED = new DisconnectCause("USB_DEVICE_PERMISSION_DENIED", 6);
    public static final DisconnectCause USB_NOT_SUPPORTED = new DisconnectCause("USB_NOT_SUPPORTED", 7);

    private static final /* synthetic */ DisconnectCause[] $values() {
        return new DisconnectCause[]{UNKNOWN, COMM_LINK_UNINITIALIZED, CONNECTED_TO_ANOTHER_DEVICE, FAIL_TO_START_BLUETOOTH, FAIL_TO_START_USB, USB_DEVICE_NOT_FOUND, USB_DEVICE_PERMISSION_DENIED, USB_NOT_SUPPORTED};
    }

    public static EnumEntries<DisconnectCause> getEntries() {
        return $ENTRIES;
    }

    public static DisconnectCause valueOf(String str) {
        return (DisconnectCause) Enum.valueOf(DisconnectCause.class, str);
    }

    public static DisconnectCause[] values() {
        return (DisconnectCause[]) $VALUES.clone();
    }

    private DisconnectCause(String str, int i) {
    }

    static {
        DisconnectCause[] disconnectCauseArr$values = $values();
        $VALUES = disconnectCauseArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(disconnectCauseArr$values);
    }
}
