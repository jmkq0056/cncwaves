package com.stripe.core.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureFlagModule_ProvidesTtpAutoReconnectEnabledFeatureFlagFactory implements Factory<Boolean> {
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final FeatureFlagModule module;

    public FeatureFlagModule_ProvidesTtpAutoReconnectEnabledFeatureFlagFactory(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        this.module = featureFlagModule;
        this.featureFlagsRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(providesTtpAutoReconnectEnabledFeatureFlag(this.module, this.featureFlagsRepositoryProvider.get()));
    }

    public static FeatureFlagModule_ProvidesTtpAutoReconnectEnabledFeatureFlagFactory create(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        return new FeatureFlagModule_ProvidesTtpAutoReconnectEnabledFeatureFlagFactory(featureFlagModule, provider);
    }

    public static boolean providesTtpAutoReconnectEnabledFeatureFlag(FeatureFlagModule featureFlagModule, FeatureFlagsRepository featureFlagsRepository) {
        return featureFlagModule.providesTtpAutoReconnectEnabledFeatureFlag(featureFlagsRepository);
    }
}
