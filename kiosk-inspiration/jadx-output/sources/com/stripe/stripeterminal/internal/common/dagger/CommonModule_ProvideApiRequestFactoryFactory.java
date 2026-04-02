package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CommonModule_ProvideApiRequestFactoryFactory implements Factory<ApiRequestFactory> {
    private final Provider<LocationHandler> locationHandlerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final CommonModule module;
    private final Provider<PaymentIntentRestApiFactory> paymentIntentRestApiFactoryProvider;
    private final Provider<PosInfoFactory> posInfoFactoryProvider;
    private final Provider<RefundRestApiRequestFactory> refundRestApiRequestFactoryProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<SetupIntentRestApiFactory> setupIntentRestApiFactoryProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;
    private final Provider<TransactionRepository> transactionRepositoryProvider;

    public CommonModule_ProvideApiRequestFactoryFactory(CommonModule commonModule, Provider<PosInfoFactory> provider, Provider<LocationHandler> provider2, Provider<TerminalStatusManager> provider3, Provider<SettingsRepository> provider4, Provider<TransactionRepository> provider5, Provider<SetupIntentRestApiFactory> provider6, Provider<PaymentIntentRestApiFactory> provider7, Provider<RefundRestApiRequestFactory> provider8, Provider<LoggerFactory> provider9) {
        this.module = commonModule;
        this.posInfoFactoryProvider = provider;
        this.locationHandlerProvider = provider2;
        this.statusManagerProvider = provider3;
        this.settingsRepositoryProvider = provider4;
        this.transactionRepositoryProvider = provider5;
        this.setupIntentRestApiFactoryProvider = provider6;
        this.paymentIntentRestApiFactoryProvider = provider7;
        this.refundRestApiRequestFactoryProvider = provider8;
        this.loggerFactoryProvider = provider9;
    }

    @Override // javax.inject.Provider
    public ApiRequestFactory get() {
        return provideApiRequestFactory(this.module, this.posInfoFactoryProvider.get(), this.locationHandlerProvider.get(), this.statusManagerProvider.get(), this.settingsRepositoryProvider.get(), this.transactionRepositoryProvider.get(), this.setupIntentRestApiFactoryProvider.get(), this.paymentIntentRestApiFactoryProvider.get(), this.refundRestApiRequestFactoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static CommonModule_ProvideApiRequestFactoryFactory create(CommonModule commonModule, Provider<PosInfoFactory> provider, Provider<LocationHandler> provider2, Provider<TerminalStatusManager> provider3, Provider<SettingsRepository> provider4, Provider<TransactionRepository> provider5, Provider<SetupIntentRestApiFactory> provider6, Provider<PaymentIntentRestApiFactory> provider7, Provider<RefundRestApiRequestFactory> provider8, Provider<LoggerFactory> provider9) {
        return new CommonModule_ProvideApiRequestFactoryFactory(commonModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static ApiRequestFactory provideApiRequestFactory(CommonModule commonModule, PosInfoFactory posInfoFactory, LocationHandler locationHandler, TerminalStatusManager terminalStatusManager, SettingsRepository settingsRepository, TransactionRepository transactionRepository, SetupIntentRestApiFactory setupIntentRestApiFactory, PaymentIntentRestApiFactory paymentIntentRestApiFactory, RefundRestApiRequestFactory refundRestApiRequestFactory, LoggerFactory loggerFactory) {
        return (ApiRequestFactory) Preconditions.checkNotNullFromProvides(commonModule.provideApiRequestFactory(posInfoFactory, locationHandler, terminalStatusManager, settingsRepository, transactionRepository, setupIntentRestApiFactory, paymentIntentRestApiFactory, refundRestApiRequestFactory, loggerFactory));
    }
}
