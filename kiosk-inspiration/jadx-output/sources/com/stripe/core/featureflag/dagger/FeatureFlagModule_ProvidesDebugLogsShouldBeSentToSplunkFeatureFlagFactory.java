package com.stripe.core.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory implements Factory<Boolean> {
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final FeatureFlagModule module;

    public FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        this.module = featureFlagModule;
        this.featureFlagsRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(providesDebugLogsShouldBeSentToSplunkFeatureFlag(this.module, this.featureFlagsRepositoryProvider.get()));
    }

    public static FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory create(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        return new FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory(featureFlagModule, provider);
    }

    public static boolean providesDebugLogsShouldBeSentToSplunkFeatureFlag(FeatureFlagModule featureFlagModule, FeatureFlagsRepository featureFlagsRepository) {
        return featureFlagModule.providesDebugLogsShouldBeSentToSplunkFeatureFlag(featureFlagsRepository);
    }
}
