package com.stripe.offlinemode;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.proto.api.sdk.ForwardedPayment;
import com.stripe.proto.api.sdk.ForwardedSetupIntent;
import com.stripe.proto.api.sdk.ForwardingError;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.proto.api.sdk.OfflineSetupIntentDetails;
import com.stripe.proto.api.sdk.ReaderEvent;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.sdk.Error;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.extensions.TerminalExceptionExtensionsKt;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderEventListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/stripe/offlinemode/ReaderEventListener;", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", "offlineListener", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V", "terminalException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "Lcom/stripe/proto/api/sdk/ForwardingError;", "getTerminalException", "(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;", "onReaderEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/proto/api/sdk/ReaderEvent;", "(Lcom/stripe/proto/api/sdk/ReaderEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderEventListener implements ReaderEventContracts.Listener {
    public static final String REQUIRED_PI_ERR_MSG = "ReaderEvent forwarded payment result must have a PaymentIntent";
    public static final String REQUIRED_SI_ERR_MSG = "ReaderEvent forwarded setup intent result must have a SetupIntent";
    private final OfflineListener offlineListener;

    public ReaderEventListener(OfflineListener offlineListener) {
        Intrinsics.checkNotNullParameter(offlineListener, "offlineListener");
        this.offlineListener = offlineListener;
    }

    @Override // com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts.Listener
    public Object onReaderEvent(ReaderEvent readerEvent, Continuation<? super Unit> continuation) throws TerminalException {
        if (readerEvent.forwarding_error != null) {
            ForwardingError forwardingError = readerEvent.forwarding_error;
            if (forwardingError == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            this.offlineListener.onForwardingFailure(getTerminalException(forwardingError));
        } else {
            if (readerEvent.forwarded_payment_result != null) {
                ForwardedPayment forwardedPayment = readerEvent.forwarded_payment_result;
                Intrinsics.checkNotNull(forwardedPayment);
                ProtoConverter protoConverter = ProtoConverter.INSTANCE;
                PaymentIntent paymentIntent = forwardedPayment.payment_intent;
                if (paymentIntent == null) {
                    throw new IllegalArgumentException(REQUIRED_PI_ERR_MSG.toString());
                }
                com.stripe.stripeterminal.external.models.PaymentIntent sdkPaymentIntent = protoConverter.toSdkPaymentIntent(paymentIntent);
                OfflinePaymentDetails offlinePaymentDetails = forwardedPayment.offline_details;
                sdkPaymentIntent.setOfflineDetails(offlinePaymentDetails != null ? ProtoConverter.INSTANCE.toSdkOfflineDetails(offlinePaymentDetails) : null);
                ForwardingError forwardingError2 = forwardedPayment.forwarding_error;
                this.offlineListener.onPaymentIntentForwarded(sdkPaymentIntent, forwardingError2 != null ? getTerminalException(forwardingError2) : null);
            } else if (readerEvent.forwarded_setup_intent_result != null) {
                ForwardedSetupIntent forwardedSetupIntent = readerEvent.forwarded_setup_intent_result;
                Intrinsics.checkNotNull(forwardedSetupIntent);
                ProtoConverter protoConverter2 = ProtoConverter.INSTANCE;
                SetupIntent setupIntent = forwardedSetupIntent.setup_intent;
                if (setupIntent == null) {
                    throw new IllegalArgumentException(REQUIRED_SI_ERR_MSG.toString());
                }
                com.stripe.stripeterminal.external.models.SetupIntent sdkSetupIntent = protoConverter2.toSdkSetupIntent(setupIntent);
                OfflineSetupIntentDetails offlineSetupIntentDetails = forwardedSetupIntent.offline_details;
                sdkSetupIntent.setOfflineDetails(offlineSetupIntentDetails != null ? ProtoConverter.INSTANCE.toSdkSetupIntentOfflineDetails(offlineSetupIntentDetails) : null);
                ForwardingError forwardingError3 = forwardedSetupIntent.forwarding_error;
                this.offlineListener.onSetupIntentForwarded(sdkSetupIntent, forwardingError3 != null ? getTerminalException(forwardingError3) : null);
            } else {
                throw new IllegalArgumentException("Malformed reader event " + readerEvent + ", must have forwarding error or forwarded entity");
            }
        }
        return Unit.INSTANCE;
    }

    private final TerminalException getTerminalException(ForwardingError forwardingError) {
        ErrorResponse errorResponse;
        TerminalException terminalException$default;
        ErrorWrapper errorWrapper = forwardingError.server_error;
        if (errorWrapper != null && (errorResponse = errorWrapper.error) != null && (terminalException$default = ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, errorResponse, null, 1, null)) != null) {
            return terminalException$default;
        }
        Error error = forwardingError.reader_error;
        Intrinsics.checkNotNull(error);
        return new TerminalException(TerminalExceptionExtensionsKt.fromStringOrDefault$default(TerminalErrorCode.INSTANCE, error.code, null, 2, null), error.message, null, null, 12, null);
    }
}
