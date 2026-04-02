package com.stripe.core.connectivity;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: NetworkConnectionEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/core/connectivity/NetworkConnectionError;", "", "isSkippableError", "", "(Ljava/lang/String;IZ)V", "()Z", "CannotReachMandatoryStripeURL", "CannotReachOptionalStripeURL", "NoInternetConnection", "HighLatency", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkConnectionError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkConnectionError[] $VALUES;
    private final boolean isSkippableError;
    public static final NetworkConnectionError CannotReachMandatoryStripeURL = new NetworkConnectionError("CannotReachMandatoryStripeURL", 0, false);
    public static final NetworkConnectionError CannotReachOptionalStripeURL = new NetworkConnectionError("CannotReachOptionalStripeURL", 1, true);
    public static final NetworkConnectionError NoInternetConnection = new NetworkConnectionError("NoInternetConnection", 2, false);
    public static final NetworkConnectionError HighLatency = new NetworkConnectionError("HighLatency", 3, true);

    private static final /* synthetic */ NetworkConnectionError[] $values() {
        return new NetworkConnectionError[]{CannotReachMandatoryStripeURL, CannotReachOptionalStripeURL, NoInternetConnection, HighLatency};
    }

    public static EnumEntries<NetworkConnectionError> getEntries() {
        return $ENTRIES;
    }

    public static NetworkConnectionError valueOf(String str) {
        return (NetworkConnectionError) Enum.valueOf(NetworkConnectionError.class, str);
    }

    public static NetworkConnectionError[] values() {
        return (NetworkConnectionError[]) $VALUES.clone();
    }

    private NetworkConnectionError(String str, int i, boolean z) {
        this.isSkippableError = z;
    }

    /* JADX INFO: renamed from: isSkippableError, reason: from getter */
    public final boolean getIsSkippableError() {
        return this.isSkippableError;
    }

    static {
        NetworkConnectionError[] networkConnectionErrorArr$values = $values();
        $VALUES = networkConnectionErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(networkConnectionErrorArr$values);
    }
}
