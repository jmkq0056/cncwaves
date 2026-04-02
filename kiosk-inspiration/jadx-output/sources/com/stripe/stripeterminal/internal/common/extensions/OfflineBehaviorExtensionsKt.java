package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineBehaviorExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001¨\u0006\u0004"}, d2 = {"toOfflineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "toOfflineBehaviorProto", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OfflineBehaviorExtensionsKt {

    /* JADX INFO: compiled from: OfflineBehaviorExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CreatePaymentIntentOptions.OfflineBehavior.values().length];
            try {
                iArr[CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CreatePaymentIntentOptions.OfflineBehavior.REQUIRE_ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CreatePaymentIntentOptions.OfflineBehavior.PREFER_ONLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CreatePaymentIntentOptions.OfflineBehavior.FORCE_OFFLINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[OfflineBehavior.values().length];
            try {
                iArr2[OfflineBehavior.REQUIRE_ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[OfflineBehavior.PREFER_ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[OfflineBehavior.FORCE_OFFLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final OfflineBehavior toOfflineBehavior(CreatePaymentIntentOptions.OfflineBehavior offlineBehavior) {
        Intrinsics.checkNotNullParameter(offlineBehavior, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[offlineBehavior.ordinal()];
        if (i == 1 || i == 2) {
            return OfflineBehavior.REQUIRE_ONLINE;
        }
        if (i == 3) {
            return OfflineBehavior.PREFER_ONLINE;
        }
        if (i == 4) {
            return OfflineBehavior.FORCE_OFFLINE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final CreatePaymentIntentOptions.OfflineBehavior toOfflineBehaviorProto(OfflineBehavior offlineBehavior) {
        Intrinsics.checkNotNullParameter(offlineBehavior, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$1[offlineBehavior.ordinal()];
        if (i == 1) {
            return CreatePaymentIntentOptions.OfflineBehavior.REQUIRE_ONLINE;
        }
        if (i == 2) {
            return CreatePaymentIntentOptions.OfflineBehavior.PREFER_ONLINE;
        }
        if (i == 3) {
            return CreatePaymentIntentOptions.OfflineBehavior.FORCE_OFFLINE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
