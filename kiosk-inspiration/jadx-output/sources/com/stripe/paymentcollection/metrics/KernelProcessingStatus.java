package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "BUSY", "IDLE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KernelProcessingStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KernelProcessingStatus[] $VALUES;
    public static final KernelProcessingStatus UNKNOWN = new KernelProcessingStatus("UNKNOWN", 0);
    public static final KernelProcessingStatus BUSY = new KernelProcessingStatus("BUSY", 1);
    public static final KernelProcessingStatus IDLE = new KernelProcessingStatus("IDLE", 2);

    private static final /* synthetic */ KernelProcessingStatus[] $values() {
        return new KernelProcessingStatus[]{UNKNOWN, BUSY, IDLE};
    }

    public static EnumEntries<KernelProcessingStatus> getEntries() {
        return $ENTRIES;
    }

    public static KernelProcessingStatus valueOf(String str) {
        return (KernelProcessingStatus) Enum.valueOf(KernelProcessingStatus.class, str);
    }

    public static KernelProcessingStatus[] values() {
        return (KernelProcessingStatus[]) $VALUES.clone();
    }

    private KernelProcessingStatus(String str, int i) {
    }

    static {
        KernelProcessingStatus[] kernelProcessingStatusArr$values = $values();
        $VALUES = kernelProcessingStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(kernelProcessingStatusArr$values);
    }
}
