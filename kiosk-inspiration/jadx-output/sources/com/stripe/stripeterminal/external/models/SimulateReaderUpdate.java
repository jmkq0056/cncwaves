package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SimulateReaderUpdate.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;", "", "(Ljava/lang/String;I)V", "UPDATE_AVAILABLE", "NONE", "REQUIRED", "REQUIRED_FOR_OFFLINE", "LOW_BATTERY", "LOW_BATTERY_SUCCEED_CONNECT", "RANDOM", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulateReaderUpdate {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SimulateReaderUpdate[] $VALUES;
    public static final SimulateReaderUpdate UPDATE_AVAILABLE = new SimulateReaderUpdate("UPDATE_AVAILABLE", 0);
    public static final SimulateReaderUpdate NONE = new SimulateReaderUpdate("NONE", 1);
    public static final SimulateReaderUpdate REQUIRED = new SimulateReaderUpdate("REQUIRED", 2);
    public static final SimulateReaderUpdate REQUIRED_FOR_OFFLINE = new SimulateReaderUpdate("REQUIRED_FOR_OFFLINE", 3);
    public static final SimulateReaderUpdate LOW_BATTERY = new SimulateReaderUpdate("LOW_BATTERY", 4);
    public static final SimulateReaderUpdate LOW_BATTERY_SUCCEED_CONNECT = new SimulateReaderUpdate("LOW_BATTERY_SUCCEED_CONNECT", 5);
    public static final SimulateReaderUpdate RANDOM = new SimulateReaderUpdate("RANDOM", 6);

    private static final /* synthetic */ SimulateReaderUpdate[] $values() {
        return new SimulateReaderUpdate[]{UPDATE_AVAILABLE, NONE, REQUIRED, REQUIRED_FOR_OFFLINE, LOW_BATTERY, LOW_BATTERY_SUCCEED_CONNECT, RANDOM};
    }

    public static EnumEntries<SimulateReaderUpdate> getEntries() {
        return $ENTRIES;
    }

    public static SimulateReaderUpdate valueOf(String str) {
        return (SimulateReaderUpdate) Enum.valueOf(SimulateReaderUpdate.class, str);
    }

    public static SimulateReaderUpdate[] values() {
        return (SimulateReaderUpdate[]) $VALUES.clone();
    }

    private SimulateReaderUpdate(String str, int i) {
    }

    static {
        SimulateReaderUpdate[] simulateReaderUpdateArr$values = $values();
        $VALUES = simulateReaderUpdateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(simulateReaderUpdateArr$values);
    }
}
