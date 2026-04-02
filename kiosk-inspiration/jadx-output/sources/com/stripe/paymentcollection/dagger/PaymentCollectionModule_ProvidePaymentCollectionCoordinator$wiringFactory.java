package com.stripe.paymentcollection.dagger;

import com.stripe.device.DeviceInfoRepository;
import com.stripe.hardware.paymentcollection.PaymentCollector;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository;
import com.stripe.paymentcollection.PaymentCollectionLocaleManager;
import com.stripe.paymentcollection.SettingsRepository;
import com.stripe.paymentcollection.TransactionListener;
import com.stripe.paymentcollection.TransactionRepository;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.metrics.EventLoggers;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory implements Factory<PaymentCollectionCoordinator> {
    private final Provider<CoroutineScope> coroutineScopeProvider;
    private final Provider<DeviceInfoRepository> deviceInfoRepositoryProvider;
    private final Provider<EventLoggers> eventLoggersProvider;
    private final Provider<PaymentCollectionLocaleManager> localeManagerProvider;
    private final Provider<PaymentCollectionLoggerFactory> loggerFactoryProvider;
    private final Provider<PaymentCollectionCoordinator.PaymentCollectionContext.Factory> paymentCollectionContextFactoryProvider;
    private final Provider<PaymentCollectionFeatureFlagRepository> paymentCollectionFeatureFlagRepositoryProvider;
    private final Provider<PaymentCollector> paymentCollectorProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<TransactionListener> transactionListenerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory(Provider<PaymentCollector> provider, Provider<CoroutineScope> provider2, Provider<SettingsRepository> provider3, Provider<PaymentCollectionLocaleManager> provider4, Provider<EventLoggers> provider5, Provider<TransactionRepository> provider6, Provider<PaymentCollectionCoordinator.PaymentCollectionContext.Factory> provider7, Provider<DeviceInfoRepository> provider8, Provider<PaymentCollectionFeatureFlagRepository> provider9, Provider<TransactionListener> provider10, Provider<PaymentCollectionLoggerFactory> provider11) {
        this.paymentCollectorProvider = provider;
        this.coroutineScopeProvider = provider2;
        this.settingsRepositoryProvider = provider3;
        this.localeManagerProvider = provider4;
        this.eventLoggersProvider = provider5;
        this.transactionRepositoryProvider = provider6;
        this.paymentCollectionContextFactoryProvider = provider7;
        this.deviceInfoRepositoryProvider = provider8;
        this.paymentCollectionFeatureFlagRepositoryProvider = provider9;
        this.transactionListenerProvider = provider10;
        this.loggerFactoryProvider = provider11;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionCoordinator get() {
        return providePaymentCollectionCoordinator$wiring(this.paymentCollectorProvider.get(), this.coroutineScopeProvider.get(), this.settingsRepositoryProvider.get(), this.localeManagerProvider.get(), this.eventLoggersProvider.get(), this.transactionRepositoryProvider.get(), this.paymentCollectionContextFactoryProvider.get(), this.deviceInfoRepositoryProvider.get(), this.paymentCollectionFeatureFlagRepositoryProvider.get(), this.transactionListenerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory create(Provider<PaymentCollector> provider, Provider<CoroutineScope> provider2, Provider<SettingsRepository> provider3, Provider<PaymentCollectionLocaleManager> provider4, Provider<EventLoggers> provider5, Provider<TransactionRepository> provider6, Provider<PaymentCollectionCoordinator.PaymentCollectionContext.Factory> provider7, Provider<DeviceInfoRepository> provider8, Provider<PaymentCollectionFeatureFlagRepository> provider9, Provider<TransactionListener> provider10, Provider<PaymentCollectionLoggerFactory> provider11) {
        return new PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static PaymentCollectionCoordinator providePaymentCollectionCoordinator$wiring(PaymentCollector paymentCollector, CoroutineScope coroutineScope, SettingsRepository settingsRepository, PaymentCollectionLocaleManager paymentCollectionLocaleManager, EventLoggers eventLoggers, TransactionRepository transactionRepository, PaymentCollectionCoordinator.PaymentCollectionContext.Factory factory, DeviceInfoRepository deviceInfoRepository, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, TransactionListener transactionListener, PaymentCollectionLoggerFactory paymentCollectionLoggerFactory) {
        return (PaymentCollectionCoordinator) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providePaymentCollectionCoordinator$wiring(paymentCollector, coroutineScope, settingsRepository, paymentCollectionLocaleManager, eventLoggers, transactionRepository, factory, deviceInfoRepository, paymentCollectionFeatureFlagRepository, transactionListener, paymentCollectionLoggerFactory));
    }
}
