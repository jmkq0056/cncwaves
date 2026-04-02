package com.stripe.jvmcore.featureflag;

import com.stripe.jvmcore.factoryimage.FactoryImageHelper;
import com.stripe.jvmcore.storage.SharedPrefs;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureFlagsRepository_Factory implements Factory<FeatureFlagsRepository> {
    private final Provider<FactoryImageHelper> factoryImageHelperProvider;
    private final Provider<SharedPrefs> sharedPrefsProvider;

    public FeatureFlagsRepository_Factory(Provider<SharedPrefs> provider, Provider<FactoryImageHelper> provider2) {
        this.sharedPrefsProvider = provider;
        this.factoryImageHelperProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FeatureFlagsRepository get() {
        return newInstance(this.sharedPrefsProvider.get(), this.factoryImageHelperProvider.get());
    }

    public static FeatureFlagsRepository_Factory create(Provider<SharedPrefs> provider, Provider<FactoryImageHelper> provider2) {
        return new FeatureFlagsRepository_Factory(provider, provider2);
    }

    public static FeatureFlagsRepository newInstance(SharedPrefs sharedPrefs, FactoryImageHelper factoryImageHelper) {
        return new FeatureFlagsRepository(sharedPrefs, factoryImageHelper);
    }
}
