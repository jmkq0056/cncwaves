package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.logginginterceptors.TraceLoggingRestClientInterceptor;
import com.stripe.jvmcore.restclient.IdempotencyRetryInterceptor;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.logwriter.LogWriter;
import com.stripe.stripeterminal.internal.common.terminalsession.SessionTokenInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class FilesModule_ProvideFilesRestClientFactory implements Factory<RestClient> {
    private final Provider<RestInterceptor> customRestInterceptorProvider;
    private final Provider<IdempotencyRetryInterceptor> idempotencyRetryInterceptorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<RestClient.BaseUrlProvider> serviceUrlProvider;
    private final Provider<SessionTokenInterceptor> sessionTokenInterceptorProvider;
    private final Provider<TraceLoggingRestClientInterceptor> traceLoggingRestClientInterceptorProvider;

    public FilesModule_ProvideFilesRestClientFactory(Provider<OkHttpClientProvider> provider, Provider<RestClient.BaseUrlProvider> provider2, Provider<IdempotencyRetryInterceptor> provider3, Provider<SessionTokenInterceptor> provider4, Provider<RestInterceptor> provider5, Provider<TraceLoggingRestClientInterceptor> provider6, Provider<LogWriter> provider7) {
        this.okHttpClientProvider = provider;
        this.serviceUrlProvider = provider2;
        this.idempotencyRetryInterceptorProvider = provider3;
        this.sessionTokenInterceptorProvider = provider4;
        this.customRestInterceptorProvider = provider5;
        this.traceLoggingRestClientInterceptorProvider = provider6;
        this.logWriterProvider = provider7;
    }

    @Override // javax.inject.Provider
    public RestClient get() {
        return provideFilesRestClient(this.okHttpClientProvider.get(), this.serviceUrlProvider.get(), this.idempotencyRetryInterceptorProvider.get(), this.sessionTokenInterceptorProvider.get(), this.customRestInterceptorProvider.get(), this.traceLoggingRestClientInterceptorProvider.get(), this.logWriterProvider.get());
    }

    public static FilesModule_ProvideFilesRestClientFactory create(Provider<OkHttpClientProvider> provider, Provider<RestClient.BaseUrlProvider> provider2, Provider<IdempotencyRetryInterceptor> provider3, Provider<SessionTokenInterceptor> provider4, Provider<RestInterceptor> provider5, Provider<TraceLoggingRestClientInterceptor> provider6, Provider<LogWriter> provider7) {
        return new FilesModule_ProvideFilesRestClientFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static RestClient provideFilesRestClient(OkHttpClientProvider okHttpClientProvider, RestClient.BaseUrlProvider baseUrlProvider, IdempotencyRetryInterceptor idempotencyRetryInterceptor, SessionTokenInterceptor sessionTokenInterceptor, RestInterceptor restInterceptor, TraceLoggingRestClientInterceptor traceLoggingRestClientInterceptor, LogWriter logWriter) {
        return (RestClient) Preconditions.checkNotNullFromProvides(FilesModule.INSTANCE.provideFilesRestClient(okHttpClientProvider, baseUrlProvider, idempotencyRetryInterceptor, sessionTokenInterceptor, restInterceptor, traceLoggingRestClientInterceptor, logWriter));
    }
}
