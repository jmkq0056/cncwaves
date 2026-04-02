package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "TIMEOUT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KernelProcessingFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KernelProcessingFailureReason[] $VALUES;
    public static final KernelProcessingFailureReason UNKNOWN = new KernelProcessingFailureReason("UNKNOWN", 0);
    public static final KernelProcessingFailureReason MERCHANT_CANCELLED = new KernelProcessingFailureReason("MERCHANT_CANCELLED", 1);
    public static final KernelProcessingFailureReason CUSTOMER_CANCELLED = new KernelProcessingFailureReason("CUSTOMER_CANCELLED", 2);
    public static final KernelProcessingFailureReason HARDWARE_CANCELLED = new KernelProcessingFailureReason("HARDWARE_CANCELLED", 3);
    public static final KernelProcessingFailureReason TIMEOUT = new KernelProcessingFailureReason("TIMEOUT", 4);

    private static final /* synthetic */ KernelProcessingFailureReason[] $values() {
        return new KernelProcessingFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, TIMEOUT};
    }

    public static EnumEntries<KernelProcessingFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static KernelProcessingFailureReason valueOf(String str) {
        return (KernelProcessingFailureReason) Enum.valueOf(KernelProcessingFailureReason.class, str);
    }

    public static KernelProcessingFailureReason[] values() {
        return (KernelProcessingFailureReason[]) $VALUES.clone();
    }

    private KernelProcessingFailureReason(String str, int i) {
    }

    static {
        KernelProcessingFailureReason[] kernelProcessingFailureReasonArr$values = $values();
        $VALUES = kernelProcessingFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(kernelProcessingFailureReasonArr$values);
    }
}
