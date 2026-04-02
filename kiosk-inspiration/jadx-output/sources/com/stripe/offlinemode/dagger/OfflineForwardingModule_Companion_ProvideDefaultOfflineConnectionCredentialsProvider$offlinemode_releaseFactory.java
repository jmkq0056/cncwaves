package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingDelayCalculator;
import com.stripe.offlinemode.forwarding.OfflineConnectionService;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory implements Factory<DefaultOfflineCredentialsProvider> {
    private final Provider<ConnectionTokenProvider> connectionTokenProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider;
    private final Provider<OfflineForwardingTraceLogger> loggerProvider;
    private final Provider<OfflineConnectionService> offlineConnectionServiceProvider;
    private final Provider<DefaultOfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider;
    private final Provider<OfflineForwardingTraceManager> traceManagerProvider;

    public OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory(Provider<OfflineConnectionService> offlineConnectionServiceProvider, Provider<ConnectionTokenProvider> connectionTokenProvider, Provider<DefaultOfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider, Provider<OfflineForwardingTraceLogger> loggerProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider) {
        this.offlineConnectionServiceProvider = offlineConnectionServiceProvider;
        this.connectionTokenProvider = connectionTokenProvider;
        this.offlineForwardingDelayCalculatorProvider = offlineForwardingDelayCalculatorProvider;
        this.traceManagerProvider = traceManagerProvider;
        this.loggerProvider = loggerProvider;
        this.discreteLoggerProvider = discreteLoggerProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineCredentialsProvider get() {
        return provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(this.offlineConnectionServiceProvider.get(), this.connectionTokenProvider.get(), this.offlineForwardingDelayCalculatorProvider.get(), this.traceManagerProvider.get(), this.loggerProvider.get(), this.discreteLoggerProvider.get());
    }

    public static OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory create(Provider<OfflineConnectionService> offlineConnectionServiceProvider, Provider<ConnectionTokenProvider> connectionTokenProvider, Provider<DefaultOfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider, Provider<OfflineForwardingTraceLogger> loggerProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider) {
        return new OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory(offlineConnectionServiceProvider, connectionTokenProvider, offlineForwardingDelayCalculatorProvider, traceManagerProvider, loggerProvider, discreteLoggerProvider);
    }

    public static DefaultOfflineCredentialsProvider provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(OfflineConnectionService offlineConnectionService, ConnectionTokenProvider connectionTokenProvider, DefaultOfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineForwardingTraceManager traceManager, OfflineForwardingTraceLogger logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger) {
        return (DefaultOfflineCredentialsProvider) Preconditions.checkNotNullFromProvides(OfflineForwardingModule.INSTANCE.provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(offlineConnectionService, connectionTokenProvider, offlineForwardingDelayCalculator, traceManager, logger, discreteLogger));
    }
}
