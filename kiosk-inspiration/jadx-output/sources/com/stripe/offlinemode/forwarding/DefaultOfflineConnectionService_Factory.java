package com.stripe.offlinemode.forwarding;

import com.squareup.moshi.Moshi;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOfflineConnectionService_Factory implements Factory<DefaultOfflineConnectionService> {
    private final Provider<RestClient.BaseUrlProvider> baseUrlProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<Moshi> moshiProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> stageLoggerProvider;
    private final Provider<TraceLogger> traceLoggerProvider;
    private final Provider<UserAgentProvider> userAgentProvider;

    public DefaultOfflineConnectionService_Factory(Provider<Moshi> moshiProvider, Provider<OkHttpClientProvider> okHttpClientProvider, Provider<RestClient.BaseUrlProvider> baseUrlProvider, Provider<UserAgentProvider> userAgentProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> stageLoggerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<TraceLogger> traceLoggerProvider, Provider<LogWriter> logWriterProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<CoroutineDispatcher> dispatcherProvider) {
        this.moshiProvider = moshiProvider;
        this.okHttpClientProvider = okHttpClientProvider;
        this.baseUrlProvider = baseUrlProvider;
        this.userAgentProvider = userAgentProvider;
        this.stageLoggerProvider = stageLoggerProvider;
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.traceLoggerProvider = traceLoggerProvider;
        this.logWriterProvider = logWriterProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.dispatcherProvider = dispatcherProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineConnectionService get() {
        return newInstance(this.moshiProvider.get(), this.okHttpClientProvider.get(), this.baseUrlProvider.get(), this.userAgentProvider.get(), this.stageLoggerProvider.get(), this.offlineConfigHelperProvider.get(), this.traceLoggerProvider.get(), this.logWriterProvider.get(), this.offlineRepositoryProvider.get(), this.dispatcherProvider.get());
    }

    public static DefaultOfflineConnectionService_Factory create(Provider<Moshi> moshiProvider, Provider<OkHttpClientProvider> okHttpClientProvider, Provider<RestClient.BaseUrlProvider> baseUrlProvider, Provider<UserAgentProvider> userAgentProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> stageLoggerProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<TraceLogger> traceLoggerProvider, Provider<LogWriter> logWriterProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<CoroutineDispatcher> dispatcherProvider) {
        return new DefaultOfflineConnectionService_Factory(moshiProvider, okHttpClientProvider, baseUrlProvider, userAgentProvider, stageLoggerProvider, offlineConfigHelperProvider, traceLoggerProvider, logWriterProvider, offlineRepositoryProvider, dispatcherProvider);
    }

    public static DefaultOfflineConnectionService newInstance(Moshi moshi, OkHttpClientProvider okHttpClientProvider, RestClient.BaseUrlProvider baseUrlProvider, UserAgentProvider userAgentProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> stageLogger, OfflineConfigHelper offlineConfigHelper, TraceLogger traceLogger, LogWriter logWriter, OfflineRepository offlineRepository, CoroutineDispatcher dispatcher) {
        return new DefaultOfflineConnectionService(moshi, okHttpClientProvider, baseUrlProvider, userAgentProvider, stageLogger, offlineConfigHelper, traceLogger, logWriter, offlineRepository, dispatcher);
    }
}
