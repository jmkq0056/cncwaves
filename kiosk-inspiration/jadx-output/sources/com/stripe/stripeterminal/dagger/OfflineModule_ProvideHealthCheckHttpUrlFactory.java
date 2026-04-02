package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineModule_ProvideHealthCheckHttpUrlFactory implements Factory<HttpUrl> {
    private final OfflineModule module;

    public OfflineModule_ProvideHealthCheckHttpUrlFactory(OfflineModule offlineModule) {
        this.module = offlineModule;
    }

    @Override // javax.inject.Provider
    public HttpUrl get() {
        return provideHealthCheckHttpUrl(this.module);
    }

    public static OfflineModule_ProvideHealthCheckHttpUrlFactory create(OfflineModule offlineModule) {
        return new OfflineModule_ProvideHealthCheckHttpUrlFactory(offlineModule);
    }

    public static HttpUrl provideHealthCheckHttpUrl(OfflineModule offlineModule) {
        return (HttpUrl) Preconditions.checkNotNullFromProvides(offlineModule.provideHealthCheckHttpUrl());
    }
}
