package com.stripe.offlinemode.forwarding;

import com.squareup.moshi.Moshi;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOfflineForwardingService_Factory implements Factory<DefaultOfflineForwardingService> {
    private final Provider<RestClient.BaseUrlProvider> baseUrlProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> loggerProvider;
    private final Provider<Moshi> moshiProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<TraceLogger> traceLoggerProvider;
    private final Provider<UserAgentProvider> userAgentProvider;

    public DefaultOfflineForwardingService_Factory(Provider<Moshi> moshiProvider, Provider<OkHttpClientProvider> okHttpClientProvider, Provider<RestClient.BaseUrlProvider> baseUrlProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<UserAgentProvider> userAgentProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> loggerProvider, Provider<TraceLogger> traceLoggerProvider, Provider<LogWriter> logWriterProvider) {
        this.moshiProvider = moshiProvider;
        this.okHttpClientProvider = okHttpClientProvider;
        this.baseUrlProvider = baseUrlProvider;
        this.offlineConfigHelperProvider = offlineConfigHelperProvider;
        this.userAgentProvider = userAgentProvider;
        this.loggerProvider = loggerProvider;
        this.traceLoggerProvider = traceLoggerProvider;
        this.logWriterProvider = logWriterProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineForwardingService get() {
        return newInstance(this.moshiProvider.get(), this.okHttpClientProvider.get(), this.baseUrlProvider.get(), this.offlineConfigHelperProvider.get(), this.userAgentProvider.get(), this.loggerProvider.get(), this.traceLoggerProvider.get(), this.logWriterProvider.get());
    }

    public static DefaultOfflineForwardingService_Factory create(Provider<Moshi> moshiProvider, Provider<OkHttpClientProvider> okHttpClientProvider, Provider<RestClient.BaseUrlProvider> baseUrlProvider, Provider<OfflineConfigHelper> offlineConfigHelperProvider, Provider<UserAgentProvider> userAgentProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> loggerProvider, Provider<TraceLogger> traceLoggerProvider, Provider<LogWriter> logWriterProvider) {
        return new DefaultOfflineForwardingService_Factory(moshiProvider, okHttpClientProvider, baseUrlProvider, offlineConfigHelperProvider, userAgentProvider, loggerProvider, traceLoggerProvider, logWriterProvider);
    }

    public static DefaultOfflineForwardingService newInstance(Moshi moshi, OkHttpClientProvider okHttpClientProvider, RestClient.BaseUrlProvider baseUrlProvider, OfflineConfigHelper offlineConfigHelper, UserAgentProvider userAgentProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> logger, TraceLogger traceLogger, LogWriter logWriter) {
        return new DefaultOfflineForwardingService(moshi, okHttpClientProvider, baseUrlProvider, offlineConfigHelper, userAgentProvider, logger, traceLogger, logWriter);
    }
}
