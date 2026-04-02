package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.scottyab.rootbeer.RootBeer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class RootAccessModule_ProvideRootBeerFactory implements Factory<RootBeer> {
    private final Provider<Context> contextProvider;
    private final RootAccessModule module;

    public RootAccessModule_ProvideRootBeerFactory(RootAccessModule rootAccessModule, Provider<Context> provider) {
        this.module = rootAccessModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public RootBeer get() {
        return provideRootBeer(this.module, this.contextProvider.get());
    }

    public static RootAccessModule_ProvideRootBeerFactory create(RootAccessModule rootAccessModule, Provider<Context> provider) {
        return new RootAccessModule_ProvideRootBeerFactory(rootAccessModule, provider);
    }

    public static RootBeer provideRootBeer(RootAccessModule rootAccessModule, Context context) {
        return (RootBeer) Preconditions.checkNotNullFromProvides(rootAccessModule.provideRootBeer(context));
    }
}
