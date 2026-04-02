package com.stripe.jvmcore.gator;

import com.stripe.proto.api.gator.GatorApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorEventDispatcher_Factory implements Factory<GatorEventDispatcher> {
    private final Provider<GatorApi> gatorApiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;

    public GatorEventDispatcher_Factory(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3) {
        this.ioProvider = provider;
        this.gatorApiProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
    }

    @Override // javax.inject.Provider
    public GatorEventDispatcher get() {
        return newInstance(this.ioProvider.get(), DoubleCheck.lazy(this.gatorApiProvider), this.isNetworkAvailableProvider);
    }

    public static GatorEventDispatcher_Factory create(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3) {
        return new GatorEventDispatcher_Factory(provider, provider2, provider3);
    }

    public static GatorEventDispatcher newInstance(CoroutineDispatcher coroutineDispatcher, Lazy<GatorApi> lazy, Provider<Boolean> provider) {
        return new GatorEventDispatcher(coroutineDispatcher, lazy, provider);
    }
}
