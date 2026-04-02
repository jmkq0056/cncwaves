package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideProxyRemoteReaderControllerFactory implements Factory<ProxyRemoteReaderController> {
    private final Provider<RemoteReaderController> handoffReaderControllerProvider;
    private final Provider<IpReaderController> ipReaderControllerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideProxyRemoteReaderControllerFactory(TerminalModule terminalModule, Provider<IpReaderController> provider, Provider<RemoteReaderController> provider2, Provider<LoggerFactory> provider3) {
        this.module = terminalModule;
        this.ipReaderControllerProvider = provider;
        this.handoffReaderControllerProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ProxyRemoteReaderController get() {
        return provideProxyRemoteReaderController(this.module, this.ipReaderControllerProvider.get(), this.handoffReaderControllerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static TerminalModule_ProvideProxyRemoteReaderControllerFactory create(TerminalModule terminalModule, Provider<IpReaderController> provider, Provider<RemoteReaderController> provider2, Provider<LoggerFactory> provider3) {
        return new TerminalModule_ProvideProxyRemoteReaderControllerFactory(terminalModule, provider, provider2, provider3);
    }

    public static ProxyRemoteReaderController provideProxyRemoteReaderController(TerminalModule terminalModule, IpReaderController ipReaderController, RemoteReaderController remoteReaderController, LoggerFactory loggerFactory) {
        return (ProxyRemoteReaderController) Preconditions.checkNotNullFromProvides(terminalModule.provideProxyRemoteReaderController(ipReaderController, remoteReaderController, loggerFactory));
    }
}
