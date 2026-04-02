package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.loggingmodels.StructuredEventLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory implements Factory<DeviceListenerWrapper> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<StructuredEventLogger> structuredEventLoggerProvider;

    public BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory(Provider<HealthLoggerBuilder> provider, Provider<StructuredEventLogger> provider2, Provider<LoggerFactory> provider3) {
        this.healthLoggerBuilderProvider = provider;
        this.structuredEventLoggerProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DeviceListenerWrapper get() {
        return provideObservabilityListener$hardware_release(this.healthLoggerBuilderProvider.get(), this.structuredEventLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory create(Provider<HealthLoggerBuilder> provider, Provider<StructuredEventLogger> provider2, Provider<LoggerFactory> provider3) {
        return new BbposManagementModule_Companion_ProvideObservabilityListener$hardware_releaseFactory(provider, provider2, provider3);
    }

    public static DeviceListenerWrapper provideObservabilityListener$hardware_release(HealthLoggerBuilder healthLoggerBuilder, StructuredEventLogger structuredEventLogger, LoggerFactory loggerFactory) {
        return (DeviceListenerWrapper) Preconditions.checkNotNullFromProvides(BbposManagementModule.INSTANCE.provideObservabilityListener$hardware_release(healthLoggerBuilder, structuredEventLogger, loggerFactory));
    }
}
