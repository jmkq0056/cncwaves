package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CommonModule_ProvidePaymentIntentUpdaterFactory implements Factory<PaymentIntentUpdater> {
    private final Provider<ApiClient> apiClientProvider;
    private final Provider<ApiRequestFactory> apiRequestFactoryProvider;
    private final CommonModule module;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public CommonModule_ProvidePaymentIntentUpdaterFactory(CommonModule commonModule, Provider<ApiClient> provider, Provider<TerminalStatusManager> provider2, Provider<TransactionRepository> provider3, Provider<ApiRequestFactory> provider4) {
        this.module = commonModule;
        this.apiClientProvider = provider;
        this.statusManagerProvider = provider2;
        this.transactionRepositoryProvider = provider3;
        this.apiRequestFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public PaymentIntentUpdater get() {
        return providePaymentIntentUpdater(this.module, this.apiClientProvider.get(), this.statusManagerProvider.get(), this.transactionRepositoryProvider.get(), this.apiRequestFactoryProvider.get());
    }

    public static CommonModule_ProvidePaymentIntentUpdaterFactory create(CommonModule commonModule, Provider<ApiClient> provider, Provider<TerminalStatusManager> provider2, Provider<TransactionRepository> provider3, Provider<ApiRequestFactory> provider4) {
        return new CommonModule_ProvidePaymentIntentUpdaterFactory(commonModule, provider, provider2, provider3, provider4);
    }

    public static PaymentIntentUpdater providePaymentIntentUpdater(CommonModule commonModule, ApiClient apiClient, TerminalStatusManager terminalStatusManager, TransactionRepository transactionRepository, ApiRequestFactory apiRequestFactory) {
        return (PaymentIntentUpdater) Preconditions.checkNotNullFromProvides(commonModule.providePaymentIntentUpdater(apiClient, terminalStatusManager, transactionRepository, apiRequestFactory));
    }
}
