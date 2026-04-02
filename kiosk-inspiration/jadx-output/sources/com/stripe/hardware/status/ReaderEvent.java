package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReaderEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/status/ReaderEvent;", "", "(Ljava/lang/String;I)V", "CARD_INSERTED", "CARD_REMOVED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderEvent {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderEvent[] $VALUES;
    public static final ReaderEvent CARD_INSERTED = new ReaderEvent("CARD_INSERTED", 0);
    public static final ReaderEvent CARD_REMOVED = new ReaderEvent("CARD_REMOVED", 1);

    private static final /* synthetic */ ReaderEvent[] $values() {
        return new ReaderEvent[]{CARD_INSERTED, CARD_REMOVED};
    }

    public static EnumEntries<ReaderEvent> getEntries() {
        return $ENTRIES;
    }

    public static ReaderEvent valueOf(String str) {
        return (ReaderEvent) Enum.valueOf(ReaderEvent.class, str);
    }

    public static ReaderEvent[] values() {
        return (ReaderEvent[]) $VALUES.clone();
    }

    private ReaderEvent(String str, int i) {
    }

    static {
        ReaderEvent[] readerEventArr$values = $values();
        $VALUES = readerEventArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readerEventArr$values);
    }
}
