package com.stripe.offlinemode.dagger;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.log.OfflineForwardingLogOperation;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.offlinemode.log.OfflineTraceHelper;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineTraceLoggerFactory implements Factory<OfflineForwardingTraceLogger> {
    private final Provider<Clock> clockProvider;
    private final Provider<Gson> gsonProvider;
    private final Provider<OfflineTraceHelper> helperProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<LogRepository<OfflineForwardingLogOperation>> repositoryProvider;
    private final Provider<TraceLogger> traceLoggerProvider;
    private final Provider<OfflineForwardingTraceManager> traceManagerProvider;

    public OfflineLogModule_ProvideOfflineTraceLoggerFactory(Provider<TraceLogger> traceLoggerProvider, Provider<Clock> clockProvider, Provider<LogWriter> logWriterProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider, Provider<OfflineTraceHelper> helperProvider, Provider<LogRepository<OfflineForwardingLogOperation>> repositoryProvider, Provider<Gson> gsonProvider) {
        this.traceLoggerProvider = traceLoggerProvider;
        this.clockProvider = clockProvider;
        this.logWriterProvider = logWriterProvider;
        this.traceManagerProvider = traceManagerProvider;
        this.helperProvider = helperProvider;
        this.repositoryProvider = repositoryProvider;
        this.gsonProvider = gsonProvider;
    }

    @Override // javax.inject.Provider
    public OfflineForwardingTraceLogger get() {
        return provideOfflineTraceLogger(this.traceLoggerProvider.get(), this.clockProvider.get(), this.logWriterProvider.get(), this.traceManagerProvider.get(), this.helperProvider.get(), this.repositoryProvider.get(), this.gsonProvider.get());
    }

    public static OfflineLogModule_ProvideOfflineTraceLoggerFactory create(Provider<TraceLogger> traceLoggerProvider, Provider<Clock> clockProvider, Provider<LogWriter> logWriterProvider, Provider<OfflineForwardingTraceManager> traceManagerProvider, Provider<OfflineTraceHelper> helperProvider, Provider<LogRepository<OfflineForwardingLogOperation>> repositoryProvider, Provider<Gson> gsonProvider) {
        return new OfflineLogModule_ProvideOfflineTraceLoggerFactory(traceLoggerProvider, clockProvider, logWriterProvider, traceManagerProvider, helperProvider, repositoryProvider, gsonProvider);
    }

    public static OfflineForwardingTraceLogger provideOfflineTraceLogger(TraceLogger traceLogger, Clock clock, LogWriter logWriter, OfflineForwardingTraceManager traceManager, OfflineTraceHelper helper, LogRepository<OfflineForwardingLogOperation> repository, Gson gson) {
        return (OfflineForwardingTraceLogger) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineTraceLogger(traceLogger, clock, logWriter, traceManager, helper, repository, gson));
    }
}
