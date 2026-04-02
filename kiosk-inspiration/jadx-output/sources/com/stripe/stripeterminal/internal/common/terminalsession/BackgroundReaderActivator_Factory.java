package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BackgroundReaderActivator_Factory implements Factory<BackgroundReaderActivator> {
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TerminalSession> terminalSessionProvider;

    public BackgroundReaderActivator_Factory(Provider<TerminalStatusManager> provider, Provider<SessionTokenRepository> provider2, Provider<TerminalSession> provider3) {
        this.statusManagerProvider = provider;
        this.sessionTokenRepositoryProvider = provider2;
        this.terminalSessionProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BackgroundReaderActivator get() {
        return newInstance(this.statusManagerProvider.get(), this.sessionTokenRepositoryProvider.get(), DoubleCheck.lazy(this.terminalSessionProvider));
    }

    public static BackgroundReaderActivator_Factory create(Provider<TerminalStatusManager> provider, Provider<SessionTokenRepository> provider2, Provider<TerminalSession> provider3) {
        return new BackgroundReaderActivator_Factory(provider, provider2, provider3);
    }

    public static BackgroundReaderActivator newInstance(TerminalStatusManager terminalStatusManager, SessionTokenRepository sessionTokenRepository, Lazy<TerminalSession> lazy) {
        return new BackgroundReaderActivator(terminalStatusManager, sessionTokenRepository, lazy);
    }
}
