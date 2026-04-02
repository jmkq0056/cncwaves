package com.stripe.stripeterminal.internal.common.connectandupdate;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectAndUpdateStateMachine_Factory implements Factory<ConnectAndUpdateStateMachine> {
    private final Provider<CancelledHandler> cancelledHandlerProvider;
    private final Provider<CheckForUpdateHandler> checkForUpdateHandlerProvider;
    private final Provider<ConnectHandler> connectHandlerProvider;
    private final Provider<DisconnectHandler> disconnectHandlerProvider;
    private final Provider<DiscoveryHandler> discoveryHandlerProvider;
    private final Provider<EmptyHandler> emptyHandlerProvider;
    private final Provider<InstallUpdatesHandler> installUpdatesHandlerProvider;
    private final Provider<ReaderInfoHandler> readerInfoHandlerProvider;
    private final Provider<RebootHandler> rebootHandlerProvider;
    private final Provider<SessionHandler> sessionHandlerProvider;

    public ConnectAndUpdateStateMachine_Factory(Provider<EmptyHandler> provider, Provider<CheckForUpdateHandler> provider2, Provider<ConnectHandler> provider3, Provider<RebootHandler> provider4, Provider<DisconnectHandler> provider5, Provider<DiscoveryHandler> provider6, Provider<InstallUpdatesHandler> provider7, Provider<SessionHandler> provider8, Provider<ReaderInfoHandler> provider9, Provider<CancelledHandler> provider10) {
        this.emptyHandlerProvider = provider;
        this.checkForUpdateHandlerProvider = provider2;
        this.connectHandlerProvider = provider3;
        this.rebootHandlerProvider = provider4;
        this.disconnectHandlerProvider = provider5;
        this.discoveryHandlerProvider = provider6;
        this.installUpdatesHandlerProvider = provider7;
        this.sessionHandlerProvider = provider8;
        this.readerInfoHandlerProvider = provider9;
        this.cancelledHandlerProvider = provider10;
    }

    @Override // javax.inject.Provider
    public ConnectAndUpdateStateMachine get() {
        return newInstance(this.emptyHandlerProvider.get(), this.checkForUpdateHandlerProvider.get(), this.connectHandlerProvider.get(), this.rebootHandlerProvider.get(), this.disconnectHandlerProvider.get(), this.discoveryHandlerProvider.get(), this.installUpdatesHandlerProvider.get(), this.sessionHandlerProvider.get(), this.readerInfoHandlerProvider.get(), this.cancelledHandlerProvider.get());
    }

    public static ConnectAndUpdateStateMachine_Factory create(Provider<EmptyHandler> provider, Provider<CheckForUpdateHandler> provider2, Provider<ConnectHandler> provider3, Provider<RebootHandler> provider4, Provider<DisconnectHandler> provider5, Provider<DiscoveryHandler> provider6, Provider<InstallUpdatesHandler> provider7, Provider<SessionHandler> provider8, Provider<ReaderInfoHandler> provider9, Provider<CancelledHandler> provider10) {
        return new ConnectAndUpdateStateMachine_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    public static ConnectAndUpdateStateMachine newInstance(EmptyHandler emptyHandler, CheckForUpdateHandler checkForUpdateHandler, ConnectHandler connectHandler, RebootHandler rebootHandler, DisconnectHandler disconnectHandler, DiscoveryHandler discoveryHandler, InstallUpdatesHandler installUpdatesHandler, SessionHandler sessionHandler, ReaderInfoHandler readerInfoHandler, CancelledHandler cancelledHandler) {
        return new ConnectAndUpdateStateMachine(emptyHandler, checkForUpdateHandler, connectHandler, rebootHandler, disconnectHandler, discoveryHandler, installUpdatesHandler, sessionHandler, readerInfoHandler, cancelledHandler);
    }
}
