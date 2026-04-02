package com.stripe.jvmcore.logging.terminal.log;

import com.google.firebase.perf.metrics.resource.ResourceType;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.LogWriter;
import com.stripe.strings.StringsExtKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultSimpleLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0013\b\u0016\u0018\u0000 '*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001'B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJG\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010\u0012JE\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010\u0012JO\u0010\u0013\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00152.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\fH\u0016J\b\u0010\u0018\u001a\u00020\fH\u0016J\u001d\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\fH\u0016J5\u0010\u001e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00072\u001c\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000fH\u0002¢\u0006\u0002\u0010\u001fJG\u0010 \u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010\u0012J\b\u0010!\u001a\u00020\fH\u0016J\u001d\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010$JG\u0010%\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010\u0012JO\u0010%\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016¢\u0006\u0002\u0010&R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;", ResourceType.TRACE, "Lcom/stripe/loggingmodels/ApplicationTrace;", "TraceResult", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "className", "", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V", "d", "", "message", "keyValuePairs", "", "Lkotlin/Pair;", "", "(Ljava/lang/String;[Lkotlin/Pair;)V", "e", "t", "", "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V", "endAllOperations", "endLongRunningOperations", "endOperation", "applicationTraceResult", "identifier", "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V", "flushPending", "formatMessage", "(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;", "i", "onShutDown", "startOperation", "applicationTrace", "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class DefaultSimpleLogger<Trace extends ApplicationTrace, TraceResult extends ApplicationTraceResult> implements SimpleLogger<Trace, TraceResult> {
    private static final String TAG = "StripeTerminal";
    private final String className;
    private final LogWriter logWriter;

    public DefaultSimpleLogger(String className, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.className = className;
        this.logWriter = logWriter;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void startOperation(Trace applicationTrace, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTrace, "applicationTrace");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        w("Start operation " + identifier + ", does nothing", new Pair[0]);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void e(String message, Throwable t, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.e(TAG, message2, t);
        log(message2, LogLevel.ERROR, t);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void e(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.e(TAG, message2);
        SimpleLogger.log$default(this, message2, LogLevel.ERROR, null, 4, null);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void w(Throwable t, String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.w(TAG, message2, t);
        log(message2, LogLevel.WARNING, t);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void w(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.w(TAG, message2);
        SimpleLogger.log$default(this, message2, LogLevel.WARNING, null, 4, null);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void i(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.i(TAG, message2);
        SimpleLogger.log$default(this, message2, LogLevel.INFO, null, 4, null);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public synchronized void d(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        String message2 = formatMessage(message, keyValuePairs);
        this.logWriter.d(TAG, message2);
        SimpleLogger.log$default(this, message2, LogLevel.VERBOSE, null, 4, null);
    }

    private final String formatMessage(String message, Pair<String, ? extends Object>[] keyValuePairs) {
        StringBuilder sb = new StringBuilder("class=" + this.className);
        if (message != null && message.length() > 0) {
            sb.append(" message=").append(StringsExtKt.escape(message));
        }
        for (Pair<String, ? extends Object> pair : keyValuePairs) {
            sb.append(" ").append(StringsExtKt.escape(pair.component1())).append("=").append(StringsExtKt.escape(String.valueOf(pair.component2())));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endOperation(TraceResult applicationTraceResult, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTraceResult, "applicationTraceResult");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        w("End operation " + identifier + ", does nothing", new Pair[0]);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endAllOperations() {
        w("End all operations does nothing", new Pair[0]);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void flushPending() {
        w("Flush pending does nothing", new Pair[0]);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogLifecycleListener
    public void onShutDown() {
        w("Shut down does nothing", new Pair[0]);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endLongRunningOperations() {
        w("end long running operation does nothing", new Pair[0]);
    }
}
