package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory implements Factory<Collector<ObservabilityData>> {
    private final Provider<File> filesDirProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LoggerExceptionListener> loggerExceptionListenerProvider;
    private final ClientLoggerDispatcherModule module;

    public ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        this.module = clientLoggerDispatcherModule;
        this.logWriterProvider = provider;
        this.filesDirProvider = provider2;
        this.loggerExceptionListenerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Collector<ObservabilityData> get() {
        return provideClientLoggerObservabilityDataCollector(this.module, this.logWriterProvider.get(), DoubleCheck.lazy(this.filesDirProvider), this.loggerExceptionListenerProvider.get());
    }

    public static ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory create(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        return new ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory(clientLoggerDispatcherModule, provider, provider2, provider3);
    }

    public static Collector<ObservabilityData> provideClientLoggerObservabilityDataCollector(ClientLoggerDispatcherModule clientLoggerDispatcherModule, LogWriter logWriter, Lazy<File> lazy, LoggerExceptionListener loggerExceptionListener) {
        return (Collector) Preconditions.checkNotNullFromProvides(clientLoggerDispatcherModule.provideClientLoggerObservabilityDataCollector(logWriter, lazy, loggerExceptionListener));
    }
}
