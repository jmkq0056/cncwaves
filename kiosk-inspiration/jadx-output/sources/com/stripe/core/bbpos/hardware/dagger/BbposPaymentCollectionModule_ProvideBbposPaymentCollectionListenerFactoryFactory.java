package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener;
import com.stripe.core.bbpos.hardware.CardRemovalChecker;
import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory implements Factory<BbposPaymentCollectionListener.Factory> {
    private final Provider<CardRemovalChecker> cardRemovalCheckerProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;
    private final Provider<ManualEntryEventReceiver> manualEntryEventReceiverProvider;
    private final Provider<PaymentEventReceiver> paymentEventReceiverProvider;

    public BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory(Provider<PaymentEventReceiver> provider, Provider<ManualEntryEventReceiver> provider2, Provider<HealthLoggerBuilder> provider3, Provider<CardRemovalChecker> provider4) {
        this.paymentEventReceiverProvider = provider;
        this.manualEntryEventReceiverProvider = provider2;
        this.healthLoggerBuilderProvider = provider3;
        this.cardRemovalCheckerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BbposPaymentCollectionListener.Factory get() {
        return provideBbposPaymentCollectionListenerFactory(DoubleCheck.lazy(this.paymentEventReceiverProvider), DoubleCheck.lazy(this.manualEntryEventReceiverProvider), this.healthLoggerBuilderProvider.get(), this.cardRemovalCheckerProvider.get());
    }

    public static BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory create(Provider<PaymentEventReceiver> provider, Provider<ManualEntryEventReceiver> provider2, Provider<HealthLoggerBuilder> provider3, Provider<CardRemovalChecker> provider4) {
        return new BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory(provider, provider2, provider3, provider4);
    }

    public static BbposPaymentCollectionListener.Factory provideBbposPaymentCollectionListenerFactory(Lazy<PaymentEventReceiver> lazy, Lazy<ManualEntryEventReceiver> lazy2, HealthLoggerBuilder healthLoggerBuilder, CardRemovalChecker cardRemovalChecker) {
        return (BbposPaymentCollectionListener.Factory) Preconditions.checkNotNullFromProvides(BbposPaymentCollectionModule.INSTANCE.provideBbposPaymentCollectionListenerFactory(lazy, lazy2, healthLoggerBuilder, cardRemovalChecker));
    }
}
