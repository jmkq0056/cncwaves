package com.stripe.spos.sentry.http;

import kotlin.Metadata;

/* JADX INFO: compiled from: ErrorReporter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J-\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH&ø\u0001\u0002\u0082\u0002\u0011\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/spos/sentry/http/ErrorReporter;", "", "blockingReportError", "Lkotlin/Result;", "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;", "error", "", "handled", "", "blockingReportError-gIAlu-s", "(Ljava/lang/Throwable;Z)Ljava/lang/Object;", "reportErrorAsync", "", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ErrorReporter {
    /* JADX INFO: renamed from: blockingReportError-gIAlu-s, reason: not valid java name */
    Object mo498blockingReportErrorgIAlus(Throwable error, boolean handled);

    void reportErrorAsync(Throwable error, boolean handled);

    /* JADX INFO: renamed from: blockingReportError-gIAlu-s$default, reason: not valid java name */
    static /* synthetic */ Object m497blockingReportErrorgIAlus$default(ErrorReporter errorReporter, Throwable th, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: blockingReportError-gIAlu-s");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return errorReporter.mo498blockingReportErrorgIAlus(th, z);
    }

    static /* synthetic */ void reportErrorAsync$default(ErrorReporter errorReporter, Throwable th, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportErrorAsync");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        errorReporter.reportErrorAsync(th, z);
    }
}
