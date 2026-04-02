package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory implements Factory<OfflinePaymentMethodValidator> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;

    public OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory(Provider<TerminalStatusManager> statusManagerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.statusManagerProvider = statusManagerProvider;
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.offlineDiscreteLoggerProvider = offlineDiscreteLoggerProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public OfflinePaymentMethodValidator get() {
        return provideOfflinePaymentMethodValidator(this.statusManagerProvider.get(), this.offlineConfigHelperProvider.get(), this.offlineDiscreteLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory create(Provider<TerminalStatusManager> statusManagerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory(statusManagerProvider, offlineConfigHelperProvider, offlineDiscreteLoggerProvider, loggerFactoryProvider);
    }

    public static OfflinePaymentMethodValidator provideOfflinePaymentMethodValidator(TerminalStatusManager statusManager, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, LoggerFactory loggerFactory) {
        return (OfflinePaymentMethodValidator) Preconditions.checkNotNullFromProvides(OfflineHelperModule.INSTANCE.provideOfflinePaymentMethodValidator(statusManager, offlineConfigHelper, offlineDiscreteLogger, loggerFactory));
    }
}
