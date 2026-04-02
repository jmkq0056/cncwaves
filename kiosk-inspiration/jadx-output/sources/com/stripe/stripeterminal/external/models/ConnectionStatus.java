package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectionStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionStatus;", "", "(Ljava/lang/String;I)V", "NOT_CONNECTED", "DISCOVERING", "CONNECTING", "CONNECTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectionStatus[] $VALUES;
    public static final ConnectionStatus NOT_CONNECTED = new ConnectionStatus("NOT_CONNECTED", 0);
    public static final ConnectionStatus DISCOVERING = new ConnectionStatus("DISCOVERING", 1);
    public static final ConnectionStatus CONNECTING = new ConnectionStatus("CONNECTING", 2);
    public static final ConnectionStatus CONNECTED = new ConnectionStatus("CONNECTED", 3);

    private static final /* synthetic */ ConnectionStatus[] $values() {
        return new ConnectionStatus[]{NOT_CONNECTED, DISCOVERING, CONNECTING, CONNECTED};
    }

    public static EnumEntries<ConnectionStatus> getEntries() {
        return $ENTRIES;
    }

    public static ConnectionStatus valueOf(String str) {
        return (ConnectionStatus) Enum.valueOf(ConnectionStatus.class, str);
    }

    public static ConnectionStatus[] values() {
        return (ConnectionStatus[]) $VALUES.clone();
    }

    private ConnectionStatus(String str, int i) {
    }

    static {
        ConnectionStatus[] connectionStatusArr$values = $values();
        $VALUES = connectionStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectionStatusArr$values);
    }
}
