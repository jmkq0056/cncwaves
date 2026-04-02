package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "COLLECTION_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccountSelectionFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AccountSelectionFailureReason[] $VALUES;
    public static final AccountSelectionFailureReason UNKNOWN = new AccountSelectionFailureReason("UNKNOWN", 0);
    public static final AccountSelectionFailureReason MERCHANT_CANCELLED = new AccountSelectionFailureReason("MERCHANT_CANCELLED", 1);
    public static final AccountSelectionFailureReason CUSTOMER_CANCELLED = new AccountSelectionFailureReason("CUSTOMER_CANCELLED", 2);
    public static final AccountSelectionFailureReason HARDWARE_CANCELLED = new AccountSelectionFailureReason("HARDWARE_CANCELLED", 3);
    public static final AccountSelectionFailureReason COLLECTION_FAILURE = new AccountSelectionFailureReason("COLLECTION_FAILURE", 4);

    private static final /* synthetic */ AccountSelectionFailureReason[] $values() {
        return new AccountSelectionFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, COLLECTION_FAILURE};
    }

    public static EnumEntries<AccountSelectionFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static AccountSelectionFailureReason valueOf(String str) {
        return (AccountSelectionFailureReason) Enum.valueOf(AccountSelectionFailureReason.class, str);
    }

    public static AccountSelectionFailureReason[] values() {
        return (AccountSelectionFailureReason[]) $VALUES.clone();
    }

    private AccountSelectionFailureReason(String str, int i) {
    }

    static {
        AccountSelectionFailureReason[] accountSelectionFailureReasonArr$values = $values();
        $VALUES = accountSelectionFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(accountSelectionFailureReasonArr$values);
    }
}
