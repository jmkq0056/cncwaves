package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.Adapter;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory implements Factory<Adapter> {
    @Override // javax.inject.Provider
    public Adapter get() {
        return provideNoEmbeddedAdapter();
    }

    public static NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Adapter provideNoEmbeddedAdapter() {
        return NoEmbeddedAdapterModule.INSTANCE.provideNoEmbeddedAdapter();
    }

    private static final class InstanceHolder {
        private static final NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory INSTANCE = new NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory();

        private InstanceHolder() {
        }
    }
}
