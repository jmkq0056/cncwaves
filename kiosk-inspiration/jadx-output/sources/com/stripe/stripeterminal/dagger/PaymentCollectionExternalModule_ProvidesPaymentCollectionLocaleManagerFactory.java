package com.stripe.stripeterminal.dagger;

import com.stripe.core.locale.LocaleManager;
import com.stripe.paymentcollection.PaymentCollectionLocaleManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory implements Factory<PaymentCollectionLocaleManager> {
    private final Provider<LocaleManager> localeManagerProvider;
    private final PaymentCollectionExternalModule module;

    public PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<LocaleManager> provider) {
        this.module = paymentCollectionExternalModule;
        this.localeManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionLocaleManager get() {
        return providesPaymentCollectionLocaleManager(this.module, this.localeManagerProvider.get());
    }

    public static PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory create(PaymentCollectionExternalModule paymentCollectionExternalModule, Provider<LocaleManager> provider) {
        return new PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory(paymentCollectionExternalModule, provider);
    }

    public static PaymentCollectionLocaleManager providesPaymentCollectionLocaleManager(PaymentCollectionExternalModule paymentCollectionExternalModule, LocaleManager localeManager) {
        return (PaymentCollectionLocaleManager) Preconditions.checkNotNullFromProvides(paymentCollectionExternalModule.providesPaymentCollectionLocaleManager(localeManager));
    }
}
