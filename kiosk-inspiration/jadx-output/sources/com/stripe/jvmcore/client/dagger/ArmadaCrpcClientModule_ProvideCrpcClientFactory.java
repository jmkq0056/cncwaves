package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaCrpcClientModule_ProvideCrpcClientFactory implements Factory<CrpcClient> {
    private final Provider<CrpcClient.CrpcRequestContextProvider> crpcRequestContextProvider;
    private final Provider<Set<CustomCrpcInterceptor>> customCrpcInterceptorsProvider;
    private final Provider<HttpClientConfigurator> httpClientConfiguratorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<CrpcClient.BaseUrlProvider> serviceUrlProvider;

    public ArmadaCrpcClientModule_ProvideCrpcClientFactory(Provider<OkHttpClientProvider> provider, Provider<CrpcClient.BaseUrlProvider> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<Set<CustomCrpcInterceptor>> provider4, Provider<HttpClientConfigurator> provider5, Provider<LogWriter> provider6) {
        this.okHttpClientProvider = provider;
        this.serviceUrlProvider = provider2;
        this.crpcRequestContextProvider = provider3;
        this.customCrpcInterceptorsProvider = provider4;
        this.httpClientConfiguratorProvider = provider5;
        this.logWriterProvider = provider6;
    }

    @Override // javax.inject.Provider
    public CrpcClient get() {
        return provideCrpcClient(this.okHttpClientProvider.get(), this.serviceUrlProvider.get(), this.crpcRequestContextProvider.get(), this.customCrpcInterceptorsProvider.get(), this.httpClientConfiguratorProvider.get(), this.logWriterProvider.get());
    }

    public static ArmadaCrpcClientModule_ProvideCrpcClientFactory create(Provider<OkHttpClientProvider> provider, Provider<CrpcClient.BaseUrlProvider> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<Set<CustomCrpcInterceptor>> provider4, Provider<HttpClientConfigurator> provider5, Provider<LogWriter> provider6) {
        return new ArmadaCrpcClientModule_ProvideCrpcClientFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static CrpcClient provideCrpcClient(OkHttpClientProvider okHttpClientProvider, CrpcClient.BaseUrlProvider baseUrlProvider, CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, Set<CustomCrpcInterceptor> set, HttpClientConfigurator httpClientConfigurator, LogWriter logWriter) {
        return (CrpcClient) Preconditions.checkNotNullFromProvides(ArmadaCrpcClientModule.INSTANCE.provideCrpcClient(okHttpClientProvider, baseUrlProvider, crpcRequestContextProvider, set, httpClientConfigurator, logWriter));
    }
}
