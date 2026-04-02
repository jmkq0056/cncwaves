package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.BbposPaymentCollectionStateMachine;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository;
import com.stripe.paymentcollection.PaymentCollectionStateMachine;
import com.stripe.paymentcollection.PaymentCollectionStateTimer;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.metrics.EventLoggers;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposPaymentStateMachineModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0001¢\u0006\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;", "", "()V", "providePaymentCollectionStateMachine", "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "eventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "paymentCollectionFeatureFlagRepository", "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "manualEntryStateMachine", "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "loggerFactory", "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;", "providePaymentCollectionStateMachine$wiring", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposPaymentStateMachineModule {
    @Provides
    public final PaymentCollectionStateMachine providePaymentCollectionStateMachine$wiring(PaymentCollectionEventDelegate eventDelegate, EventLoggers eventLoggers, PaymentCollectionStateTimer timer, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, ManualEntryStateMachine manualEntryStateMachine, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        Intrinsics.checkNotNullParameter(eventLoggers, "eventLoggers");
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(paymentCollectionFeatureFlagRepository, "paymentCollectionFeatureFlagRepository");
        Intrinsics.checkNotNullParameter(manualEntryStateMachine, "manualEntryStateMachine");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposPaymentCollectionStateMachine(eventDelegate, eventLoggers, timer, paymentCollectionFeatureFlagRepository, manualEntryStateMachine, loggerFactory);
    }
}
