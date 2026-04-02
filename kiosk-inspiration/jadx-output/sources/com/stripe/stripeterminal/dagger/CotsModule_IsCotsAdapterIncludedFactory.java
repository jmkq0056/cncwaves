package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class CotsModule_IsCotsAdapterIncludedFactory implements Factory<Boolean> {
    private final CotsModule module;

    public CotsModule_IsCotsAdapterIncludedFactory(CotsModule cotsModule) {
        this.module = cotsModule;
    }

    @Override // javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(isCotsAdapterIncluded(this.module));
    }

    public static CotsModule_IsCotsAdapterIncludedFactory create(CotsModule cotsModule) {
        return new CotsModule_IsCotsAdapterIncludedFactory(cotsModule);
    }

    public static boolean isCotsAdapterIncluded(CotsModule cotsModule) {
        return cotsModule.isCotsAdapterIncluded();
    }
}
