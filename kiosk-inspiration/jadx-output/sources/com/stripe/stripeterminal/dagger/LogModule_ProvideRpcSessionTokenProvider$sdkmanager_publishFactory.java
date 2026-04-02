package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory implements Factory<RpcSessionTokenProvider> {
    private final Provider<SessionTokenRepository> sessionTokenRepositoryProvider;

    public LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory(Provider<SessionTokenRepository> provider) {
        this.sessionTokenRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public RpcSessionTokenProvider get() {
        return provideRpcSessionTokenProvider$sdkmanager_publish(this.sessionTokenRepositoryProvider.get());
    }

    public static LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory create(Provider<SessionTokenRepository> provider) {
        return new LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory(provider);
    }

    public static RpcSessionTokenProvider provideRpcSessionTokenProvider$sdkmanager_publish(SessionTokenRepository sessionTokenRepository) {
        return (RpcSessionTokenProvider) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideRpcSessionTokenProvider$sdkmanager_publish(sessionTokenRepository));
    }
}
