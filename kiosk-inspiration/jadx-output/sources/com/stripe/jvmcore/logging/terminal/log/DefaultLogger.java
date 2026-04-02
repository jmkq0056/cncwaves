package com.stripe.jvmcore.logging.terminal.log;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.LogWriter;
import com.stripe.time.Clock;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\u0018\u0000 )*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u0004*\u000e\b\u0002\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00050\u00062\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0007:\u0001)Bg\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0011\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0013\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\u001d\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00028\u00012\u0006\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0018H\u0016J$\u0010\u001f\u001a\u00020\u00182\b\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020\u0018H\u0016J\u001d\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0002\u0010(R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;", "T", "Lcom/stripe/loggingmodels/ApplicationTrace;", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lcom/stripe/loggingmodels/ApplicationTraceResult;", PrinterTextParser.TAGS_ALIGN_LEFT, "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;", "className", "", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "repository", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;", "clock", "Lcom/stripe/time/Clock;", "operationFactory", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;", "operationCollector", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;", "helper", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;", "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)V", "endAllOperations", "", "endLongRunningOperations", "endOperation", "applicationTraceResult", "identifier", "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V", "flushPending", "log", "message", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "throwable", "", "onShutDown", "startOperation", "applicationTrace", "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLogger<T extends ApplicationTrace, R extends ApplicationTraceResult, L extends LogOperation<L>> extends DefaultSimpleLogger<T, R> {
    private static final String FLUSH_IDENTIFIER = "flush_operation";
    private final Clock clock;
    private final LoggerHelper<T, R> helper;
    private final LogOperationCollector<R, L> operationCollector;
    private final LogOperationFactory<T, L> operationFactory;
    private final LogRepository<L> repository;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DefaultLogger(String className, LogWriter logWriter, LogRepository<L> repository, Clock clock, LogOperationFactory<? super T, L> operationFactory, LogOperationCollector<? super R, L> operationCollector, LoggerHelper<? extends T, ? extends R> helper) {
        super(className, logWriter);
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(operationFactory, "operationFactory");
        Intrinsics.checkNotNullParameter(operationCollector, "operationCollector");
        Intrinsics.checkNotNullParameter(helper, "helper");
        this.repository = repository;
        this.clock = clock;
        this.operationFactory = operationFactory;
        this.operationCollector = operationCollector;
        this.helper = helper;
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public synchronized void startOperation(T applicationTrace, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTrace, "applicationTrace");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        if (this.repository.operationExists(identifier)) {
            endOperation(this.helper.duplicateTraceResult(identifier), identifier);
        }
        this.repository.add(identifier, this.operationFactory.create(applicationTrace));
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public synchronized void endOperation(R applicationTraceResult, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTraceResult, "applicationTraceResult");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        LogOperation logOperationRemove = this.repository.remove(identifier);
        if (logOperationRemove != null) {
            this.operationCollector.collect(applicationTraceResult, logOperationRemove, true);
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public synchronized void endAllOperations() {
        Iterator it = this.repository.removeAll().iterator();
        while (it.hasNext()) {
            this.operationCollector.collect(this.helper.getInterruptedTraceResult(), (LogOperation) it.next(), true);
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.SimpleLogger
    public synchronized void log(String message, LogLevel logLevel, Throwable throwable) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.repository.addLog(message, throwable, logLevel, this.clock.currentTimeMillis());
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public synchronized void flushPending() {
        if (this.repository.hasPendingLogs() && !this.repository.hasSavedOperations()) {
            startOperation(this.helper.getFlushTrace(), FLUSH_IDENTIFIER);
            endOperation(this.helper.getFlushTraceResult(), FLUSH_IDENTIFIER);
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogLifecycleListener
    public synchronized void onShutDown() {
        flushPending();
        endAllOperations();
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public synchronized void endLongRunningOperations() {
        Iterator it = this.repository.getLongRunningOperations(this.clock.currentTimeMillis()).iterator();
        while (it.hasNext()) {
            this.operationCollector.collect(this.helper.getFlushTraceResult(), (LogOperation) it.next(), false);
        }
    }
}
