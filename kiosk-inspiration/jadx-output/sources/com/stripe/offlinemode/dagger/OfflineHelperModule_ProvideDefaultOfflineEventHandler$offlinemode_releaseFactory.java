package com.stripe.offlinemode.dagger;

import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.offlinemode.DefaultOfflineEventHandler;
import com.stripe.offlinemode.OfflineIdGenerator;
import com.stripe.offlinemode.forwarding.OfflineForwardingManager;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory implements Factory<DefaultOfflineEventHandler> {
    private final Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider;
    private final Provider<OfflineForwardingManager> offlineForwardingManagerProvider;
    private final Provider<OfflineIdGenerator> offlineIdGeneratorProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<PosInfoFactory> posInfoFactoryProvider;
    private final Provider<CoroutineScope> scopeProvider;
    private final Provider<Flow<NetworkStatus>> stripeNetworkStatusFlowProvider;

    public OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory(Provider<Clock> clockProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<OfflineIdGenerator> offlineIdGeneratorProvider, Provider<CoroutineScope> scopeProvider, Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider, Provider<PosInfoFactory> posInfoFactoryProvider, Provider<OfflineForwardingManager> offlineForwardingManagerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<Flow<NetworkStatus>> stripeNetworkStatusFlowProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.clockProvider = clockProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.offlineIdGeneratorProvider = offlineIdGeneratorProvider;
        this.scopeProvider = scopeProvider;
        this.activeLocationConfigRepositoryProvider = activeLocationConfigRepositoryProvider;
        this.posInfoFactoryProvider = posInfoFactoryProvider;
        this.offlineForwardingManagerProvider = offlineForwardingManagerProvider;
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.stripeNetworkStatusFlowProvider = stripeNetworkStatusFlowProvider;
        this.offlineDiscreteLoggerProvider = offlineDiscreteLoggerProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineEventHandler get() {
        return provideDefaultOfflineEventHandler$offlinemode_release(this.clockProvider.get(), this.offlineRepositoryProvider.get(), this.offlineIdGeneratorProvider.get(), this.scopeProvider.get(), this.activeLocationConfigRepositoryProvider.get(), this.posInfoFactoryProvider.get(), this.offlineForwardingManagerProvider.get(), this.offlineConfigHelperProvider.get(), this.stripeNetworkStatusFlowProvider.get(), this.offlineDiscreteLoggerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory create(Provider<Clock> clockProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<OfflineIdGenerator> offlineIdGeneratorProvider, Provider<CoroutineScope> scopeProvider, Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider, Provider<PosInfoFactory> posInfoFactoryProvider, Provider<OfflineForwardingManager> offlineForwardingManagerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<Flow<NetworkStatus>> stripeNetworkStatusFlowProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> offlineDiscreteLoggerProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory(clockProvider, offlineRepositoryProvider, offlineIdGeneratorProvider, scopeProvider, activeLocationConfigRepositoryProvider, posInfoFactoryProvider, offlineForwardingManagerProvider, offlineConfigHelperProvider, stripeNetworkStatusFlowProvider, offlineDiscreteLoggerProvider, loggerFactoryProvider);
    }

    public static DefaultOfflineEventHandler provideDefaultOfflineEventHandler$offlinemode_release(Clock clock, OfflineRepository offlineRepository, OfflineIdGenerator offlineIdGenerator, CoroutineScope scope, ActiveLocationConfigRepository activeLocationConfigRepository, PosInfoFactory posInfoFactory, OfflineForwardingManager offlineForwardingManager, OfflineConfigHelper offlineConfigHelper, Flow<NetworkStatus> stripeNetworkStatusFlow, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, LoggerFactory loggerFactory) {
        return (DefaultOfflineEventHandler) Preconditions.checkNotNullFromProvides(OfflineHelperModule.INSTANCE.provideDefaultOfflineEventHandler$offlinemode_release(clock, offlineRepository, offlineIdGenerator, scope, activeLocationConfigRepository, posInfoFactory, offlineForwardingManager, offlineConfigHelper, stripeNetworkStatusFlow, offlineDiscreteLogger, loggerFactory));
    }
}
