package com.stripe.logwriter;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.loggingmodels.LogLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalLogWriter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J$\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J)\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00032\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u0015¢\u0006\u0002\b\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J$\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/stripe/logwriter/TerminalLogWriter;", "Lcom/stripe/logwriter/LogLevelAwareWriter;", "minLogLevel", "Lcom/stripe/loggingmodels/LogLevel;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/LogWriter;)V", "getMinLogLevel", "()Lcom/stripe/loggingmodels/LogLevel;", "d", "", "tag", "", "message", "e", "throwable", "", "i", "logWithMinLevel", FirebaseAnalytics.Param.LEVEL, FirebaseAnalytics.Param.METHOD, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "v", "w", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalLogWriter implements LogLevelAwareWriter {
    private final LogWriter logWriter;
    private final LogLevel minLogLevel;

    public TerminalLogWriter(LogLevel minLogLevel, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(minLogLevel, "minLogLevel");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.minLogLevel = minLogLevel;
        this.logWriter = logWriter;
    }

    @Override // com.stripe.logwriter.LogLevelAwareWriter
    public LogLevel getMinLogLevel() {
        return this.minLogLevel;
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(final String tag, final String message, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        logWithMinLevel(LogLevel.ERROR, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.e.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.e(tag, message, throwable);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel(LogLevel.ERROR, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.e.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.e(tag, message);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(final String tag, final String message, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        logWithMinLevel(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.w.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.w(tag, message, throwable);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.w.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.w(tag, message);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(final String tag, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        logWithMinLevel(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.w.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.w(tag, throwable);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void i(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel(LogLevel.INFO, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.i.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.i(tag, message);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void d(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel(LogLevel.VERBOSE, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.d.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.d(tag, message);
            }
        });
    }

    @Override // com.stripe.logwriter.LogWriter
    public void v(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel(LogLevel.VERBOSE, new Function1<LogWriter, Unit>() { // from class: com.stripe.logwriter.TerminalLogWriter.v.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LogWriter logWriter) {
                invoke2(logWriter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LogWriter logWithMinLevel) {
                Intrinsics.checkNotNullParameter(logWithMinLevel, "$this$logWithMinLevel");
                logWithMinLevel.v(tag, message);
            }
        });
    }

    private final void logWithMinLevel(LogLevel level, Function1<? super LogWriter, Unit> method) {
        if (getMinLogLevel().compareTo(level) >= 0) {
            method.invoke(this.logWriter);
        }
    }
}
