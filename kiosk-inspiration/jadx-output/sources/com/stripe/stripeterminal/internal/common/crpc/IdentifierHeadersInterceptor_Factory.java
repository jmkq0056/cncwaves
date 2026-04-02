package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.environment.UserAgentProvider;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class IdentifierHeadersInterceptor_Factory implements Factory<IdentifierHeadersInterceptor> {
    private final Provider<RpcSessionTokenProvider> tokenProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UserAgentProvider> userAgentProvider;

    public IdentifierHeadersInterceptor_Factory(Provider<RpcSessionTokenProvider> provider, Provider<TransactionRepository> provider2, Provider<UserAgentProvider> provider3) {
        this.tokenProvider = provider;
        this.transactionRepositoryProvider = provider2;
        this.userAgentProvider = provider3;
    }

    @Override // javax.inject.Provider
    public IdentifierHeadersInterceptor get() {
        return newInstance(this.tokenProvider.get(), this.transactionRepositoryProvider.get(), this.userAgentProvider.get());
    }

    public static IdentifierHeadersInterceptor_Factory create(Provider<RpcSessionTokenProvider> provider, Provider<TransactionRepository> provider2, Provider<UserAgentProvider> provider3) {
        return new IdentifierHeadersInterceptor_Factory(provider, provider2, provider3);
    }

    public static IdentifierHeadersInterceptor newInstance(RpcSessionTokenProvider rpcSessionTokenProvider, TransactionRepository transactionRepository, UserAgentProvider userAgentProvider) {
        return new IdentifierHeadersInterceptor(rpcSessionTokenProvider, transactionRepository, userAgentProvider);
    }
}
