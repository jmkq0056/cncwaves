package com.stripe.paymentcollection.manualentry;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ManualEntryCollectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "USER_CANCELLED", "INVALID_ENCRYPTED_DATA_RESULT", "TIMEOUT", "DEVICE_FAILURE", "EARLY_TRANSACTION_RESULT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ManualEntryFailureReason[] $VALUES;
    public static final ManualEntryFailureReason UNKNOWN = new ManualEntryFailureReason("UNKNOWN", 0);
    public static final ManualEntryFailureReason MERCHANT_CANCELLED = new ManualEntryFailureReason("MERCHANT_CANCELLED", 1);
    public static final ManualEntryFailureReason USER_CANCELLED = new ManualEntryFailureReason("USER_CANCELLED", 2);
    public static final ManualEntryFailureReason INVALID_ENCRYPTED_DATA_RESULT = new ManualEntryFailureReason("INVALID_ENCRYPTED_DATA_RESULT", 3);
    public static final ManualEntryFailureReason TIMEOUT = new ManualEntryFailureReason("TIMEOUT", 4);
    public static final ManualEntryFailureReason DEVICE_FAILURE = new ManualEntryFailureReason("DEVICE_FAILURE", 5);
    public static final ManualEntryFailureReason EARLY_TRANSACTION_RESULT = new ManualEntryFailureReason("EARLY_TRANSACTION_RESULT", 6);

    private static final /* synthetic */ ManualEntryFailureReason[] $values() {
        return new ManualEntryFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, USER_CANCELLED, INVALID_ENCRYPTED_DATA_RESULT, TIMEOUT, DEVICE_FAILURE, EARLY_TRANSACTION_RESULT};
    }

    public static EnumEntries<ManualEntryFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static ManualEntryFailureReason valueOf(String str) {
        return (ManualEntryFailureReason) Enum.valueOf(ManualEntryFailureReason.class, str);
    }

    public static ManualEntryFailureReason[] values() {
        return (ManualEntryFailureReason[]) $VALUES.clone();
    }

    private ManualEntryFailureReason(String str, int i) {
    }

    static {
        ManualEntryFailureReason[] manualEntryFailureReasonArr$values = $values();
        $VALUES = manualEntryFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(manualEntryFailureReasonArr$values);
    }
}
