package com.stripe.core.transaction.dagger;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.RestClient;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CoreTransactionModule_ProvideAuthenticatedRestClientFactory implements Factory<AuthenticatedRestClient> {
    private final Provider<RestClient> baseFilesRestClientProvider;
    private final Provider<RestClient> baseRestClientProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;
    private final Provider<UserAgentProvider> userAgentProvider;

    public CoreTransactionModule_ProvideAuthenticatedRestClientFactory(Provider<RestClient> provider, Provider<UserAgentProvider> provider2, Provider<TransactionRepository> provider3, Provider<RestClient> provider4) {
        this.baseRestClientProvider = provider;
        this.userAgentProvider = provider2;
        this.transactionRepositoryProvider = provider3;
        this.baseFilesRestClientProvider = provider4;
    }

    @Override // javax.inject.Provider
    public AuthenticatedRestClient get() {
        return provideAuthenticatedRestClient(DoubleCheck.lazy(this.baseRestClientProvider), this.userAgentProvider.get(), this.transactionRepositoryProvider.get(), DoubleCheck.lazy(this.baseFilesRestClientProvider));
    }

    public static CoreTransactionModule_ProvideAuthenticatedRestClientFactory create(Provider<RestClient> provider, Provider<UserAgentProvider> provider2, Provider<TransactionRepository> provider3, Provider<RestClient> provider4) {
        return new CoreTransactionModule_ProvideAuthenticatedRestClientFactory(provider, provider2, provider3, provider4);
    }

    public static AuthenticatedRestClient provideAuthenticatedRestClient(Lazy<RestClient> lazy, UserAgentProvider userAgentProvider, TransactionRepository transactionRepository, Lazy<RestClient> lazy2) {
        return (AuthenticatedRestClient) Preconditions.checkNotNullFromProvides(CoreTransactionModule.INSTANCE.provideAuthenticatedRestClient(lazy, userAgentProvider, transactionRepository, lazy2));
    }
}
