package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.BuildValuesFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildValuesModule_ProvideBuildValuesFactory implements Factory<BuildValues> {
    private final Provider<BuildValuesFactory> buildValuesFactoryProvider;
    private final BuildValuesModule module;

    public BuildValuesModule_ProvideBuildValuesFactory(BuildValuesModule buildValuesModule, Provider<BuildValuesFactory> provider) {
        this.module = buildValuesModule;
        this.buildValuesFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public BuildValues get() {
        return provideBuildValues(this.module, this.buildValuesFactoryProvider.get());
    }

    public static BuildValuesModule_ProvideBuildValuesFactory create(BuildValuesModule buildValuesModule, Provider<BuildValuesFactory> provider) {
        return new BuildValuesModule_ProvideBuildValuesFactory(buildValuesModule, provider);
    }

    public static BuildValues provideBuildValues(BuildValuesModule buildValuesModule, BuildValuesFactory buildValuesFactory) {
        return (BuildValues) Preconditions.checkNotNullFromProvides(buildValuesModule.provideBuildValues(buildValuesFactory));
    }
}
