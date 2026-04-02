package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.jvmcore.logging.terminal.contracts.LogInitializer;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.StructuredEventLoggerInitializer;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogLevelAwareWriter;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultLogInitializer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "eventLoggerInitializer", "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;", "terminalLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "terminalLogWriter", "Lcom/stripe/logwriter/LogLevelAwareWriter;", "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;)V", "initialize", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLogInitializer implements LogInitializer {
    private final StructuredEventLoggerInitializer eventLoggerInitializer;
    private final MetricLogger metricLogger;
    private final LogLevelAwareWriter terminalLogWriter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger;
    private final TraceLogger traceLogger;

    public DefaultLogInitializer(TraceLogger traceLogger, MetricLogger metricLogger, StructuredEventLoggerInitializer eventLoggerInitializer, SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger, LogLevelAwareWriter terminalLogWriter) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(eventLoggerInitializer, "eventLoggerInitializer");
        Intrinsics.checkNotNullParameter(terminalLogger, "terminalLogger");
        Intrinsics.checkNotNullParameter(terminalLogWriter, "terminalLogWriter");
        this.traceLogger = traceLogger;
        this.metricLogger = metricLogger;
        this.eventLoggerInitializer = eventLoggerInitializer;
        this.terminalLogger = terminalLogger;
        this.terminalLogWriter = terminalLogWriter;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogInitializer
    public void initialize() {
        Log.INSTANCE.getLegacyProxySimpleLogger().setLogger(this.terminalLogger);
        Log.INSTANCE.getLegacyProxyLogWriter().setWriter(this.terminalLogWriter);
        this.traceLogger.init();
        this.metricLogger.init();
        this.eventLoggerInitializer.init();
    }
}
