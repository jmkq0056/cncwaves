package com.stripe.paymentcollection.dagger;

import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory implements Factory<PaymentCollectionFeatureFlagRepository> {
    private final Provider<ReaderFeatureFlags> readerFeatureFlagsProvider;
    private final Provider<SharedPrefs> sharedPrefsProvider;

    public PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory(Provider<ReaderFeatureFlags> provider, Provider<SharedPrefs> provider2) {
        this.readerFeatureFlagsProvider = provider;
        this.sharedPrefsProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PaymentCollectionFeatureFlagRepository get() {
        return providesFeatureFlagRepository(this.readerFeatureFlagsProvider, this.sharedPrefsProvider.get());
    }

    public static PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory create(Provider<ReaderFeatureFlags> provider, Provider<SharedPrefs> provider2) {
        return new PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory(provider, provider2);
    }

    public static PaymentCollectionFeatureFlagRepository providesFeatureFlagRepository(Provider<ReaderFeatureFlags> provider, SharedPrefs sharedPrefs) {
        return (PaymentCollectionFeatureFlagRepository) Preconditions.checkNotNullFromProvides(PaymentCollectionModule.INSTANCE.providesFeatureFlagRepository(provider, sharedPrefs));
    }
}
