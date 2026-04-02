package com.stripe.spos.sentry.http;

import java.lang.Thread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: compiled from: ErrorReporter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"registerAsUncaughtExceptionHandler", "", "Lcom/stripe/spos/sentry/http/ErrorReporter;", "toCoroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "sentry-http"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ErrorReporterKt {
    public static final void registerAsUncaughtExceptionHandler(final ErrorReporter errorReporter) {
        Intrinsics.checkNotNullParameter(errorReporter, "<this>");
        final Thread.UncaughtExceptionHandler uncaughtExceptionHandler = Thread.currentThread().getUncaughtExceptionHandler();
        if (uncaughtExceptionHandler == null) {
            uncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        }
        if (uncaughtExceptionHandler == null) {
            uncaughtExceptionHandler = new Thread.UncaughtExceptionHandler() { // from class: com.stripe.spos.sentry.http.ErrorReporterKt$$ExternalSyntheticLambda0
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    th.printStackTrace();
                }
            };
        }
        Thread.currentThread().setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.stripe.spos.sentry.http.ErrorReporterKt$$ExternalSyntheticLambda1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                ErrorReporterKt.registerAsUncaughtExceptionHandler$lambda$1(errorReporter, uncaughtExceptionHandler, thread, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerAsUncaughtExceptionHandler$lambda$1(ErrorReporter this_registerAsUncaughtExceptionHandler, Thread.UncaughtExceptionHandler currentHandler, Thread thread, Throwable th) {
        Intrinsics.checkNotNullParameter(this_registerAsUncaughtExceptionHandler, "$this_registerAsUncaughtExceptionHandler");
        Intrinsics.checkNotNullParameter(currentHandler, "$currentHandler");
        Intrinsics.checkNotNull(th);
        this_registerAsUncaughtExceptionHandler.mo498blockingReportErrorgIAlus(th, false);
        currentHandler.uncaughtException(thread, th);
    }

    public static final CoroutineExceptionHandler toCoroutineExceptionHandler(ErrorReporter errorReporter) {
        Intrinsics.checkNotNullParameter(errorReporter, "<this>");
        return new ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, errorReporter);
    }
}
