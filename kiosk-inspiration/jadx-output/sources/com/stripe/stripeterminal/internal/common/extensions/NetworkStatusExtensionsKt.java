package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.stripeterminal.external.models.NetworkStatus;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkStatusExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0003\u001a\u0004\u0018\u00010\u0002*\u00020\u0001¨\u0006\u0004"}, d2 = {"toProtoNetworkStatus", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "toSdkNetworkStatus", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class NetworkStatusExtensionsKt {

    /* JADX INFO: compiled from: NetworkStatusExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[NetworkStatus.values().length];
            try {
                iArr[NetworkStatus.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkStatus.OFFLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkStatus.ONLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[com.stripe.proto.api.sdk.NetworkStatus.values().length];
            try {
                iArr2[com.stripe.proto.api.sdk.NetworkStatus.OFFLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[com.stripe.proto.api.sdk.NetworkStatus.ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[com.stripe.proto.api.sdk.NetworkStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[com.stripe.proto.api.sdk.NetworkStatus.NETWORK_STATUS_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final com.stripe.proto.api.sdk.NetworkStatus toProtoNetworkStatus(NetworkStatus networkStatus) {
        Intrinsics.checkNotNullParameter(networkStatus, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[networkStatus.ordinal()];
        if (i == 1) {
            return com.stripe.proto.api.sdk.NetworkStatus.UNKNOWN;
        }
        if (i == 2) {
            return com.stripe.proto.api.sdk.NetworkStatus.OFFLINE;
        }
        if (i == 3) {
            return com.stripe.proto.api.sdk.NetworkStatus.ONLINE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final NetworkStatus toSdkNetworkStatus(com.stripe.proto.api.sdk.NetworkStatus networkStatus) {
        Intrinsics.checkNotNullParameter(networkStatus, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$1[networkStatus.ordinal()];
        if (i == 1) {
            return NetworkStatus.OFFLINE;
        }
        if (i == 2) {
            return NetworkStatus.ONLINE;
        }
        if (i == 3) {
            return NetworkStatus.UNKNOWN;
        }
        if (i == 4) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
