package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Dns;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideCrpcClientBuilderFactory implements Factory<CrpcClient.Builder> {
    private final Provider<CrpcClient.CrpcRequestContextProvider> crpcRequestContextProvider;
    private final Provider<Dns> internetReaderDnsProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<Interceptor> tracingInterceptorProvider;

    public JackrabbitModule_ProvideCrpcClientBuilderFactory(Provider<OkHttpClientProvider> provider, Provider<Dns> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<Interceptor> provider4, Provider<LogWriter> provider5) {
        this.okHttpClientProvider = provider;
        this.internetReaderDnsProvider = provider2;
        this.crpcRequestContextProvider = provider3;
        this.tracingInterceptorProvider = provider4;
        this.logWriterProvider = provider5;
    }

    @Override // javax.inject.Provider
    public CrpcClient.Builder get() {
        return provideCrpcClientBuilder(this.okHttpClientProvider.get(), this.internetReaderDnsProvider.get(), this.crpcRequestContextProvider.get(), this.tracingInterceptorProvider.get(), this.logWriterProvider.get());
    }

    public static JackrabbitModule_ProvideCrpcClientBuilderFactory create(Provider<OkHttpClientProvider> provider, Provider<Dns> provider2, Provider<CrpcClient.CrpcRequestContextProvider> provider3, Provider<Interceptor> provider4, Provider<LogWriter> provider5) {
        return new JackrabbitModule_ProvideCrpcClientBuilderFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static CrpcClient.Builder provideCrpcClientBuilder(OkHttpClientProvider okHttpClientProvider, Dns dns, CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, Interceptor interceptor, LogWriter logWriter) {
        return (CrpcClient.Builder) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideCrpcClientBuilder(okHttpClientProvider, dns, crpcRequestContextProvider, interceptor, logWriter));
    }
}
