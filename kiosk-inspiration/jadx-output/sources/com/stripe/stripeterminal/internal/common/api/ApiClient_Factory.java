package com.stripe.stripeterminal.internal.common.api;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiClient_Factory implements Factory<ApiClient> {
    private final Provider<ApiRequestFactory> apiRequestFactoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<AuthenticatedRestClient> restClientProvider;
    private final Provider<OkHttpClientProvider> unauthenticatedRestClientProvider;

    public ApiClient_Factory(Provider<ApiRequestFactory> provider, Provider<AuthenticatedRestClient> provider2, Provider<OkHttpClientProvider> provider3, Provider<LoggerFactory> provider4) {
        this.apiRequestFactoryProvider = provider;
        this.restClientProvider = provider2;
        this.unauthenticatedRestClientProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public ApiClient get() {
        return newInstance(this.apiRequestFactoryProvider.get(), this.restClientProvider.get(), this.unauthenticatedRestClientProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ApiClient_Factory create(Provider<ApiRequestFactory> provider, Provider<AuthenticatedRestClient> provider2, Provider<OkHttpClientProvider> provider3, Provider<LoggerFactory> provider4) {
        return new ApiClient_Factory(provider, provider2, provider3, provider4);
    }

    public static ApiClient newInstance(ApiRequestFactory apiRequestFactory, AuthenticatedRestClient authenticatedRestClient, OkHttpClientProvider okHttpClientProvider, LoggerFactory loggerFactory) {
        return new ApiClient(apiRequestFactory, authenticatedRestClient, okHttpClientProvider, loggerFactory);
    }
}
