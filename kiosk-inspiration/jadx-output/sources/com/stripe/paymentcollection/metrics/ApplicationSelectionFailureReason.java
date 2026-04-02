package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/ApplicationSelectionFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "COLLECTION_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationSelectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApplicationSelectionFailureReason[] $VALUES;
    public static final ApplicationSelectionFailureReason UNKNOWN = new ApplicationSelectionFailureReason("UNKNOWN", 0);
    public static final ApplicationSelectionFailureReason MERCHANT_CANCELLED = new ApplicationSelectionFailureReason("MERCHANT_CANCELLED", 1);
    public static final ApplicationSelectionFailureReason CUSTOMER_CANCELLED = new ApplicationSelectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final ApplicationSelectionFailureReason HARDWARE_CANCELLED = new ApplicationSelectionFailureReason("HARDWARE_CANCELLED", 3);
    public static final ApplicationSelectionFailureReason COLLECTION_FAILURE = new ApplicationSelectionFailureReason("COLLECTION_FAILURE", 4);

    private static final /* synthetic */ ApplicationSelectionFailureReason[] $values() {
        return new ApplicationSelectionFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, COLLECTION_FAILURE};
    }

    public static EnumEntries<ApplicationSelectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static ApplicationSelectionFailureReason valueOf(String str) {
        return (ApplicationSelectionFailureReason) Enum.valueOf(ApplicationSelectionFailureReason.class, str);
    }

    public static ApplicationSelectionFailureReason[] values() {
        return (ApplicationSelectionFailureReason[]) $VALUES.clone();
    }

    private ApplicationSelectionFailureReason(String str, int i) {
    }

    static {
        ApplicationSelectionFailureReason[] applicationSelectionFailureReasonArr$values = $values();
        $VALUES = applicationSelectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(applicationSelectionFailureReasonArr$values);
    }
}
