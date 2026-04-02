package com.stripe.core.connectivity;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.apache.http.util.VersionInfo;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectivityDataClasses.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/connectivity/ConnectivityStatus;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "AVAILABLE", VersionInfo.UNAVAILABLE, "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectivityStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectivityStatus[] $VALUES;
    public static final ConnectivityStatus UNKNOWN = new ConnectivityStatus("UNKNOWN", 0);
    public static final ConnectivityStatus AVAILABLE = new ConnectivityStatus("AVAILABLE", 1);
    public static final ConnectivityStatus UNAVAILABLE = new ConnectivityStatus(VersionInfo.UNAVAILABLE, 2);

    private static final /* synthetic */ ConnectivityStatus[] $values() {
        return new ConnectivityStatus[]{UNKNOWN, AVAILABLE, UNAVAILABLE};
    }

    public static EnumEntries<ConnectivityStatus> getEntries() {
        return $ENTRIES;
    }

    public static ConnectivityStatus valueOf(String str) {
        return (ConnectivityStatus) Enum.valueOf(ConnectivityStatus.class, str);
    }

    public static ConnectivityStatus[] values() {
        return (ConnectivityStatus[]) $VALUES.clone();
    }

    private ConnectivityStatus(String str, int i) {
    }

    static {
        ConnectivityStatus[] connectivityStatusArr$values = $values();
        $VALUES = connectivityStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectivityStatusArr$values);
    }
}
