package com.stripe.paymentcollection.metrics.dagger;

import com.stripe.paymentcollection.metrics.OnlineAuthStateLogger;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory implements Factory<OnlineAuthStateLogger> {
    private final Provider<StageEventLogger> stageEventLoggerProvider;

    public PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory(Provider<StageEventLogger> provider) {
        this.stageEventLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public OnlineAuthStateLogger get() {
        return providesOnlineAuthStateLogger(this.stageEventLoggerProvider.get());
    }

    public static PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory create(Provider<StageEventLogger> provider) {
        return new PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory(provider);
    }

    public static OnlineAuthStateLogger providesOnlineAuthStateLogger(StageEventLogger stageEventLogger) {
        return (OnlineAuthStateLogger) Preconditions.checkNotNullFromProvides(PaymentCollectionLoggerModule.INSTANCE.providesOnlineAuthStateLogger(stageEventLogger));
    }
}
