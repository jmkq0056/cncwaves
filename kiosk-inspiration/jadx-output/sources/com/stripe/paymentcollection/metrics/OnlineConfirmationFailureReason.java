package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "TIMEOUT", "DECLINED", "SCA_NEEDED", "UNKNOWN_NETWORK_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineConfirmationFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnlineConfirmationFailureReason[] $VALUES;
    public static final OnlineConfirmationFailureReason UNKNOWN = new OnlineConfirmationFailureReason("UNKNOWN", 0);
    public static final OnlineConfirmationFailureReason MERCHANT_CANCELLED = new OnlineConfirmationFailureReason("MERCHANT_CANCELLED", 1);
    public static final OnlineConfirmationFailureReason CUSTOMER_CANCELLED = new OnlineConfirmationFailureReason("CUSTOMER_CANCELLED", 2);
    public static final OnlineConfirmationFailureReason TIMEOUT = new OnlineConfirmationFailureReason("TIMEOUT", 3);
    public static final OnlineConfirmationFailureReason DECLINED = new OnlineConfirmationFailureReason("DECLINED", 4);
    public static final OnlineConfirmationFailureReason SCA_NEEDED = new OnlineConfirmationFailureReason("SCA_NEEDED", 5);
    public static final OnlineConfirmationFailureReason UNKNOWN_NETWORK_FAILURE = new OnlineConfirmationFailureReason("UNKNOWN_NETWORK_FAILURE", 6);

    private static final /* synthetic */ OnlineConfirmationFailureReason[] $values() {
        return new OnlineConfirmationFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, TIMEOUT, DECLINED, SCA_NEEDED, UNKNOWN_NETWORK_FAILURE};
    }

    public static EnumEntries<OnlineConfirmationFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static OnlineConfirmationFailureReason valueOf(String str) {
        return (OnlineConfirmationFailureReason) Enum.valueOf(OnlineConfirmationFailureReason.class, str);
    }

    public static OnlineConfirmationFailureReason[] values() {
        return (OnlineConfirmationFailureReason[]) $VALUES.clone();
    }

    private OnlineConfirmationFailureReason(String str, int i) {
    }

    static {
        OnlineConfirmationFailureReason[] onlineConfirmationFailureReasonArr$values = $values();
        $VALUES = onlineConfirmationFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(onlineConfirmationFailureReasonArr$values);
    }
}
