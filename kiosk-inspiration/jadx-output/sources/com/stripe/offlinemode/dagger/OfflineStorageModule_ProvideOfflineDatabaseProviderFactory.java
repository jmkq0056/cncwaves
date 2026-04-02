package com.stripe.offlinemode.dagger;

import android.content.Context;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.storage.OfflineDatabaseProvider;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideOfflineDatabaseProviderFactory implements Factory<OfflineDatabaseProvider> {
    private final Provider<Context> contextProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public OfflineStorageModule_ProvideOfflineDatabaseProviderFactory(Provider<Context> contextProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.contextProvider = contextProvider;
        this.discreteLoggerProvider = discreteLoggerProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public OfflineDatabaseProvider get() {
        return provideOfflineDatabaseProvider(this.contextProvider.get(), this.discreteLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineStorageModule_ProvideOfflineDatabaseProviderFactory create(Provider<Context> contextProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineStorageModule_ProvideOfflineDatabaseProviderFactory(contextProvider, discreteLoggerProvider, loggerFactoryProvider);
    }

    public static OfflineDatabaseProvider provideOfflineDatabaseProvider(Context context, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, LoggerFactory loggerFactory) {
        return (OfflineDatabaseProvider) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideOfflineDatabaseProvider(context, discreteLogger, loggerFactory));
    }
}
