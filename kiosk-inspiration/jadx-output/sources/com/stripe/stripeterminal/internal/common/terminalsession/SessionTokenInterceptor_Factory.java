package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionTokenInterceptor_Factory implements Factory<SessionTokenInterceptor> {
    private final Provider<BackgroundReaderActivator> backgroundActivatorProvider;
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;

    public SessionTokenInterceptor_Factory(Provider<BackgroundReaderActivator> provider, Provider<SessionTokenRepository> provider2) {
        this.backgroundActivatorProvider = provider;
        this.sessionTokenRepositoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SessionTokenInterceptor get() {
        return newInstance(this.backgroundActivatorProvider.get(), this.sessionTokenRepositoryProvider.get());
    }

    public static SessionTokenInterceptor_Factory create(Provider<BackgroundReaderActivator> provider, Provider<SessionTokenRepository> provider2) {
        return new SessionTokenInterceptor_Factory(provider, provider2);
    }

    public static SessionTokenInterceptor newInstance(BackgroundReaderActivator backgroundReaderActivator, SessionTokenRepository sessionTokenRepository) {
        return new SessionTokenInterceptor(backgroundReaderActivator, sessionTokenRepository);
    }
}
