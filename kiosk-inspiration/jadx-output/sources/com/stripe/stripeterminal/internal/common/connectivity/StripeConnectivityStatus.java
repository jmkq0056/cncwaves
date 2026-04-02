package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.stripeterminal.external.models.NetworkStatus;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: StripeConnectivityStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;", "", "networkStatus", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "(Ljava/lang/String;ILcom/stripe/stripeterminal/external/models/NetworkStatus;)V", "getNetworkStatus", "()Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "NO_NETWORK", "HEALTH_CHECKS_NOT_STARTED", "HEALTH_CHECKS_PAUSED", "HEALTH_CHECKS_PASSING", "HEALTH_CHECKS_FAILING", "OFFLINE_STICKY", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StripeConnectivityStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StripeConnectivityStatus[] $VALUES;
    private final NetworkStatus networkStatus;
    public static final StripeConnectivityStatus NO_NETWORK = new StripeConnectivityStatus("NO_NETWORK", 0, NetworkStatus.OFFLINE);
    public static final StripeConnectivityStatus HEALTH_CHECKS_NOT_STARTED = new StripeConnectivityStatus("HEALTH_CHECKS_NOT_STARTED", 1, NetworkStatus.UNKNOWN);
    public static final StripeConnectivityStatus HEALTH_CHECKS_PAUSED = new StripeConnectivityStatus("HEALTH_CHECKS_PAUSED", 2, NetworkStatus.UNKNOWN);
    public static final StripeConnectivityStatus HEALTH_CHECKS_PASSING = new StripeConnectivityStatus("HEALTH_CHECKS_PASSING", 3, NetworkStatus.ONLINE);
    public static final StripeConnectivityStatus HEALTH_CHECKS_FAILING = new StripeConnectivityStatus("HEALTH_CHECKS_FAILING", 4, NetworkStatus.OFFLINE);
    public static final StripeConnectivityStatus OFFLINE_STICKY = new StripeConnectivityStatus("OFFLINE_STICKY", 5, NetworkStatus.OFFLINE);

    private static final /* synthetic */ StripeConnectivityStatus[] $values() {
        return new StripeConnectivityStatus[]{NO_NETWORK, HEALTH_CHECKS_NOT_STARTED, HEALTH_CHECKS_PAUSED, HEALTH_CHECKS_PASSING, HEALTH_CHECKS_FAILING, OFFLINE_STICKY};
    }

    public static EnumEntries<StripeConnectivityStatus> getEntries() {
        return $ENTRIES;
    }

    public static StripeConnectivityStatus valueOf(String str) {
        return (StripeConnectivityStatus) Enum.valueOf(StripeConnectivityStatus.class, str);
    }

    public static StripeConnectivityStatus[] values() {
        return (StripeConnectivityStatus[]) $VALUES.clone();
    }

    private StripeConnectivityStatus(String str, int i, NetworkStatus networkStatus) {
        this.networkStatus = networkStatus;
    }

    public final NetworkStatus getNetworkStatus() {
        return this.networkStatus;
    }

    static {
        StripeConnectivityStatus[] stripeConnectivityStatusArr$values = $values();
        $VALUES = stripeConnectivityStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(stripeConnectivityStatusArr$values);
    }
}
