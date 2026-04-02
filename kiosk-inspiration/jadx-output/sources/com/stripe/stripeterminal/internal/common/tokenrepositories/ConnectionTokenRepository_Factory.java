package com.stripe.stripeterminal.internal.common.tokenrepositories;

import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import dagger.internal.Factory;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectionTokenRepository_Factory implements Factory<ConnectionTokenRepository> {
    private final Provider<Function0<Long>> epochProvider;
    private final Provider<ExecutorService> executorProvider;
    private final Provider<ConnectionTokenProvider> tokenProvider;

    public ConnectionTokenRepository_Factory(Provider<ConnectionTokenProvider> provider, Provider<Function0<Long>> provider2, Provider<ExecutorService> provider3) {
        this.tokenProvider = provider;
        this.epochProvider = provider2;
        this.executorProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ConnectionTokenRepository get() {
        return newInstance(this.tokenProvider.get(), this.epochProvider.get(), this.executorProvider.get());
    }

    public static ConnectionTokenRepository_Factory create(Provider<ConnectionTokenProvider> provider, Provider<Function0<Long>> provider2, Provider<ExecutorService> provider3) {
        return new ConnectionTokenRepository_Factory(provider, provider2, provider3);
    }

    public static ConnectionTokenRepository newInstance(ConnectionTokenProvider connectionTokenProvider, Function0<Long> function0, ExecutorService executorService) {
        return new ConnectionTokenRepository(connectionTokenProvider, function0, executorService);
    }
}
