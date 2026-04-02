package com.stripe.core.connectivity;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConnectivityDataClasses.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/connectivity/ConnectivityType;", "", "(Ljava/lang/String;I)V", "CELLULAR", "ETHERNET", "WIFI", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectivityType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectivityType[] $VALUES;
    public static final ConnectivityType CELLULAR = new ConnectivityType("CELLULAR", 0);
    public static final ConnectivityType ETHERNET = new ConnectivityType("ETHERNET", 1);
    public static final ConnectivityType WIFI = new ConnectivityType("WIFI", 2);

    private static final /* synthetic */ ConnectivityType[] $values() {
        return new ConnectivityType[]{CELLULAR, ETHERNET, WIFI};
    }

    public static EnumEntries<ConnectivityType> getEntries() {
        return $ENTRIES;
    }

    public static ConnectivityType valueOf(String str) {
        return (ConnectivityType) Enum.valueOf(ConnectivityType.class, str);
    }

    public static ConnectivityType[] values() {
        return (ConnectivityType[]) $VALUES.clone();
    }

    private ConnectivityType(String str, int i) {
    }

    static {
        ConnectivityType[] connectivityTypeArr$values = $values();
        $VALUES = connectivityTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectivityTypeArr$values);
    }
}
