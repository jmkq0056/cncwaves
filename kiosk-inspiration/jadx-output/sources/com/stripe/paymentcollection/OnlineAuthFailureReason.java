package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OnlineAuthState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthFailureReason;", "", "(Ljava/lang/String;I)V", "DECLINED", "SCA_NEEDED", "UNKNOWN_NETWORK_FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineAuthFailureReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnlineAuthFailureReason[] $VALUES;
    public static final OnlineAuthFailureReason DECLINED = new OnlineAuthFailureReason("DECLINED", 0);
    public static final OnlineAuthFailureReason SCA_NEEDED = new OnlineAuthFailureReason("SCA_NEEDED", 1);
    public static final OnlineAuthFailureReason UNKNOWN_NETWORK_FAILURE = new OnlineAuthFailureReason("UNKNOWN_NETWORK_FAILURE", 2);

    private static final /* synthetic */ OnlineAuthFailureReason[] $values() {
        return new OnlineAuthFailureReason[]{DECLINED, SCA_NEEDED, UNKNOWN_NETWORK_FAILURE};
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
