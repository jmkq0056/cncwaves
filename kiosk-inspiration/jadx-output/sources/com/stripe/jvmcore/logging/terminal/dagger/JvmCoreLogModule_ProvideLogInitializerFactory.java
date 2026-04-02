package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.LogInitializer;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.StructuredEventLoggerInitializer;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogLevelAwareWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmCoreLogModule_ProvideLogInitializerFactory implements Factory<LogInitializer> {
    private final Provider<StructuredEventLoggerInitializer> eventLoggerInitializerProvider;
    private final Provider<MetricLogger> metricLoggerProvider;
    private final Provider<LogLevelAwareWriter> terminalLogWriterProvider;
    private final Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> terminalLoggerProvider;
    private final Provider<TraceLogger> traceLoggerProvider;

    public JvmCoreLogModule_ProvideLogInitializerFactory(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> provider3, Provider<LogLevelAwareWriter> provider4, Provider<StructuredEventLoggerInitializer> provider5) {
        this.traceLoggerProvider = provider;
        this.metricLoggerProvider = provider2;
        this.terminalLoggerProvider = provider3;
        this.terminalLogWriterProvider = provider4;
        this.eventLoggerInitializerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public LogInitializer get() {
        return provideLogInitializer(this.traceLoggerProvider.get(), this.metricLoggerProvider.get(), this.terminalLoggerProvider.get(), this.terminalLogWriterProvider.get(), this.eventLoggerInitializerProvider.get());
    }

    public static JvmCoreLogModule_ProvideLogInitializerFactory create(Provider<TraceLogger> provider, Provider<MetricLogger> provider2, Provider<SimpleLogger<ApplicationTrace, ApplicationTraceResult>> provider3, Provider<LogLevelAwareWriter> provider4, Provider<StructuredEventLoggerInitializer> provider5) {
        return new JvmCoreLogModule_ProvideLogInitializerFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static LogInitializer provideLogInitializer(TraceLogger traceLogger, MetricLogger metricLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger, LogLevelAwareWriter logLevelAwareWriter, StructuredEventLoggerInitializer structuredEventLoggerInitializer) {
        return (LogInitializer) Preconditions.checkNotNullFromProvides(JvmCoreLogModule.INSTANCE.provideLogInitializer(traceLogger, metricLogger, simpleLogger, logLevelAwareWriter, structuredEventLoggerInitializer));
    }
}
