package com.stripe.paymentcollection;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\u000f"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onImplicitSelection", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "transitionOnImplicitSelectionIfNeeded", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class PaymentCollectionScreenInputStateHandler extends PaymentCollectionStateHandler {
    public abstract void onImplicitSelection(PaymentCollectionData data);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentCollectionScreenInputStateHandler(PaymentCollectionState state, PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(state, timer, logger);
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    public final boolean transitionOnImplicitSelectionIfNeeded(PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if ((data.getOnlineAuthorizationData() == null && data.getPinEntryStatus() != PinEntryStatus.REQUESTED) || data.getDeviceCapability().getDirectlyControlsScreenInput()) {
            return false;
        }
        onImplicitSelection(data);
        return true;
    }
}
