package com.stripe.core.hardware;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/hardware/ConnectionType;", "", "(Ljava/lang/String;I)V", "BLUETOOTH", "USB", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectionType[] $VALUES;
    public static final ConnectionType BLUETOOTH = new ConnectionType("BLUETOOTH", 0);
    public static final ConnectionType USB = new ConnectionType("USB", 1);

    private static final /* synthetic */ ConnectionType[] $values() {
        return new ConnectionType[]{BLUETOOTH, USB};
    }

    public static EnumEntries<ConnectionType> getEntries() {
        return $ENTRIES;
    }

    public static ConnectionType valueOf(String str) {
        return (ConnectionType) Enum.valueOf(ConnectionType.class, str);
    }

    public static ConnectionType[] values() {
        return (ConnectionType[]) $VALUES.clone();
    }

    private ConnectionType(String str, int i) {
    }

    static {
        ConnectionType[] connectionTypeArr$values = $values();
        $VALUES = connectionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectionTypeArr$values);
    }
}
