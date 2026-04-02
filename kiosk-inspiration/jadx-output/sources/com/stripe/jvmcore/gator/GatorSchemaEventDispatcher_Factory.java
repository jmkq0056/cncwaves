package com.stripe.jvmcore.gator;

import com.stripe.proto.api.gator.GatorApi;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorSchemaEventDispatcher_Factory implements Factory<GatorSchemaEventDispatcher> {
    private final Provider<GatorApi> gatorApiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;

    public GatorSchemaEventDispatcher_Factory(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3) {
        this.ioProvider = provider;
        this.gatorApiProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
    }

    @Override // javax.inject.Provider
    public GatorSchemaEventDispatcher get() {
        return newInstance(this.ioProvider.get(), this.gatorApiProvider.get(), this.isNetworkAvailableProvider);
    }

    public static GatorSchemaEventDispatcher_Factory create(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3) {
        return new GatorSchemaEventDispatcher_Factory(provider, provider2, provider3);
    }

    public static GatorSchemaEventDispatcher newInstance(CoroutineDispatcher coroutineDispatcher, GatorApi gatorApi, Provider<Boolean> provider) {
        return new GatorSchemaEventDispatcher(coroutineDispatcher, gatorApi, provider);
    }
}
