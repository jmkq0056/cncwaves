package com.stripe.core.stripeterminal.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.LogWriter;
import com.stripe.logwriter.PlatformLogWriter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidLog.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\"\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J.\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00042\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u001b¢\u0006\u0002\b\u001cH\u0001¢\u0006\u0002\b\u001dJ\u0016\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\"\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0000@\u0000X\u0081\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Lcom/stripe/core/stripeterminal/log/AndroidLog;", "", "()V", "minLogLevel", "Lcom/stripe/loggingmodels/LogLevel;", "getMinLogLevel", "()Lcom/stripe/loggingmodels/LogLevel;", "setMinLogLevel", "(Lcom/stripe/loggingmodels/LogLevel;)V", "writer", "Lcom/stripe/logwriter/LogWriter;", "getWriter$stripeterminal_release", "()Lcom/stripe/logwriter/LogWriter;", "setWriter$stripeterminal_release", "(Lcom/stripe/logwriter/LogWriter;)V", "d", "", "tag", "", "message", "e", "throwable", "", "i", "logWithMinLevel", FirebaseAnalytics.Param.LEVEL, FirebaseAnalytics.Param.METHOD, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "logWithMinLevel$stripeterminal_release", "v", "w", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AndroidLog {
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static LogLevel minLogLevel = LogLevel.WARNING;
    private static LogWriter writer = PlatformLogWriter.INSTANCE;

    private AndroidLog() {
    }

    public final LogLevel getMinLogLevel() {
        return minLogLevel;
    }

    public final void setMinLogLevel(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "<set-?>");
        minLogLevel = logLevel;
    }

    public final LogWriter getWriter$stripeterminal_release() {
        return writer;
    }

    public final void setWriter$stripeterminal_release(LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(logWriter, "<set-?>");
        writer = logWriter;
    }

    public final void e(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel$stripeterminal_release(LogLevel.ERROR, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.e.1
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

    public final void e(final String tag, final String message, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        logWithMinLevel$stripeterminal_release(LogLevel.ERROR, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.e.2
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

    public final void w(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel$stripeterminal_release(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.w.1
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

    public final void w(final String tag, final String message, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        logWithMinLevel$stripeterminal_release(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.w.2
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

    public final void w(final String tag, final Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        logWithMinLevel$stripeterminal_release(LogLevel.WARNING, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.w.3
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

    public final void i(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel$stripeterminal_release(LogLevel.INFO, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.i.1
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

    public final void d(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel$stripeterminal_release(LogLevel.VERBOSE, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.d.1
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

    public final void v(final String tag, final String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        logWithMinLevel$stripeterminal_release(LogLevel.VERBOSE, new Function1<LogWriter, Unit>() { // from class: com.stripe.core.stripeterminal.log.AndroidLog.v.1
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

    public final void logWithMinLevel$stripeterminal_release(LogLevel level, Function1<? super LogWriter, Unit> method) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(method, "method");
        if (minLogLevel.compareTo(level) >= 0) {
            method.invoke(writer);
        }
    }
}
