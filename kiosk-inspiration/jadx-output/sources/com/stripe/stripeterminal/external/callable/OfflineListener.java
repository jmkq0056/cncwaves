package com.stripe.stripeterminal.external.callable;

import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001a\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "", "onForwardingFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onOfflineStatusChange", "offlineStatus", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "onPaymentIntentForwarded", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "onSetupIntentForwarded", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineListener {
    void onForwardingFailure(TerminalException e);

    void onOfflineStatusChange(OfflineStatus offlineStatus);

    void onPaymentIntentForwarded(PaymentIntent paymentIntent, TerminalException e);

    default void onSetupIntentForwarded(SetupIntent setupIntent, TerminalException e) throws TerminalException {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Forwarded a SetupIntent but callback not implemented in OfflineListener.", null, null, 12, null);
    }
}
