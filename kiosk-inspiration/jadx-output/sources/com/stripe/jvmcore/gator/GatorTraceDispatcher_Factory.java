package com.stripe.jvmcore.gator;

import com.stripe.proto.api.gator.GatorApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorTraceDispatcher_Factory implements Factory<GatorTraceDispatcher> {
    private final Provider<GatorApi> gatorApiProvider;
    private final Provider<GatorUploaderOutOfMemoryLogger> gatorUploaderOutOfMemoryLoggerProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;

    public GatorTraceDispatcher_Factory(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3, Provider<GatorUploaderOutOfMemoryLogger> provider4) {
        this.ioProvider = provider;
        this.gatorApiProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
        this.gatorUploaderOutOfMemoryLoggerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public GatorTraceDispatcher get() {
        return newInstance(this.ioProvider.get(), DoubleCheck.lazy(this.gatorApiProvider), this.isNetworkAvailableProvider, this.gatorUploaderOutOfMemoryLoggerProvider.get());
    }

    public static GatorTraceDispatcher_Factory create(Provider<CoroutineDispatcher> provider, Provider<GatorApi> provider2, Provider<Boolean> provider3, Provider<GatorUploaderOutOfMemoryLogger> provider4) {
        return new GatorTraceDispatcher_Factory(provider, provider2, provider3, provider4);
    }

    public static GatorTraceDispatcher newInstance(CoroutineDispatcher coroutineDispatcher, Lazy<GatorApi> lazy, Provider<Boolean> provider, GatorUploaderOutOfMemoryLogger gatorUploaderOutOfMemoryLogger) {
        return new GatorTraceDispatcher(coroutineDispatcher, lazy, provider, gatorUploaderOutOfMemoryLogger);
    }
}
