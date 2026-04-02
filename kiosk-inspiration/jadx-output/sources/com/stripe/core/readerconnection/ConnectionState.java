package com.stripe.core.readerconnection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectionState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/core/readerconnection/ConnectionState;", "", "(Ljava/lang/String;I)V", "NONE", "CONNECTING", "DISCONNECTING", "DISCOVERING", "STARTING_SESSION", "FETCHING_INFO", "REBOOTING", "readerconnection_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectionState[] $VALUES;
    public static final ConnectionState NONE = new ConnectionState("NONE", 0);
    public static final ConnectionState CONNECTING = new ConnectionState("CONNECTING", 1);
    public static final ConnectionState DISCONNECTING = new ConnectionState("DISCONNECTING", 2);
    public static final ConnectionState DISCOVERING = new ConnectionState("DISCOVERING", 3);
    public static final ConnectionState STARTING_SESSION = new ConnectionState("STARTING_SESSION", 4);
    public static final ConnectionState FETCHING_INFO = new ConnectionState("FETCHING_INFO", 5);
    public static final ConnectionState REBOOTING = new ConnectionState("REBOOTING", 6);

    private static final /* synthetic */ ConnectionState[] $values() {
        return new ConnectionState[]{NONE, CONNECTING, DISCONNECTING, DISCOVERING, STARTING_SESSION, FETCHING_INFO, REBOOTING};
    }

    public static EnumEntries<ConnectionState> getEntries() {
        return $ENTRIES;
    }

    public static ConnectionState valueOf(String str) {
        return (ConnectionState) Enum.valueOf(ConnectionState.class, str);
    }

    public static ConnectionState[] values() {
        return (ConnectionState[]) $VALUES.clone();
    }

    private ConnectionState(String str, int i) {
    }

    static {
        ConnectionState[] connectionStateArr$values = $values();
        $VALUES = connectionStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectionStateArr$values);
    }
}
