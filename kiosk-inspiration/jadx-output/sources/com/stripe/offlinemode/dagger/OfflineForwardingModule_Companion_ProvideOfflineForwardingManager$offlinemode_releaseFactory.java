package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.offlinemode.forwarding.OfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.OfflineForwardingApiClient;
import com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator;
import com.stripe.offlinemode.forwarding.OfflineForwardingManager;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory implements Factory<OfflineForwardingManager> {
    private final Provider<OfflineForwardingApiClient> apiClientProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<OfflineCredentialsProvider> credentialsProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder>> endToEndLoggerProvider;
    private final Provider<OfflineListener> listenerProvider;
    private final Provider<Flow<Boolean>> networkConnectivityFlowProvider;
    private final Provider<NetworkStatus> networkStatusProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<OfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<OfflineForwardingTraceLogger> traceLoggerProvider;

    public OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory(Provider<OfflineForwardingApiClient> apiClientProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<Flow<Boolean>> networkConnectivityFlowProvider, Provider<CoroutineDispatcher> dispatcherProvider, Provider<OfflineListener> listenerProvider, Provider<NetworkStatus> networkStatusProvider, Provider<OfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<OfflineCredentialsProvider> credentialsProvider, Provider<Clock> clockProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder>> endToEndLoggerProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<OfflineForwardingTraceLogger> traceLoggerProvider) {
        this.apiClientProvider = apiClientProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.networkConnectivityFlowProvider = networkConnectivityFlowProvider;
        this.dispatcherProvider = dispatcherProvider;
        this.listenerProvider = listenerProvider;
        this.networkStatusProvider = networkStatusProvider;
        this.offlineForwardingDelayCalculatorProvider = offlineForwardingDelayCalculatorProvider;
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.credentialsProvider = credentialsProvider;
        this.clockProvider = clockProvider;
        this.endToEndLoggerProvider = endToEndLoggerProvider;
        this.discreteLoggerProvider = discreteLoggerProvider;
        this.traceLoggerProvider = traceLoggerProvider;
    }

    @Override // javax.inject.Provider
    public OfflineForwardingManager get() {
        return provideOfflineForwardingManager$offlinemode_release(this.apiClientProvider.get(), this.offlineRepositoryProvider.get(), this.networkConnectivityFlowProvider.get(), this.dispatcherProvider.get(), this.listenerProvider.get(), this.networkStatusProvider, this.offlineForwardingDelayCalculatorProvider.get(), this.offlineConfigHelperProvider.get(), this.credentialsProvider.get(), this.clockProvider.get(), this.endToEndLoggerProvider.get(), this.discreteLoggerProvider.get(), this.traceLoggerProvider.get());
    }

    public static OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory create(Provider<OfflineForwardingApiClient> apiClientProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<Flow<Boolean>> networkConnectivityFlowProvider, Provider<CoroutineDispatcher> dispatcherProvider, Provider<OfflineListener> listenerProvider, Provider<NetworkStatus> networkStatusProvider, Provider<OfflineForwardingDelayCalculator> offlineForwardingDelayCalculatorProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<OfflineCredentialsProvider> credentialsProvider, Provider<Clock> clockProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder>> endToEndLoggerProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<OfflineForwardingTraceLogger> traceLoggerProvider) {
        return new OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory(apiClientProvider, offlineRepositoryProvider, networkConnectivityFlowProvider, dispatcherProvider, listenerProvider, networkStatusProvider, offlineForwardingDelayCalculatorProvider, offlineConfigHelperProvider, credentialsProvider, clockProvider, endToEndLoggerProvider, discreteLoggerProvider, traceLoggerProvider);
    }

    public static OfflineForwardingManager provideOfflineForwardingManager$offlinemode_release(OfflineForwardingApiClient apiClient, OfflineRepository offlineRepository, Flow<Boolean> networkConnectivityFlow, CoroutineDispatcher dispatcher, OfflineListener listener, Provider<NetworkStatus> networkStatusProvider, OfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineConfigHelper offlineConfigHelper, OfflineCredentialsProvider credentialsProvider, Clock clock, HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> endToEndLogger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, OfflineForwardingTraceLogger traceLogger) {
        return (OfflineForwardingManager) Preconditions.checkNotNullFromProvides(OfflineForwardingModule.INSTANCE.provideOfflineForwardingManager$offlinemode_release(apiClient, offlineRepository, networkConnectivityFlow, dispatcher, listener, networkStatusProvider, offlineForwardingDelayCalculator, offlineConfigHelper, credentialsProvider, clock, endToEndLogger, discreteLogger, traceLogger));
    }
}
