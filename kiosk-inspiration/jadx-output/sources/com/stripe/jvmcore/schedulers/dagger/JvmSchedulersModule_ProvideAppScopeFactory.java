package com.stripe.jvmcore.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmSchedulersModule_ProvideAppScopeFactory implements Factory<CoroutineScope> {
    private final Provider<CoroutineDispatcher> ioDispatcherProvider;

    public JvmSchedulersModule_ProvideAppScopeFactory(Provider<CoroutineDispatcher> provider) {
        this.ioDispatcherProvider = provider;
    }

    @Override // javax.inject.Provider
    public CoroutineScope get() {
        return provideAppScope(this.ioDispatcherProvider.get());
    }

    public static JvmSchedulersModule_ProvideAppScopeFactory create(Provider<CoroutineDispatcher> provider) {
        return new JvmSchedulersModule_ProvideAppScopeFactory(provider);
    }

    public static CoroutineScope provideAppScope(CoroutineDispatcher coroutineDispatcher) {
        return (CoroutineScope) Preconditions.checkNotNullFromProvides(JvmSchedulersModule.INSTANCE.provideAppScope(coroutineDispatcher));
    }
}
