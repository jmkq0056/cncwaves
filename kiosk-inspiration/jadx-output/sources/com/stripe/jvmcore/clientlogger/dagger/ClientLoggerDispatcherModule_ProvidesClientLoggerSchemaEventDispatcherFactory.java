package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerDispatcherModule_ProvidesClientLoggerSchemaEventDispatcherFactory implements Factory<Dispatcher<LogEvent>> {
    private final Provider<ClientLoggerApi> apiProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<Boolean> isNetworkAvailableProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final ClientLoggerDispatcherModule module;

    public ClientLoggerDispatcherModule_ProvidesClientLoggerSchemaEventDispatcherFactory(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<LogWriter> provider4) {
        this.module = clientLoggerDispatcherModule;
        this.apiProvider = provider;
        this.ioProvider = provider2;
        this.isNetworkAvailableProvider = provider3;
        this.logWriterProvider = provider4;
    }

    @Override // javax.inject.Provider
    public Dispatcher<LogEvent> get() {
        return providesClientLoggerSchemaEventDispatcher(this.module, this.apiProvider.get(), this.ioProvider.get(), this.isNetworkAvailableProvider, this.logWriterProvider.get());
    }

    public static ClientLoggerDispatcherModule_ProvidesClientLoggerSchemaEventDispatcherFactory create(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<ClientLoggerApi> provider, Provider<CoroutineDispatcher> provider2, Provider<Boolean> provider3, Provider<LogWriter> provider4) {
        return new ClientLoggerDispatcherModule_ProvidesClientLoggerSchemaEventDispatcherFactory(clientLoggerDispatcherModule, provider, provider2, provider3, provider4);
    }

    public static Dispatcher<LogEvent> providesClientLoggerSchemaEventDispatcher(ClientLoggerDispatcherModule clientLoggerDispatcherModule, ClientLoggerApi clientLoggerApi, CoroutineDispatcher coroutineDispatcher, Provider<Boolean> provider, LogWriter logWriter) {
        return (Dispatcher) Preconditions.checkNotNullFromProvides(clientLoggerDispatcherModule.providesClientLoggerSchemaEventDispatcher(clientLoggerApi, coroutineDispatcher, provider, logWriter));
    }
}
