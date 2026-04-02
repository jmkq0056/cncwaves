package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.core.device.SerialSupplier;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.stripeterminal.dagger.HandoffClientModule;
import com.stripe.stripeterminal.internal.common.CurrentActivityTracker;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class HandoffClientModule_ProvideProviderMirrorFactory implements Factory<HandoffClientModule.ProviderMirror> {
    private final Provider<ApiRequestFactory> apiRequestFactoryProvider;
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<Context> contextProvider;
    private final Provider<CurrentActivityTracker> currentActivityTrackerProvider;
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final Provider<JackRabbitApiRequestFactory> jackRabbitApiRequestFactoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<CoroutineDispatcher> mainDispatcherProvider;
    private final HandoffClientModule module;
    private final Provider<OfflineStatusDetailsListener> offlineStatusDetailsListenerProvider;
    private final Provider<ReaderActivator> readerActivatorProvider;
    private final Provider<ReaderEventContracts.Listener> readerEventListenerProvider;
    private final Provider<RemoteReaderRequestContextProvider> remoteReaderRequestContextProvider;
    private final Provider<SerialSupplier> serialSupplierProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;

    public HandoffClientModule_ProvideProviderMirrorFactory(HandoffClientModule handoffClientModule, Provider<Context> provider, Provider<ApiRequestFactory> provider2, Provider<RemoteReaderRequestContextProvider> provider3, Provider<CurrentActivityTracker> provider4, Provider<TerminalStatusManager> provider5, Provider<JackRabbitApiRequestFactory> provider6, Provider<OfflineStatusDetailsListener> provider7, Provider<ReaderEventContracts.Listener> provider8, Provider<ReaderActivator> provider9, Provider<CoroutineScope> provider10, Provider<CoroutineDispatcher> provider11, Provider<LoggerFactory> provider12, Provider<FeatureFlagsRepository> provider13, Provider<SerialSupplier> provider14) {
        this.module = handoffClientModule;
        this.contextProvider = provider;
        this.apiRequestFactoryProvider = provider2;
        this.remoteReaderRequestContextProvider = provider3;
        this.currentActivityTrackerProvider = provider4;
        this.terminalStatusManagerProvider = provider5;
        this.jackRabbitApiRequestFactoryProvider = provider6;
        this.offlineStatusDetailsListenerProvider = provider7;
        this.readerEventListenerProvider = provider8;
        this.readerActivatorProvider = provider9;
        this.appScopeProvider = provider10;
        this.mainDispatcherProvider = provider11;
        this.loggerFactoryProvider = provider12;
        this.featureFlagsRepositoryProvider = provider13;
        this.serialSupplierProvider = provider14;
    }

    @Override // javax.inject.Provider
    public HandoffClientModule.ProviderMirror get() {
        return provideProviderMirror(this.module, this.contextProvider.get(), this.apiRequestFactoryProvider.get(), this.remoteReaderRequestContextProvider.get(), this.currentActivityTrackerProvider.get(), this.terminalStatusManagerProvider.get(), this.jackRabbitApiRequestFactoryProvider.get(), this.offlineStatusDetailsListenerProvider.get(), this.readerEventListenerProvider.get(), this.readerActivatorProvider.get(), this.appScopeProvider.get(), this.mainDispatcherProvider.get(), this.loggerFactoryProvider.get(), this.featureFlagsRepositoryProvider.get(), this.serialSupplierProvider.get());
    }

    public static HandoffClientModule_ProvideProviderMirrorFactory create(HandoffClientModule handoffClientModule, Provider<Context> provider, Provider<ApiRequestFactory> provider2, Provider<RemoteReaderRequestContextProvider> provider3, Provider<CurrentActivityTracker> provider4, Provider<TerminalStatusManager> provider5, Provider<JackRabbitApiRequestFactory> provider6, Provider<OfflineStatusDetailsListener> provider7, Provider<ReaderEventContracts.Listener> provider8, Provider<ReaderActivator> provider9, Provider<CoroutineScope> provider10, Provider<CoroutineDispatcher> provider11, Provider<LoggerFactory> provider12, Provider<FeatureFlagsRepository> provider13, Provider<SerialSupplier> provider14) {
        return new HandoffClientModule_ProvideProviderMirrorFactory(handoffClientModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14);
    }

    public static HandoffClientModule.ProviderMirror provideProviderMirror(HandoffClientModule handoffClientModule, Context context, ApiRequestFactory apiRequestFactory, RemoteReaderRequestContextProvider remoteReaderRequestContextProvider, CurrentActivityTracker currentActivityTracker, TerminalStatusManager terminalStatusManager, JackRabbitApiRequestFactory jackRabbitApiRequestFactory, OfflineStatusDetailsListener offlineStatusDetailsListener, ReaderEventContracts.Listener listener, ReaderActivator readerActivator, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, LoggerFactory loggerFactory, FeatureFlagsRepository featureFlagsRepository, SerialSupplier serialSupplier) {
        return handoffClientModule.provideProviderMirror(context, apiRequestFactory, remoteReaderRequestContextProvider, currentActivityTracker, terminalStatusManager, jackRabbitApiRequestFactory, offlineStatusDetailsListener, listener, readerActivator, coroutineScope, coroutineDispatcher, loggerFactory, featureFlagsRepository, serialSupplier);
    }
}
