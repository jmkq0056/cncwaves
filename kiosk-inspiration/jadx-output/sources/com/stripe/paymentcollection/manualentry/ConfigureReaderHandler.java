package com.stripe.paymentcollection.manualentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.paymentcollection.ConfigureReaderEvent;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.UtilsKt;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.stripeterminal.external.models.DeviceType;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryStates.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;", "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "configureReader", "", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfigureReaderHandler extends ManualEntryHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigureReaderHandler(PaymentCollectionEventDelegate eventDelegate, PaymentCollectionLogger logger) {
        super(ManualEntryState.CONFIGURE_READER, eventDelegate);
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ManualEntryData current, ManualEntryState from) {
        super.onEnter(current, from);
        this.logger.i("ConfigureReaderHandler.onEnter", new Pair[0]);
        if (current != null) {
            configureReader(current);
        }
    }

    private final void configureReader(ManualEntryData data) {
        getEventDelegate().onHandlePaymentCollectionEvent(new ConfigureReaderEvent(UtilsKt.generateConfigureReaderEvent(ReaderConfiguration.INSTANCE.getMANUAL_ENTRY(), data.getAmount(), data.getTransactionType(), data.getEmvTransactionType(), false, false, (960 & 64) != 0 ? DeviceType.UNKNOWN : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? CollectionsKt.emptyList() : null, (960 & 512) != 0 ? false : false)));
    }
}
