package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.paymentcollection.metrics.DiscreteEventLogger;
import com.stripe.paymentcollection.metrics.EndToEndEventLogger;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.paymentcollection.metrics.OnlineAuthStateLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import com.stripe.paymentcollection.metrics.TippingLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesEventLoggersFactory implements Factory<EventLoggers> {
    private final Provider<DiscreteEventLogger> discreteEventLoggerProvider;
    private final Provider<EndToEndEventLogger> endToEndEventLoggerProvider;
    private final Provider<OnlineAuthStateLogger> onlineAuthStateLoggerProvider;
    private final Provider<StageEventLogger> stageEventLoggerProvider;
    private final Provider<TippingLogger> tippingLoggerProvider;

    public PaymentCollectionLoggerModule_ProvidesEventLoggersFactory(Provider<EndToEndEventLogger> provider, Provider<StageEventLogger> provider2, Provider<DiscreteEventLogger> provider3, Provider<OnlineAuthStateLogger> provider4, Provider<TippingLogger> provider5) {
        this.endToEndEventLoggerProvider = provider;
        this.stageEventLoggerProvider = provider2;
        this.discreteEventLoggerProvider = provider3;
        this.onlineAuthStateLoggerProvider = provider4;
        this.tippingLoggerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public EventLoggers get() {
        return providesEventLoggers(this.endToEndEventLoggerProvider.get(), this.stageEventLoggerProvider.get(), this.discreteEventLoggerProvider.get(), this.onlineAuthStateLoggerProvider.get(), this.tippingLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesEventLoggersFactory create(Provider<EndToEndEventLogger> provider, Provider<StageEventLogger> provider2, Provider<DiscreteEventLogger> provider3, Provider<OnlineAuthStateLogger> provider4, Provider<TippingLogger> provider5) {
        return new PaymentCollectionLoggerModule_ProvidesEventLoggersFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static EventLoggers providesEventLoggers(EndToEndEventLogger endToEndEventLogger, StageEventLogger stageEventLogger, DiscreteEventLogger discreteEventLogger, OnlineAuthStateLogger onlineAuthStateLogger, TippingLogger tippingLogger) {
        return (EventLoggers) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesEventLoggers(endToEndEventLogger, stageEventLogger, discreteEventLogger, onlineAuthStateLogger, tippingLogger));
    }
}
