package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/paymentcollection/metrics/PendingPosCommand;", "", "(Ljava/lang/String;I)V", "START_COLLECTION", "PROCESS_PAYMENT", "RESUME_PAYMENT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PendingPosCommand {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PendingPosCommand[] $VALUES;
    public static final PendingPosCommand START_COLLECTION = new PendingPosCommand("START_COLLECTION", 0);
    public static final PendingPosCommand PROCESS_PAYMENT = new PendingPosCommand("PROCESS_PAYMENT", 1);
    public static final PendingPosCommand RESUME_PAYMENT = new PendingPosCommand("RESUME_PAYMENT", 2);

    private static final /* synthetic */ PendingPosCommand[] $values() {
        return new PendingPosCommand[]{START_COLLECTION, PROCESS_PAYMENT, RESUME_PAYMENT};
    }

    public static EnumEntries<PendingPosCommand> getEntries() {
        return $ENTRIES;
    }

    public static PendingPosCommand valueOf(String str) {
        return (PendingPosCommand) Enum.valueOf(PendingPosCommand.class, str);
    }

    public static PendingPosCommand[] values() {
        return (PendingPosCommand[]) $VALUES.clone();
    }

    private PendingPosCommand(String str, int i) {
    }

    static {
        PendingPosCommand[] pendingPosCommandArr$values = $values();
        $VALUES = pendingPosCommandArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pendingPosCommandArr$values);
    }
}
