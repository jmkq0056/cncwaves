package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorModule_ProvideCrpcClientFactory implements Factory<CrpcClient> {
    private final Provider<CrpcClient.CrpcRequestContextProvider> crpcRequestContextProvider;
    private final Provider<HttpClientConfigurator> httpClientConfiguratorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<CustomCrpcInterceptor> observabilityClientFailuresInterceptorProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<CrpcClient.BaseUrlProvider> serviceUrlProvider;
    private final Provider<CustomCrpcInterceptor> traceLoggingInterceptorProvider;

    public GatorModule_ProvideCrpcClientFactory(Provider<OkHttpClientProvider> provider, Provider<CrpcClient.BaseUrlProvider> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<CustomCrpcInterceptor> provider4, Provider<CustomCrpcInterceptor> provider5, Provider<HttpClientConfigurator> provider6, Provider<LogWriter> provider7) {
        this.okHttpClientProvider = provider;
        this.serviceUrlProvider = provider2;
        this.crpcRequestContextProvider = provider3;
        this.traceLoggingInterceptorProvider = provider4;
        this.observabilityClientFailuresInterceptorProvider = provider5;
        this.httpClientConfiguratorProvider = provider6;
        this.logWriterProvider = provider7;
    }

    @Override // javax.inject.Provider
    public CrpcClient get() {
        return provideCrpcClient(this.okHttpClientProvider.get(), this.serviceUrlProvider.get(), this.crpcRequestContextProvider.get(), this.traceLoggingInterceptorProvider.get(), this.observabilityClientFailuresInterceptorProvider.get(), this.httpClientConfiguratorProvider.get(), this.logWriterProvider.get());
    }

    public static GatorModule_ProvideCrpcClientFactory create(Provider<OkHttpClientProvider> provider, Provider<CrpcClient.BaseUrlProvider> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<CustomCrpcInterceptor> provider4, Provider<CustomCrpcInterceptor> provider5, Provider<HttpClientConfigurator> provider6, Provider<LogWriter> provider7) {
        return new GatorModule_ProvideCrpcClientFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static CrpcClient provideCrpcClient(OkHttpClientProvider okHttpClientProvider, CrpcClient.BaseUrlProvider baseUrlProvider, CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, CustomCrpcInterceptor customCrpcInterceptor, CustomCrpcInterceptor customCrpcInterceptor2, HttpClientConfigurator httpClientConfigurator, LogWriter logWriter) {
        return (CrpcClient) Preconditions.checkNotNullFromProvides(GatorModule.INSTANCE.provideCrpcClient(okHttpClientProvider, baseUrlProvider, crpcRequestContextProvider, customCrpcInterceptor, customCrpcInterceptor2, httpClientConfigurator, logWriter));
    }
}
