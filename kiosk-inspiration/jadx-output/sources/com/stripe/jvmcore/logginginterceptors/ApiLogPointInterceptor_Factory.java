package com.stripe.jvmcore.logginginterceptors;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ApiLogPointInterceptor_Factory implements Factory<ApiLogPointInterceptor> {
    private final Provider<LoggerFactory> loggerFactoryProvider;

    public ApiLogPointInterceptor_Factory(Provider<LoggerFactory> provider) {
        this.loggerFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public ApiLogPointInterceptor get() {
        return newInstance(this.loggerFactoryProvider.get());
    }

    public static ApiLogPointInterceptor_Factory create(Provider<LoggerFactory> provider) {
        return new ApiLogPointInterceptor_Factory(provider);
    }

    public static ApiLogPointInterceptor newInstance(LoggerFactory loggerFactory) {
        return new ApiLogPointInterceptor(loggerFactory);
    }
}
