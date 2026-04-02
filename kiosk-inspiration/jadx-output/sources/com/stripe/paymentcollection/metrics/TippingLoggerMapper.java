package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.TippingSelectionType;
import com.stripe.hardware.tipping.TippingSelectionFailureReason;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.paymentcollection.CancelReason;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.TippingState;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DefaultTippingLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\r"}, d2 = {"Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;", "", "()V", "generateTippingResult", "Lcom/stripe/paymentcollection/metrics/Result;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "generateTippingTags", "", "", "getFailureReason", "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TippingLoggerMapper {
    private static final Log LOGGER = Log.INSTANCE.getLogger(TippingLoggerMapper.class);

    /* JADX INFO: compiled from: DefaultTippingLogger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CancelReason.values().length];
            try {
                iArr[CancelReason.MERCHANT_CANCELLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CancelReason.CUSTOMER_CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CancelReason.HARDWARE_CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final TippingSelectionFailureReason getFailureReason(PaymentCollectionData data) {
        LOGGER.i("TippingLoggerMapper getFailureReason " + data, new Pair[0]);
        CancelReason cancelReason = data.getCancelReason();
        int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$0[cancelReason.ordinal()];
        if (i == -1) {
            TippingState tippingState = data.getTippingState();
            return tippingState instanceof TippingState.Completed ? ((TippingState.Completed) tippingState).getResult().getTipSelectionFailure() : TippingSelectionFailureReason.TIP_SELECTION_TYPE_NOT_FOUND;
        }
        if (i == 1) {
            return TippingSelectionFailureReason.MERCHANT_CANCELLED;
        }
        if (i == 2) {
            return TippingSelectionFailureReason.CUSTOMER_CANCELLED;
        }
        if (i == 3) {
            return TippingSelectionFailureReason.HARDWARE_CANCELLED;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Map<String, String> generateTippingTags(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        TippingSelectionFailureReason failureReason = getFailureReason(data);
        TippingState tippingState = data.getTippingState();
        TippingSelectionType tippingType = tippingState instanceof TippingState.Completed ? ((TippingState.Completed) tippingState).getResult().getTippingType() : null;
        String simpleName = "MagStripeAllowReason";
        if (failureReason != null) {
            TippingSelectionFailureReason tippingSelectionFailureReason = failureReason;
            if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(TippingSelectionFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = Reflection.getOrCreateKotlinClass(TippingSelectionFailureReason.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, tippingSelectionFailureReason.name());
            return linkedHashMap;
        }
        TippingSelectionType tippingSelectionType = tippingType;
        if (tippingSelectionType == null) {
            return linkedHashMap;
        }
        if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(TippingSelectionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
            simpleName = Reflection.getOrCreateKotlinClass(TippingSelectionType.class).getSimpleName();
            Intrinsics.checkNotNull(simpleName);
        }
        linkedHashMap.put(simpleName, tippingSelectionType.name());
        return linkedHashMap;
    }

    public final Result generateTippingResult(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (getFailureReason(data) == null) {
            return Result.SUCCESS;
        }
        return Result.FAILURE;
    }
}
