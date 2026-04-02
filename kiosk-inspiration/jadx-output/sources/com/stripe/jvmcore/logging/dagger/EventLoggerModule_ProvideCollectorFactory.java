package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class EventLoggerModule_ProvideCollectorFactory implements Factory<Collector<LogEvent>> {
    private final Provider<File> filesDirProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LoggerExceptionListener> loggerExceptionListenerProvider;
    private final EventLoggerModule module;

    public EventLoggerModule_ProvideCollectorFactory(EventLoggerModule eventLoggerModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        this.module = eventLoggerModule;
        this.logWriterProvider = provider;
        this.filesDirProvider = provider2;
        this.loggerExceptionListenerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Collector<LogEvent> get() {
        return provideCollector(this.module, this.logWriterProvider.get(), DoubleCheck.lazy(this.filesDirProvider), this.loggerExceptionListenerProvider.get());
    }

    public static EventLoggerModule_ProvideCollectorFactory create(EventLoggerModule eventLoggerModule, Provider<LogWriter> provider, Provider<File> provider2, Provider<LoggerExceptionListener> provider3) {
        return new EventLoggerModule_ProvideCollectorFactory(eventLoggerModule, provider, provider2, provider3);
    }

    public static Collector<LogEvent> provideCollector(EventLoggerModule eventLoggerModule, LogWriter logWriter, Lazy<File> lazy, LoggerExceptionListener loggerExceptionListener) {
        return (Collector) Preconditions.checkNotNullFromProvides(eventLoggerModule.provideCollector(logWriter, lazy, loggerExceptionListener));
    }
}
