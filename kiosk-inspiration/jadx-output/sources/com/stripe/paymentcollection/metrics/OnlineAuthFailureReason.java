package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Tags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "MERCHANT_CANCELLED", "CUSTOMER_CANCELLED", "HARDWARE_CANCELLED", "TIMEOUT", "DECLINED", "SCA_NEEDED", "UNKNOWN_NETWORK_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineAuthFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnlineAuthFailureReason[] $VALUES;
    public static final OnlineAuthFailureReason UNKNOWN = new OnlineAuthFailureReason("UNKNOWN", 0);
    public static final OnlineAuthFailureReason MERCHANT_CANCELLED = new OnlineAuthFailureReason("MERCHANT_CANCELLED", 1);
    public static final OnlineAuthFailureReason CUSTOMER_CANCELLED = new OnlineAuthFailureReason("CUSTOMER_CANCELLED", 2);
    public static final OnlineAuthFailureReason HARDWARE_CANCELLED = new OnlineAuthFailureReason("HARDWARE_CANCELLED", 3);
    public static final OnlineAuthFailureReason TIMEOUT = new OnlineAuthFailureReason("TIMEOUT", 4);
    public static final OnlineAuthFailureReason DECLINED = new OnlineAuthFailureReason("DECLINED", 5);
    public static final OnlineAuthFailureReason SCA_NEEDED = new OnlineAuthFailureReason("SCA_NEEDED", 6);
    public static final OnlineAuthFailureReason UNKNOWN_NETWORK_FAILURE = new OnlineAuthFailureReason("UNKNOWN_NETWORK_FAILURE", 7);

    private static final /* synthetic */ OnlineAuthFailureReason[] $values() {
        return new OnlineAuthFailureReason[]{UNKNOWN, MERCHANT_CANCELLED, CUSTOMER_CANCELLED, HARDWARE_CANCELLED, TIMEOUT, DECLINED, SCA_NEEDED, UNKNOWN_NETWORK_FAILURE};
    }

    public static EnumEntries<OnlineAuthFailureReason> getEntries() {
        return $ENTRIES;
    }

    public static OnlineAuthFailureReason valueOf(String str) {
        return (OnlineAuthFailureReason) Enum.valueOf(OnlineAuthFailureReason.class, str);
    }

    public static OnlineAuthFailureReason[] values() {
        return (OnlineAuthFailureReason[]) $VALUES.clone();
    }

    private OnlineAuthFailureReason(String str, int i) {
    }

    static {
        OnlineAuthFailureReason[] onlineAuthFailureReasonArr$values = $values();
        $VALUES = onlineAuthFailureReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(onlineAuthFailureReasonArr$values);
    }
}
