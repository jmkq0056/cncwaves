package com.stripe.stripeterminal.dagger;

import com.stripe.paymentcollection.SettingsRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory implements Factory<SettingsRepository> {
    private final Provider<com.stripe.core.transaction.SettingsRepository> coreSettingsRepositoryProvider;
    private final PaymentCollectionExternalModule module;

    public PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<com.stripe.core.transaction.SettingsRepository> provider) {
        this.module = paymentCollectionExternalModule;
        this.coreSettingsRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public SettingsRepository get() {
        return providesPaymentCollectionSettingsRepository(this.module, this.coreSettingsRepositoryProvider.get());
    }

    public static PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory create(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<com.stripe.core.transaction.SettingsRepository> provider) {
        return new PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory(paymentCollectionExternalModule, provider);
    }

    public static SettingsRepository providesPaymentCollectionSettingsRepository(PaymentCollectionExternalModule paymentCollectionExternalModule, com.stripe.core.transaction.SettingsRepository settingsRepository) {
        return (SettingsRepository) Preconditions.checkNotNullFromProvides(paymentCollectionExternalModule.providesPaymentCollectionSettingsRepository(settingsRepository));
    }
}
