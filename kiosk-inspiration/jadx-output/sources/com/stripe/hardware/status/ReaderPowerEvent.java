package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderPowerEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/status/ReaderPowerEvent;", "", "(Ljava/lang/String;I)V", "POWER_BUTTON_PRESSED", "POWER_DOWN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderPowerEvent {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderPowerEvent[] $VALUES;
    public static final ReaderPowerEvent POWER_BUTTON_PRESSED = new ReaderPowerEvent("POWER_BUTTON_PRESSED", 0);
    public static final ReaderPowerEvent POWER_DOWN = new ReaderPowerEvent("POWER_DOWN", 1);

    private static final /* synthetic */ ReaderPowerEvent[] $values() {
        return new ReaderPowerEvent[]{POWER_BUTTON_PRESSED, POWER_DOWN};
    }

    public static EnumEntries<ReaderPowerEvent> getEntries() {
        return $ENTRIES;
    }

    public static ReaderPowerEvent valueOf(String str) {
        return (ReaderPowerEvent) Enum.valueOf(ReaderPowerEvent.class, str);
    }

    public static ReaderPowerEvent[] values() {
        return (ReaderPowerEvent[]) $VALUES.clone();
    }

    private ReaderPowerEvent(String str, int i) {
    }

    static {
        ReaderPowerEvent[] readerPowerEventArr$values = $values();
        $VALUES = readerPowerEventArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerPowerEventArr$values);
    }
}
