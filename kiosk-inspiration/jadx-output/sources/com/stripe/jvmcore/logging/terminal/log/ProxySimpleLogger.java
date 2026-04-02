package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxySimpleLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\u0010\u0005JG\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010\u0011JE\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010\u0011JO\u0010\u0012\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0013\u001a\u00020\u00142.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\nH\u0016J\b\u0010\u0017\u001a\u00020\nH\u0016J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\fH\u0016J\b\u0010\u001b\u001a\u00020\nH\u0016JG\u0010\u001c\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010\u0011J$\u0010\u001d\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010!\u001a\u00020\nH\u0016J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\fH\u0016JG\u0010$\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010\u0011JO\u0010$\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u000b\u001a\u0004\u0018\u00010\f2.\u0010\r\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0002\u0010%R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006&"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "logger", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "setLogger", "d", "", "message", "", "keyValuePairs", "", "Lkotlin/Pair;", "", "(Ljava/lang/String;[Lkotlin/Pair;)V", "e", "t", "", "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V", "endAllOperations", "endLongRunningOperations", "endOperation", "applicationTraceResult", "identifier", "flushPending", "i", "log", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "throwable", "onShutDown", "startOperation", "applicationTrace", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxySimpleLogger implements SimpleLogger<ApplicationTrace, ApplicationTraceResult> {
    private SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public ProxySimpleLogger(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final SimpleLogger<ApplicationTrace, ApplicationTraceResult> getLogger() {
        return this.logger;
    }

    public final void setLogger(SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger) {
        Intrinsics.checkNotNullParameter(simpleLogger, "<set-?>");
        this.logger = simpleLogger;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogLifecycleListener
    public void onShutDown() {
        this.logger.onShutDown();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void startOperation(ApplicationTrace applicationTrace, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTrace, "applicationTrace");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.logger.startOperation(applicationTrace, identifier);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endOperation(ApplicationTraceResult applicationTraceResult, String identifier) {
        Intrinsics.checkNotNullParameter(applicationTraceResult, "applicationTraceResult");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.logger.endOperation(applicationTraceResult, identifier);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endAllOperations() {
        this.logger.endAllOperations();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void endLongRunningOperations() {
        this.logger.endLongRunningOperations();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationController
    public void flushPending() {
        this.logger.flushPending();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void w(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.w(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void i(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.i(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void d(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.d(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void e(String message, Throwable t, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.e(message, t, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void e(String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.e(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.Logger
    public void w(Throwable t, String message, Pair<String, ? extends Object>... keyValuePairs) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
        this.logger.w(t, message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.SimpleLogger
    public void log(String message, LogLevel logLevel, Throwable throwable) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.logger.log(message, logLevel, throwable);
    }
}
