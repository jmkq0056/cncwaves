package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.BluetoothScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideBluetoothConnectivityHealthLoggerFactory implements Factory<HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public LogModule_ProvideBluetoothConnectivityHealthLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> get() {
        return provideBluetoothConnectivityHealthLogger(this.healthLoggerBuilderProvider.get());
    }

    public static LogModule_ProvideBluetoothConnectivityHealthLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new LogModule_ProvideBluetoothConnectivityHealthLoggerFactory(provider);
    }

    public static HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> provideBluetoothConnectivityHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideBluetoothConnectivityHealthLogger(healthLoggerBuilder));
    }
}
