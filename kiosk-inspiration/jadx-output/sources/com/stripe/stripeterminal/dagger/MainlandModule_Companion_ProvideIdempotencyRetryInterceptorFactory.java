package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.restclient.IdempotencyGenerator;
import com.stripe.jvmcore.restclient.IdempotencyRetryInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory implements Factory<IdempotencyRetryInterceptor> {
    private final Provider<IdempotencyGenerator> generatorProvider;

    public MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory(Provider<IdempotencyGenerator> provider) {
        this.generatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public IdempotencyRetryInterceptor get() {
        return provideIdempotencyRetryInterceptor(this.generatorProvider.get());
    }

    public static MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory create(Provider<IdempotencyGenerator> provider) {
        return new MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory(provider);
    }

    public static IdempotencyRetryInterceptor provideIdempotencyRetryInterceptor(IdempotencyGenerator idempotencyGenerator) {
        return (IdempotencyRetryInterceptor) Preconditions.checkNotNullFromProvides(MainlandModule.INSTANCE.provideIdempotencyRetryInterceptor(idempotencyGenerator));
    }
}
