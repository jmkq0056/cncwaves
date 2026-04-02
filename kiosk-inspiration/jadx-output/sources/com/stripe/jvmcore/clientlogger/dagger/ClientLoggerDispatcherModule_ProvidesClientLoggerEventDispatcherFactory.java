package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxyEventPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerDispatcherModule_ProvidesClientLoggerEventDispatcherFactory implements Factory<Dispatcher<ProxyEventPb>> {
    private final Provider<ClientLoggerApi> apiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final ClientLoggerDispatcherModule module;

    public ClientLoggerDispatcherModule_ProvidesClientLoggerEventDispatcherFactory(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<LogWriter> provider4) {
        this.module = clientLoggerDispatcherModule;
        this.apiProvider = provider;
        this.ioProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
        this.logWriterProvider = provider4;
    }

    @Override // javax.inject.Provider
    public Dispatcher<ProxyEventPb> get() {
        return providesClientLoggerEventDispatcher(this.module, DoubleCheck.lazy(this.apiProvider), this.ioProvider.get(), this.isNetworkAvailableProvider, this.logWriterProvider.get());
    }

    public static ClientLoggerDispatcherModule_ProvidesClientLoggerEventDispatcherFactory create(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<LogWriter> provider4) {
        return new ClientLoggerDispatcherModule_ProvidesClientLoggerEventDispatcherFactory(clientLoggerDispatcherModule, provider, provider2, provider3, provider4);
    }

    public static Dispatcher<ProxyEventPb> providesClientLoggerEventDispatcher(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Lazy<ClientLoggerApi> lazy, CoroutineDispatcher coroutineDispatcher, Provider<Boolean> provider, LogWriter logWriter) {
        return (Dispatcher) Preconditions.checkNotNullFromProvides(clientLoggerDispatcherModule.providesClientLoggerEventDispatcher(lazy, coroutineDispatcher, provider, logWriter));
    }
}
