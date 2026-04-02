package com.stripe.stripeterminal.dagger;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class ContextModule_ProvideContextFactory implements Factory<Context> {
    private final ContextModule module;

    public ContextModule_ProvideContextFactory(ContextModule contextModule) {
        this.module = contextModule;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideContext(this.module);
    }

    public static ContextModule_ProvideContextFactory create(ContextModule contextModule) {
        return new ContextModule_ProvideContextFactory(contextModule);
    }

    public static Context provideContext(ContextModule contextModule) {
        return (Context) Preconditions.checkNotNullFromProvides(contextModule.provideContext());
    }
}
