package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderBatteryStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/status/ReaderBatteryStatus;", "", "(Ljava/lang/String;I)V", "LOW", "CRITICALLY_LOW", "CHARGING", "NOT_CHARGING", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderBatteryStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderBatteryStatus[] $VALUES;
    public static final ReaderBatteryStatus LOW = new ReaderBatteryStatus("LOW", 0);
    public static final ReaderBatteryStatus CRITICALLY_LOW = new ReaderBatteryStatus("CRITICALLY_LOW", 1);
    public static final ReaderBatteryStatus CHARGING = new ReaderBatteryStatus("CHARGING", 2);
    public static final ReaderBatteryStatus NOT_CHARGING = new ReaderBatteryStatus("NOT_CHARGING", 3);

    private static final /* synthetic */ ReaderBatteryStatus[] $values() {
        return new ReaderBatteryStatus[]{LOW, CRITICALLY_LOW, CHARGING, NOT_CHARGING};
    }

    public static EnumEntries<ReaderBatteryStatus> getEntries() {
        return $ENTRIES;
    }

    public static ReaderBatteryStatus valueOf(String str) {
        return (ReaderBatteryStatus) Enum.valueOf(ReaderBatteryStatus.class, str);
    }

    public static ReaderBatteryStatus[] values() {
        return (ReaderBatteryStatus[]) $VALUES.clone();
    }

    private ReaderBatteryStatus(String str, int i) {
    }

    static {
        ReaderBatteryStatus[] readerBatteryStatusArr$values = $values();
        $VALUES = readerBatteryStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerBatteryStatusArr$values);
    }
}
