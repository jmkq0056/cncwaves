package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.logwriter.LogWriter;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: DefaultLoggerFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "terminalLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "create", "clazz", "Lkotlin/reflect/KClass;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLoggerFactory implements LoggerFactory {
    private final LogWriter logWriter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger;

    public DefaultLoggerFactory(LogWriter logWriter, SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(terminalLogger, "terminalLogger");
        this.logWriter = logWriter;
        this.terminalLogger = terminalLogger;
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.LoggerFactory
    public SimpleLogger<ApplicationTrace, ApplicationTraceResult> create(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String simpleName = clazz.getSimpleName();
        if (simpleName == null) {
            simpleName = clazz.toString();
        }
        return new Log(simpleName, this.logWriter, this.terminalLogger);
    }
}
