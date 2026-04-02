package com.stripe.jvmcore.clientlogger;

import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerHealthMetricDispatcher_Factory implements Factory<ClientLoggerHealthMetricDispatcher> {
    private final Provider<ClientLoggerApi> clientLoggerApiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;

    public ClientLoggerHealthMetricDispatcher_Factory(Provider<CoroutineDispatcher> provider, Provider<ClientLoggerApi> provider2, Provider<Boolean> provider3) {
        this.ioProvider = provider;
        this.clientLoggerApiProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ClientLoggerHealthMetricDispatcher get() {
        return newInstance(this.ioProvider.get(), this.clientLoggerApiProvider.get(), this.isNetworkAvailableProvider);
    }

    public static ClientLoggerHealthMetricDispatcher_Factory create(Provider<CoroutineDispatcher> provider, Provider<ClientLoggerApi> provider2, Provider<Boolean> provider3) {
        return new ClientLoggerHealthMetricDispatcher_Factory(provider, provider2, provider3);
    }

    public static ClientLoggerHealthMetricDispatcher newInstance(CoroutineDispatcher coroutineDispatcher, ClientLoggerApi clientLoggerApi, Provider<Boolean> provider) {
        return new ClientLoggerHealthMetricDispatcher(coroutineDispatcher, clientLoggerApi, provider);
    }
}
