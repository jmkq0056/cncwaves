package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposPaymentCollector;
import com.stripe.core.bbpos.hardware.CardRemovalChecker;
import com.stripe.core.bbpos.hardware.PinPadAccessibilityChecker;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.paymentcollection.PinButtonsRepository;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.time.Clock;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory implements Factory<BbposPaymentCollector> {
    private final Provider<PinPadAccessibilityChecker> accessibilityCheckerProvider;
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<CardRemovalChecker> cardRemovalCheckerProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<DeviceControllerWrapper> controllerProvider;
    private final Provider<ReaderFeatureFlags> featureFlagsProvider;
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;
    private final Provider<CoroutineDispatcher> ioDispatcherProvider;
    private final Provider<PinButtonsRepository> pinButtonsRepositoryProvider;

    public BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory(Provider<DeviceControllerWrapper> provider, Provider<Clock> provider2, Provider<CoroutineScope> provider3, Provider<CoroutineDispatcher> provider4, Provider<HealthLoggerBuilder> provider5, Provider<PinButtonsRepository> provider6, Provider<ReaderFeatureFlags> provider7, Provider<CardRemovalChecker> provider8, Provider<PinPadAccessibilityChecker> provider9) {
        this.controllerProvider = provider;
        this.clockProvider = provider2;
        this.appScopeProvider = provider3;
        this.ioDispatcherProvider = provider4;
        this.healthLoggerBuilderProvider = provider5;
        this.pinButtonsRepositoryProvider = provider6;
        this.featureFlagsProvider = provider7;
        this.cardRemovalCheckerProvider = provider8;
        this.accessibilityCheckerProvider = provider9;
    }

    @Override // javax.inject.Provider
    public BbposPaymentCollector get() {
        return providePaymentCollector$hardware_release(DoubleCheck.lazy(this.controllerProvider), this.clockProvider.get(), this.appScopeProvider.get(), this.ioDispatcherProvider.get(), this.healthLoggerBuilderProvider.get(), this.pinButtonsRepositoryProvider.get(), this.featureFlagsProvider, this.cardRemovalCheckerProvider.get(), this.accessibilityCheckerProvider.get());
    }

    public static BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory create(Provider<DeviceControllerWrapper> provider, Provider<Clock> provider2, Provider<CoroutineScope> provider3, Provider<CoroutineDispatcher> provider4, Provider<HealthLoggerBuilder> provider5, Provider<PinButtonsRepository> provider6, Provider<ReaderFeatureFlags> provider7, Provider<CardRemovalChecker> provider8, Provider<PinPadAccessibilityChecker> provider9) {
        return new BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static BbposPaymentCollector providePaymentCollector$hardware_release(Lazy<DeviceControllerWrapper> lazy, Clock clock, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, HealthLoggerBuilder healthLoggerBuilder, PinButtonsRepository pinButtonsRepository, Provider<ReaderFeatureFlags> provider, CardRemovalChecker cardRemovalChecker, PinPadAccessibilityChecker pinPadAccessibilityChecker) {
        return (BbposPaymentCollector) Preconditions.checkNotNullFromProvides(BbposEmvModule.INSTANCE.providePaymentCollector$hardware_release(lazy, clock, coroutineScope, coroutineDispatcher, healthLoggerBuilder, pinButtonsRepository, provider, cardRemovalChecker, pinPadAccessibilityChecker));
    }
}
