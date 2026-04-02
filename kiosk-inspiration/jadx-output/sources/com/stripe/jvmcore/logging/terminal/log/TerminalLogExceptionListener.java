package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LoggerExceptionListener;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: TerminalLogExceptionListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013H\u0016R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "log", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onDispatchExceptionError", "", "fileName", "", "throwable", "", "batchSize", "", "onFileOutOfMemoryError", "outOfMemoryError", "Ljava/lang/OutOfMemoryError;", "Lcom/stripe/loggingmodels/OutOfMemoryError;", "Companion", "OutOfMemoryTrace", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalLogExceptionListener implements LoggerExceptionListener {
    public static final String BATCH_SIZE_TAG = "batch_size_tag";
    public static final String FILE_NAME_TAG = "file_name";
    public static final String OOM_LOG_IDENTIFIER = "oom_error";
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> log;

    public TerminalLogExceptionListener(SimpleLogger<ApplicationTrace, ApplicationTraceResult> log) {
        Intrinsics.checkNotNullParameter(log, "log");
        this.log = log;
    }

    @Override // com.stripe.loggingmodels.LoggerExceptionListener
    public void onFileOutOfMemoryError(String fileName, OutOfMemoryError outOfMemoryError) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(outOfMemoryError, "outOfMemoryError");
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.log;
        simpleLogger.startOperation(new OutOfMemoryTrace(fileName), OOM_LOG_IDENTIFIER);
        simpleLogger.log("Out of memory error in logger", LogLevel.NONE, outOfMemoryError);
        simpleLogger.endOperation(ApplicationTraceResult.INSTANCE.success(), OOM_LOG_IDENTIFIER);
    }

    @Override // com.stripe.loggingmodels.LoggerExceptionListener
    public void onDispatchExceptionError(String fileName, Throwable throwable, int batchSize) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.log.log("Error while dispatching log entries " + fileName + TokenParser.SP + batchSize, LogLevel.NONE, throwable);
    }

    /* JADX INFO: compiled from: TerminalLogExceptionListener.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$OutOfMemoryTrace;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "fileName", "", "(Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OutOfMemoryTrace extends ApplicationTrace {
        private final String fileName;

        public static /* synthetic */ OutOfMemoryTrace copy$default(OutOfMemoryTrace outOfMemoryTrace, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = outOfMemoryTrace.fileName;
            }
            return outOfMemoryTrace.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getFileName() {
            return this.fileName;
        }

        public final OutOfMemoryTrace copy(String fileName) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            return new OutOfMemoryTrace(fileName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OutOfMemoryTrace) && Intrinsics.areEqual(this.fileName, ((OutOfMemoryTrace) other).fileName);
        }

        public int hashCode() {
            return this.fileName.hashCode();
        }

        public String toString() {
            return "OutOfMemoryTrace(fileName=" + this.fileName + ')';
        }

        public final String getFileName() {
            return this.fileName;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OutOfMemoryTrace(String fileName) {
            super("ApplicationTrace", TerminalLogExceptionListener.OOM_LOG_IDENTIFIER, MapsKt.mapOf(TuplesKt.to(TerminalLogExceptionListener.FILE_NAME_TAG, fileName)));
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            this.fileName = fileName;
        }
    }
}
