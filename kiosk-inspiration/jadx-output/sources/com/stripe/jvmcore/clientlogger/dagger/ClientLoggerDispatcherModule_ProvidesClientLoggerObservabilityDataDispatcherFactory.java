package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory implements Factory<Dispatcher<ObservabilityData>> {
    private final Provider<ClientLoggerApi> apiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;
    private final ClientLoggerDispatcherModule module;

    public ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3) {
        this.module = clientLoggerDispatcherModule;
        this.apiProvider = provider;
        this.ioProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Dispatcher<ObservabilityData> get() {
        return providesClientLoggerObservabilityDataDispatcher(this.module, DoubleCheck.lazy(this.apiProvider), this.ioProvider.get(), this.isNetworkAvailableProvider);
    }

    public static ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory create(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3) {
        return new ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory(clientLoggerDispatcherModule, provider, provider2, provider3);
    }

    public static Dispatcher<ObservabilityData> providesClientLoggerObservabilityDataDispatcher(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Lazy<ClientLoggerApi> lazy, CoroutineDispatcher coroutineDispatcher, Provider<Boolean> provider) {
        return (Dispatcher) Preconditions.checkNotNullFromProvides(clientLoggerDispatcherModule.providesClientLoggerObservabilityDataDispatcher(lazy, coroutineDispatcher, provider));
    }
}
