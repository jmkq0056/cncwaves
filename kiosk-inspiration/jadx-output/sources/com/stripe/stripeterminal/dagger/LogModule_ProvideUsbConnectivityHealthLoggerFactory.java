package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideUsbConnectivityHealthLoggerFactory implements Factory<HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public LogModule_ProvideUsbConnectivityHealthLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> get() {
        return provideUsbConnectivityHealthLogger(this.healthLoggerBuilderProvider.get());
    }

    public static LogModule_ProvideUsbConnectivityHealthLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new LogModule_ProvideUsbConnectivityHealthLoggerFactory(provider);
    }

    public static HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> provideUsbConnectivityHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideUsbConnectivityHealthLogger(healthLoggerBuilder));
    }
}
