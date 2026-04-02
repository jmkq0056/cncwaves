package com.stripe.jvmcore.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.storage.SharedPrefs;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory implements Factory<FeatureFlagsRepository> {
    private final FactoryImageNotSupportedFeatureFlagRepositoryModule module;
    private final Provider<SharedPrefs> sharedPrefsProvider;

    public FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory(FactoryImageNotSupportedFeatureFlagRepositoryModule factoryImageNotSupportedFeatureFlagRepositoryModule, Provider<SharedPrefs> provider) {
        this.module = factoryImageNotSupportedFeatureFlagRepositoryModule;
        this.sharedPrefsProvider = provider;
    }

    @Override // javax.inject.Provider
    public FeatureFlagsRepository get() {
        return provideFactoryNotSupportedFeatureFlagRepository(this.module, this.sharedPrefsProvider.get());
    }

    public static FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory create(FactoryImageNotSupportedFeatureFlagRepositoryModule factoryImageNotSupportedFeatureFlagRepositoryModule, Provider<SharedPrefs> provider) {
        return new FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory(factoryImageNotSupportedFeatureFlagRepositoryModule, provider);
    }

    public static FeatureFlagsRepository provideFactoryNotSupportedFeatureFlagRepository(FactoryImageNotSupportedFeatureFlagRepositoryModule factoryImageNotSupportedFeatureFlagRepositoryModule, SharedPrefs sharedPrefs) {
        return (FeatureFlagsRepository) Preconditions.checkNotNullFromProvides(factoryImageNotSupportedFeatureFlagRepositoryModule.provideFactoryNotSupportedFeatureFlagRepository(sharedPrefs));
    }
}
