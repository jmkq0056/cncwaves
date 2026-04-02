package com.stripe.jvmcore.environment.dagger;

import com.stripe.jvmcore.environment.EnvironmentProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory implements Factory<EnvironmentProvider> {
    @Override // javax.inject.Provider
    public EnvironmentProvider get() {
        return provideProdEnvironmentProvider();
    }

    public static ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static EnvironmentProvider provideProdEnvironmentProvider() {
        return (EnvironmentProvider) Preconditions.checkNotNullFromProvides(ProdEnvironmentModule.INSTANCE.provideProdEnvironmentProvider());
    }

    private static final class InstanceHolder {
        private static final ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory INSTANCE = new ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory();

        private InstanceHolder() {
        }
    }
}
