package com.stripe.core.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureFlagModule_ProvidesReaderFeatureFlagsFactory implements Factory<ReaderFeatureFlags> {
    private final Provider<FeatureFlagsRepository> featureFlagsRepositoryProvider;
    private final FeatureFlagModule module;

    public FeatureFlagModule_ProvidesReaderFeatureFlagsFactory(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        this.module = featureFlagModule;
        this.featureFlagsRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderFeatureFlags get() {
        return providesReaderFeatureFlags(this.module, this.featureFlagsRepositoryProvider.get());
    }

    public static FeatureFlagModule_ProvidesReaderFeatureFlagsFactory create(FeatureFlagModule featureFlagModule, Provider<FeatureFlagsRepository> provider) {
        return new FeatureFlagModule_ProvidesReaderFeatureFlagsFactory(featureFlagModule, provider);
    }

    public static ReaderFeatureFlags providesReaderFeatureFlags(FeatureFlagModule featureFlagModule, FeatureFlagsRepository featureFlagsRepository) {
        return (ReaderFeatureFlags) Preconditions.checkNotNullFromProvides(featureFlagModule.providesReaderFeatureFlags(featureFlagsRepository));
    }
}
