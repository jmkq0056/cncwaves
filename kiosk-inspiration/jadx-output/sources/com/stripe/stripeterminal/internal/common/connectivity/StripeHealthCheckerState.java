package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: StripeHealthCheckerStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;", "", "(Ljava/lang/String;I)V", "UNKNOWN", "ONLINE_STABLE", "ONLINE_UNSTABLE", "OFFLINE_STABLE", "OFFLINE_UNSTABLE", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StripeHealthCheckerState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StripeHealthCheckerState[] $VALUES;
    public static final StripeHealthCheckerState UNKNOWN = new StripeHealthCheckerState("UNKNOWN", 0);
    public static final StripeHealthCheckerState ONLINE_STABLE = new StripeHealthCheckerState("ONLINE_STABLE", 1);
    public static final StripeHealthCheckerState ONLINE_UNSTABLE = new StripeHealthCheckerState("ONLINE_UNSTABLE", 2);
    public static final StripeHealthCheckerState OFFLINE_STABLE = new StripeHealthCheckerState("OFFLINE_STABLE", 3);
    public static final StripeHealthCheckerState OFFLINE_UNSTABLE = new StripeHealthCheckerState("OFFLINE_UNSTABLE", 4);

    private static final /* synthetic */ StripeHealthCheckerState[] $values() {
        return new StripeHealthCheckerState[]{UNKNOWN, ONLINE_STABLE, ONLINE_UNSTABLE, OFFLINE_STABLE, OFFLINE_UNSTABLE};
    }

    public static EnumEntries<StripeHealthCheckerState> getEntries() {
        return $ENTRIES;
    }

    public static StripeHealthCheckerState valueOf(String str) {
        return (StripeHealthCheckerState) Enum.valueOf(StripeHealthCheckerState.class, str);
    }

    public static StripeHealthCheckerState[] values() {
        return (StripeHealthCheckerState[]) $VALUES.clone();
    }

    private StripeHealthCheckerState(String str, int i) {
    }

    static {
        StripeHealthCheckerState[] stripeHealthCheckerStateArr$values = $values();
        $VALUES = stripeHealthCheckerStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(stripeHealthCheckerStateArr$values);
    }
}
