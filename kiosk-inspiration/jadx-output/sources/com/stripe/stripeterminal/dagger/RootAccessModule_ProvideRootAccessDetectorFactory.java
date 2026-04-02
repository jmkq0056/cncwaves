package com.stripe.stripeterminal.dagger;

import com.scottyab.rootbeer.RootBeer;
import com.stripe.stripeterminal.internal.common.introspection.RootAccessDetector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class RootAccessModule_ProvideRootAccessDetectorFactory implements Factory<RootAccessDetector> {
    private final RootAccessModule module;
    private final Provider<RootBeer> rootBeerProvider;

    public RootAccessModule_ProvideRootAccessDetectorFactory(RootAccessModule rootAccessModule, Provider<RootBeer> provider) {
        this.module = rootAccessModule;
        this.rootBeerProvider = provider;
    }

    @Override // javax.inject.Provider
    public RootAccessDetector get() {
        return provideRootAccessDetector(this.module, this.rootBeerProvider.get());
    }

    public static RootAccessModule_ProvideRootAccessDetectorFactory create(RootAccessModule rootAccessModule, Provider<RootBeer> provider) {
        return new RootAccessModule_ProvideRootAccessDetectorFactory(rootAccessModule, provider);
    }

    public static RootAccessDetector provideRootAccessDetector(RootAccessModule rootAccessModule, RootBeer rootBeer) {
        return (RootAccessDetector) Preconditions.checkNotNullFromProvides(rootAccessModule.provideRootAccessDetector(rootBeer));
    }
}
