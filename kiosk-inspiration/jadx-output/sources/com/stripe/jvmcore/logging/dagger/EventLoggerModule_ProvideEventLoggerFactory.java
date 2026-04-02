package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.logging.EventLogger;
import com.stripe.jvmcore.proto.ProtoFlattener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.time.Clock;
import dagger.Lazy;
import dagger.internal.DoubleCheck;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class EventLoggerModule_ProvideEventLoggerFactory implements Factory<EventLogger> {
    private final Provider<BatchDispatcher<LogEvent>> batchDispatcherProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<File> filesDirProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final EventLoggerModule module;
    private final Provider<ProtoFlattener> protoFlattenerProvider;

    public EventLoggerModule_ProvideEventLoggerFactory(EventLoggerModule eventLoggerModule, Provider<File> provider, Provider<BatchDispatcher<LogEvent>> provider2, Provider<Clock> provider3, Provider<ProtoFlattener> provider4, Provider<CoroutineDispatcher> provider5, Provider<LogWriter> provider6) {
        this.module = eventLoggerModule;
        this.filesDirProvider = provider;
        this.batchDispatcherProvider = provider2;
        this.clockProvider = provider3;
        this.protoFlattenerProvider = provider4;
        this.ioProvider = provider5;
        this.logWriterProvider = provider6;
    }

    @Override // javax.inject.Provider
    public EventLogger get() {
        return provideEventLogger(this.module, DoubleCheck.lazy(this.filesDirProvider), this.batchDispatcherProvider.get(), this.clockProvider.get(), this.protoFlattenerProvider.get(), this.ioProvider.get(), this.logWriterProvider.get());
    }

    public static EventLoggerModule_ProvideEventLoggerFactory create(EventLoggerModule eventLoggerModule, Provider<File> provider, Provider<BatchDispatcher<LogEvent>> provider2, Provider<Clock> provider3, Provider<ProtoFlattener> provider4, Provider<CoroutineDispatcher> provider5, Provider<LogWriter> provider6) {
        return new EventLoggerModule_ProvideEventLoggerFactory(eventLoggerModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static EventLogger provideEventLogger(EventLoggerModule eventLoggerModule, Lazy<File> lazy, BatchDispatcher<LogEvent> batchDispatcher, Clock clock, ProtoFlattener protoFlattener, CoroutineDispatcher coroutineDispatcher, LogWriter logWriter) {
        return (EventLogger) Preconditions.checkNotNullFromProvides(eventLoggerModule.provideEventLogger(lazy, batchDispatcher, clock, protoFlattener, coroutineDispatcher, logWriter));
    }
}
