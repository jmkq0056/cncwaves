package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CancellationType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/status/CancellationType;", "", "(Ljava/lang/String;I)V", "CANCEL_WHILE_IDLE", "CANCEL_DURING_OPERATION", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancellationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CancellationType[] $VALUES;
    public static final CancellationType CANCEL_WHILE_IDLE = new CancellationType("CANCEL_WHILE_IDLE", 0);
    public static final CancellationType CANCEL_DURING_OPERATION = new CancellationType("CANCEL_DURING_OPERATION", 1);

    private static final /* synthetic */ CancellationType[] $values() {
        return new CancellationType[]{CANCEL_WHILE_IDLE, CANCEL_DURING_OPERATION};
    }

    public static EnumEntries<CancellationType> getEntries() {
        return $ENTRIES;
    }

    public static CancellationType valueOf(String str) {
        return (CancellationType) Enum.valueOf(CancellationType.class, str);
    }

    public static CancellationType[] values() {
        return (CancellationType[]) $VALUES.clone();
    }

    private CancellationType(String str, int i) {
    }

    static {
        CancellationType[] cancellationTypeArr$values = $values();
        $VALUES = cancellationTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cancellationTypeArr$values);
    }
}
