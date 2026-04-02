package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient;
import com.stripe.offlinemode.forwarding.OfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.OfflineForwardingService;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory implements Factory<DefaultOfflineForwardingApiClient> {
    private final Provider<OfflineCredentialsProvider> credentialsProvider;
    private final Provider<LocationHandler> locationHandlerProvider;
    private final Provider<OfflineForwardingTraceLogger> loggerProvider;
    private final Provider<OfflineForwardingService> offlineForwardingServiceProvider;
    private final Provider<OfflineForwardingTraceManager> traceManagerProvider;

    public OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory(Provider<OfflineForwardingService> offlineForwardingServiceProvider, Provider<LocationHandler> locationHandlerProvider, Provider<OfflineCredentialsProvider> credentialsProvider, Provider<OfflineForwardingTraceLogger> loggerProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider) {
        this.offlineForwardingServiceProvider = offlineForwardingServiceProvider;
        this.locationHandlerProvider = locationHandlerProvider;
        this.credentialsProvider = credentialsProvider;
        this.loggerProvider = loggerProvider;
        this.traceManagerProvider = traceManagerProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineForwardingApiClient get() {
        return provideDefaultOfflineForwardingApiClient$offlinemode_release(this.offlineForwardingServiceProvider.get(), this.locationHandlerProvider.get(), this.credentialsProvider.get(), this.loggerProvider.get(), this.traceManagerProvider.get());
    }

    public static OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory create(Provider<OfflineForwardingService> offlineForwardingServiceProvider, Provider<LocationHandler> locationHandlerProvider, Provider<OfflineCredentialsProvider> credentialsProvider, Provider<OfflineForwardingTraceLogger> loggerProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider) {
        return new OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory(offlineForwardingServiceProvider, locationHandlerProvider, credentialsProvider, loggerProvider, traceManagerProvider);
    }

    public static DefaultOfflineForwardingApiClient provideDefaultOfflineForwardingApiClient$offlinemode_release(OfflineForwardingService offlineForwardingService, LocationHandler locationHandler, OfflineCredentialsProvider credentialsProvider, OfflineForwardingTraceLogger logger, OfflineForwardingTraceManager traceManager) {
        return (DefaultOfflineForwardingApiClient) Preconditions.checkNotNullFromProvides(OfflineForwardingModule.INSTANCE.provideDefaultOfflineForwardingApiClient$offlinemode_release(offlineForwardingService, locationHandler, credentialsProvider, logger, traceManager));
    }
}
