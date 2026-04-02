package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.google.firebase.perf.FirebasePerformance;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "", "(Ljava/lang/String;I)V", "EMPTY", "CHECK_FOR_UPDATE", FirebasePerformance.HttpMethod.CONNECT, "REBOOT", "DISCONNECT", "DISCOVER", "INSTALL_UPDATES", "START_SESSION", "READER_INFO", "CANCELLED", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectAndUpdateState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectAndUpdateState[] $VALUES;
    public static final ConnectAndUpdateState EMPTY = new ConnectAndUpdateState("EMPTY", 0);
    public static final ConnectAndUpdateState CHECK_FOR_UPDATE = new ConnectAndUpdateState("CHECK_FOR_UPDATE", 1);
    public static final ConnectAndUpdateState CONNECT = new ConnectAndUpdateState(FirebasePerformance.HttpMethod.CONNECT, 2);
    public static final ConnectAndUpdateState REBOOT = new ConnectAndUpdateState("REBOOT", 3);
    public static final ConnectAndUpdateState DISCONNECT = new ConnectAndUpdateState("DISCONNECT", 4);
    public static final ConnectAndUpdateState DISCOVER = new ConnectAndUpdateState("DISCOVER", 5);
    public static final ConnectAndUpdateState INSTALL_UPDATES = new ConnectAndUpdateState("INSTALL_UPDATES", 6);
    public static final ConnectAndUpdateState START_SESSION = new ConnectAndUpdateState("START_SESSION", 7);
    public static final ConnectAndUpdateState READER_INFO = new ConnectAndUpdateState("READER_INFO", 8);
    public static final ConnectAndUpdateState CANCELLED = new ConnectAndUpdateState("CANCELLED", 9);

    private static final /* synthetic */ ConnectAndUpdateState[] $values() {
        return new ConnectAndUpdateState[]{EMPTY, CHECK_FOR_UPDATE, CONNECT, REBOOT, DISCONNECT, DISCOVER, INSTALL_UPDATES, START_SESSION, READER_INFO, CANCELLED};
    }

    public static EnumEntries<ConnectAndUpdateState> getEntries() {
        return $ENTRIES;
    }

    public static ConnectAndUpdateState valueOf(String str) {
        return (ConnectAndUpdateState) Enum.valueOf(ConnectAndUpdateState.class, str);
    }

    public static ConnectAndUpdateState[] values() {
        return (ConnectAndUpdateState[]) $VALUES.clone();
    }

    private ConnectAndUpdateState(String str, int i) {
    }

    static {
        ConnectAndUpdateState[] connectAndUpdateStateArr$values = $values();
        $VALUES = connectAndUpdateStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectAndUpdateStateArr$values);
    }
}
