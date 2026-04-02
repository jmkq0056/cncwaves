package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.ConsoleLogWriter;
import com.stripe.logwriter.DefaultProxyLogWriter;
import com.stripe.logwriter.LogWriter;
import com.stripe.logwriter.PlatformLogWriter;
import com.stripe.logwriter.ProxyLogWriter;
import com.stripe.logwriter.TerminalLogWriter;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Log.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001(B/\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\tj\u0002`\n¢\u0006\u0002\u0010\u000bJG\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010\u0013JE\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010\u0013JO\u0010\u0014\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00162.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\rH\u0016J\b\u0010\u0019\u001a\u00020\rH\u0016J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016JG\u0010\u001e\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010\u0013J$\u0010\u001f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010#\u001a\u00020\rH\u0016J\u0018\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0005H\u0016JG\u0010&\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010\u0013JO\u0010&\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016¢\u0006\u0002\u0010'R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\tj\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Log;", "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "className", "", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "terminalLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "d", "", "message", "keyValuePairs", "", "Lkotlin/Pair;", "", "(Ljava/lang/String;[Lkotlin/Pair;)V", "e", "t", "", "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V", "endAllOperations", "endLongRunningOperations", "endOperation", "applicationTraceResult", "identifier", "flushPending", "i", "log", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "throwable", "onShutDown", "startOperation", "applicationTrace", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Log extends DefaultSimpleLogger<ApplicationTrace, ApplicationTraceResult> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ProxyLogWriter legacyProxyLogWriter;
    private static final ProxySimpleLogger legacyProxySimpleLogger;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Log(String className, LogWriter logWriter, SimpleLogger<ApplicationTrace, ApplicationTraceResult> terminalLogger) {
        super(className, logWriter);
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(terminalLogger, "terminalLogger");
        this.terminalLogger = terminalLogger;
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void startOperation(ApplicationTrace applicationTrace, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTrace, "applicationTrace");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        synchronized (INSTANCE) {
            this.terminalLogger.startOperation(applicationTrace, identifier);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endOperation(ApplicationTraceResult applicationTraceResult, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTraceResult, "applicationTraceResult");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        synchronized (INSTANCE) {
            this.terminalLogger.endOperation(applicationTraceResult, identifier);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void w(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.w(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void w(Throwable t, String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.w(t, message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void i(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.i(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void d(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.d(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void e(String message, Throwable t, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.e(message, t, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void e(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        synchronized (INSTANCE) {
            super.e(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endAllOperations() {
        synchronized (INSTANCE) {
            this.terminalLogger.endAllOperations();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void flushPending() {
        synchronized (INSTANCE) {
            this.terminalLogger.flushPending();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogLifecycleListener
    public void onShutDown() {
        synchronized (INSTANCE) {
            this.terminalLogger.onShutDown();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.SimpleLogger
    public void log(String message, LogLevel logLevel, Throwable throwable) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        synchronized (INSTANCE) {
            this.terminalLogger.log(message, logLevel, throwable);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.DefaultSimpleLogger, com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endLongRunningOperations() {
        synchronized (INSTANCE) {
            this.terminalLogger.endLongRunningOperations();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: Log.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\f\"\u0006\b\u0000\u0010\r\u0018\u0001H\u0086\bJ\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;", "", "()V", "legacyProxyLogWriter", "Lcom/stripe/logwriter/ProxyLogWriter;", "getLegacyProxyLogWriter", "()Lcom/stripe/logwriter/ProxyLogWriter;", "legacyProxySimpleLogger", "Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;", "getLegacyProxySimpleLogger", "()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;", "getLogger", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "T", "clazz", "Ljava/lang/Class;", "setUpForTest", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ProxyLogWriter getLegacyProxyLogWriter() {
            return Log.legacyProxyLogWriter;
        }

        public final ProxySimpleLogger getLegacyProxySimpleLogger() {
            return Log.legacyProxySimpleLogger;
        }

        public final /* synthetic */ Log getLogger(Class clazz) {
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            String simpleName = clazz.getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            return new Log(simpleName, getLegacyProxyLogWriter(), getLegacyProxySimpleLogger());
        }

        public final /* synthetic */ <T> Log getLogger() {
            Intrinsics.reifiedOperationMarker(4, "T");
            return getLogger(Object.class);
        }

        public final void setUpForTest() {
            getLegacyProxyLogWriter().setWriter(ConsoleLogWriter.INSTANCE);
        }
    }

    static {
        DefaultProxyLogWriter defaultProxyLogWriter = new DefaultProxyLogWriter(new TerminalLogWriter(LogLevel.VERBOSE, PlatformLogWriter.INSTANCE));
        legacyProxyLogWriter = defaultProxyLogWriter;
        legacyProxySimpleLogger = new ProxySimpleLogger(new DefaultSimpleLogger("_", defaultProxyLogWriter));
    }
}
