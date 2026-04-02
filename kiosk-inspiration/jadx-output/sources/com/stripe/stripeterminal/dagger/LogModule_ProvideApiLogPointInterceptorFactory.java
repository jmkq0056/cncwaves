package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logginginterceptors.ApiLogPointInterceptor;
import com.stripe.jvmcore.restclient.RestInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideApiLogPointInterceptorFactory implements Factory<RestInterceptor> {
    private final Provider<ApiLogPointInterceptor> apiLogPointInterceptorProvider;

    public LogModule_ProvideApiLogPointInterceptorFactory(Provider<ApiLogPointInterceptor> provider) {
        this.apiLogPointInterceptorProvider = provider;
    }

    @Override // javax.inject.Provider
    public RestInterceptor get() {
        return provideApiLogPointInterceptor(this.apiLogPointInterceptorProvider.get());
    }

    public static LogModule_ProvideApiLogPointInterceptorFactory create(Provider<ApiLogPointInterceptor> provider) {
        return new LogModule_ProvideApiLogPointInterceptorFactory(provider);
    }

    public static RestInterceptor provideApiLogPointInterceptor(ApiLogPointInterceptor apiLogPointInterceptor) {
        return (RestInterceptor) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideApiLogPointInterceptor(apiLogPointInterceptor));
    }
}
