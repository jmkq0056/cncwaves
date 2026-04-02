package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.kmpcore.jackrabbitclient.JackrabbitClient;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class IpReaderModule_ProvideIpReaderControllerFactory implements Factory<IpReaderController> {
    private final Provider<ApiClient> apiClientProvider;
    private final Provider<JackRabbitApiRequestFactory> apiRequestFactoryProvider;
    private final Provider<CrpcServiceResolver<JackRabbitApi>> crpcServiceResolverProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<CoroutineDispatcher> ioCoroutineDispatcherProvider;
    private final Provider<JackrabbitClient> jackrabbitClientProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final IpReaderModule module;
    private final Provider<OfflineStatusDetailsListener> offlineStatusDetailsListenerProvider;
    private final Provider<ReaderActivator> readerActivatorProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;
    private final Provider<RemoteReaderRequestContextProvider> terminalsdkCrpcRequestContextProvider;
    private final Provider<ReaderEventContracts.EventsCountListener> unacknowledgedReaderEventsHandlerProvider;

    public IpReaderModule_ProvideIpReaderControllerFactory(IpReaderModule ipReaderModule, Provider<ApiClient> provider, Provider<CrpcServiceResolver<JackRabbitApi>> provider2, Provider<RemoteReaderRequestContextProvider> provider3, Provider<JackRabbitApiRequestFactory> provider4, Provider<FeatureFlagsRepository> provider5, Provider<CoroutineDispatcher> provider6, Provider<TerminalStatusManager> provider7, Provider<ReaderActivator> provider8, Provider<OfflineStatusDetailsListener> provider9, Provider<ReaderEventContracts.EventsCountListener> provider10, Provider<JackrabbitClient> provider11, Provider<LoggerFactory> provider12) {
        this.module = ipReaderModule;
        this.apiClientProvider = provider;
        this.crpcServiceResolverProvider = provider2;
        this.terminalsdkCrpcRequestContextProvider = provider3;
        this.apiRequestFactoryProvider = provider4;
        this.featureFlagsRepositoryProvider = provider5;
        this.ioCoroutineDispatcherProvider = provider6;
        this.terminalStatusManagerProvider = provider7;
        this.readerActivatorProvider = provider8;
        this.offlineStatusDetailsListenerProvider = provider9;
        this.unacknowledgedReaderEventsHandlerProvider = provider10;
        this.jackrabbitClientProvider = provider11;
        this.loggerFactoryProvider = provider12;
    }

    @Override // javax.inject.Provider
    public IpReaderController get() {
        return provideIpReaderController(this.module, this.apiClientProvider.get(), this.crpcServiceResolverProvider.get(), this.terminalsdkCrpcRequestContextProvider.get(), this.apiRequestFactoryProvider.get(), this.featureFlagsRepositoryProvider.get(), this.ioCoroutineDispatcherProvider.get(), this.terminalStatusManagerProvider.get(), this.readerActivatorProvider.get(), this.offlineStatusDetailsListenerProvider.get(), this.unacknowledgedReaderEventsHandlerProvider.get(), this.jackrabbitClientProvider.get(), this.loggerFactoryProvider.get());
    }

    public static IpReaderModule_ProvideIpReaderControllerFactory create(IpReaderModule ipReaderModule, Provider<ApiClient> provider, Provider<CrpcServiceResolver<JackRabbitApi>> provider2, Provider<RemoteReaderRequestContextProvider> provider3, Provider<JackRabbitApiRequestFactory> provider4, Provider<FeatureFlagsRepository> provider5, Provider<CoroutineDispatcher> provider6, Provider<TerminalStatusManager> provider7, Provider<ReaderActivator> provider8, Provider<OfflineStatusDetailsListener> provider9, Provider<ReaderEventContracts.EventsCountListener> provider10, Provider<JackrabbitClient> provider11, Provider<LoggerFactory> provider12) {
        return new IpReaderModule_ProvideIpReaderControllerFactory(ipReaderModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12);
    }

    public static IpReaderController provideIpReaderController(IpReaderModule ipReaderModule, ApiClient apiClient, CrpcServiceResolver<JackRabbitApi> crpcServiceResolver, RemoteReaderRequestContextProvider remoteReaderRequestContextProvider, JackRabbitApiRequestFactory jackRabbitApiRequestFactory, FeatureFlagsRepository featureFlagsRepository, CoroutineDispatcher coroutineDispatcher, TerminalStatusManager terminalStatusManager, ReaderActivator readerActivator, OfflineStatusDetailsListener offlineStatusDetailsListener, ReaderEventContracts.EventsCountListener eventsCountListener, JackrabbitClient jackrabbitClient, LoggerFactory loggerFactory) {
        return (IpReaderController) Preconditions.checkNotNullFromProvides(ipReaderModule.provideIpReaderController(apiClient, crpcServiceResolver, remoteReaderRequestContextProvider, jackRabbitApiRequestFactory, featureFlagsRepository, coroutineDispatcher, terminalStatusManager, readerActivator, offlineStatusDetailsListener, eventsCountListener, jackrabbitClient, loggerFactory));
    }
}
