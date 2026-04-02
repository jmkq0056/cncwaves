package com.stripe.core.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory implements Factory<ObservabilityFeatureFlags> {
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final FeatureFlagModule module;

    public FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        this.module = featureFlagModule;
        this.featureFlagsRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ObservabilityFeatureFlags get() {
        return providesObservabilityFeatureFlags(this.module, this.featureFlagsRepositoryProvider.get());
    }

    public static FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory create(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        return new FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory(featureFlagModule, provider);
    }

    public static ObservabilityFeatureFlags providesObservabilityFeatureFlags(FeatureFlagModule featureFlagModule, FeatureFlagsRepository featureFlagsRepository) {
        return (ObservabilityFeatureFlags) Preconditions.checkNotNullFromProvides(featureFlagModule.providesObservabilityFeatureFlags(featureFlagsRepository));
    }
}
