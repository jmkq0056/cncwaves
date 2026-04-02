package com.stripe.jvmcore.logging.terminal.dagger;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogInitializer;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.jvmcore.logging.terminal.helpers.DefaultApplicationTraceHelper;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogFlusher;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogInitializer;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperation;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperationCollector;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogOperationFactory;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogRepository;
import com.stripe.jvmcore.logging.terminal.log.DefaultLogger;
import com.stripe.jvmcore.logging.terminal.log.DefaultLoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.LogFlusher;
import com.stripe.jvmcore.logging.terminal.log.LogUploader;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.StructuredEventLoggerInitializer;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogLevelAwareWriter;
import com.stripe.logwriter.LogWriter;
import com.stripe.logwriter.dagger.LogWriterModule;
import com.stripe.time.Clock;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JvmCoreLogModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0007J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007J\b\u0010\n\u001a\u00020\u000bH\u0007J%\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0001¢\u0006\u0002\b\u0014J@\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007J,\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u000bH\u0007J4\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0&2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000bH\u0007J(\u0010)\u001a\u00020*2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001dH\u0007J\u0081\u0001\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001d2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010-\u001a\u00020.2\u0017\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0&¢\u0006\u0002\b02\u0017\u00101\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0#¢\u0006\u0002\b02\u0017\u00102\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b0H\u0007J\b\u00103\u001a\u00020(H\u0007¨\u00064"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;", "", "()V", "provideApplicationTraceHelper", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "provideDefaultLogRepository", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;", "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;", "provideGson", "Lcom/google/gson/Gson;", "provideLogFlusher", "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "logUploader", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "executorService", "Ljava/util/concurrent/ScheduledExecutorService;", "provideLogFlusher$wiring", "provideLogInitializer", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "terminalLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "terminalLogWriter", "Lcom/stripe/logwriter/LogLevelAwareWriter;", "eventLoggerInitializer", "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;", "provideLogOperationCollector", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;", "gson", "provideLogOperationFactory", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "provideLoggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideTerminalLogger", "logRepository", "clock", "Lcom/stripe/time/Clock;", "operationFactory", "Lkotlin/jvm/JvmSuppressWildcards;", "operationCollector", "applicationTraceHelper", "provideTraceManager", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {LogWriterModule.class, LoggerExceptionListenerModule.class})
public final class JvmCoreLogModule {
    public static final JvmCoreLogModule INSTANCE = new JvmCoreLogModule();

    private JvmCoreLogModule() {
    }

    @Provides
    @Singleton
    public final LogFlusher provideLogFlusher$wiring(LogUploader logUploader, LogWriter logWriter, ScheduledExecutorService executorService) {
        Intrinsics.checkNotNullParameter(logUploader, "logUploader");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        return new DefaultLogFlusher(logUploader, logWriter, executorService, 0L, 8, null);
    }

    @Provides
    @Singleton
    public final TraceManager provideTraceManager() {
        return new TraceManager();
    }

    @Provides
    @Reusable
    public final Gson provideGson() {
        return new Gson();
    }

    @Provides
    @Singleton
    public final LoggerFactory provideLoggerFactory(LogWriter logWriter, SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(terminalLogger, "terminalLogger");
        return new DefaultLoggerFactory(logWriter, terminalLogger);
    }

    @Provides
    public final LogInitializer provideLogInitializer(TraceLogger traceLogger, MetricLogger metricLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger, LogLevelAwareWriter terminalLogWriter, StructuredEventLoggerInitializer eventLoggerInitializer) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(terminalLogger, "terminalLogger");
        Intrinsics.checkNotNullParameter(terminalLogWriter, "terminalLogWriter");
        Intrinsics.checkNotNullParameter(eventLoggerInitializer, "eventLoggerInitializer");
        return new DefaultLogInitializer(traceLogger, metricLogger, eventLoggerInitializer, terminalLogger, terminalLogWriter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    @Singleton
    public final LogRepository<DefaultLogOperation> provideDefaultLogRepository() {
        return new DefaultLogRepository(null, 1, 0 == true ? 1 : 0);
    }

    @Provides
    @Singleton
    public final LogOperationFactory<ApplicationTrace, DefaultLogOperation> provideLogOperationFactory(TraceLogger traceLogger, MetricLogger metricLogger, TraceManager traceManager, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        return new DefaultLogOperationFactory(traceLogger, metricLogger, traceManager, gson);
    }

    @Provides
    @Singleton
    public final LogOperationCollector<ApplicationTraceResult, DefaultLogOperation> provideLogOperationCollector(TraceLogger traceLogger, MetricLogger metricLogger, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        return new DefaultLogOperationCollector(traceLogger, metricLogger, gson);
    }

    @Provides
    @Singleton
    public final LoggerHelper<ApplicationTrace, ApplicationTraceResult> provideApplicationTraceHelper() {
        return new DefaultApplicationTraceHelper();
    }

    @Provides
    @Singleton
    public final SimpleLogger<ApplicationTrace, ApplicationTraceResult> provideTerminalLogger(LogWriter logWriter, LogRepository<DefaultLogOperation> logRepository, Clock clock, LogOperationFactory<ApplicationTrace, DefaultLogOperation> operationFactory, LogOperationCollector<ApplicationTraceResult, DefaultLogOperation> operationCollector, LoggerHelper<ApplicationTrace, ApplicationTraceResult> applicationTraceHelper) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(logRepository, "logRepository");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(operationFactory, "operationFactory");
        Intrinsics.checkNotNullParameter(operationCollector, "operationCollector");
        Intrinsics.checkNotNullParameter(applicationTraceHelper, "applicationTraceHelper");
        return new DefaultLogger("_", logWriter, logRepository, clock, operationFactory, operationCollector, applicationTraceHelper);
    }
}
