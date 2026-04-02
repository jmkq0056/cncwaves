package com.stripe.loggingmodels;

import kotlin.Metadata;

/* JADX INFO: compiled from: LoggerExceptionListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u001c\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u000b\u001a\u00060\fj\u0002`\rH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/LoggerExceptionListener;", "", "onDispatchExceptionError", "", "fileName", "", "throwable", "", "batchSize", "", "onFileOutOfMemoryError", "outOfMemoryError", "Ljava/lang/OutOfMemoryError;", "Lcom/stripe/loggingmodels/OutOfMemoryError;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LoggerExceptionListener {
    void onDispatchExceptionError(String fileName, Throwable throwable, int batchSize);

    void onFileOutOfMemoryError(String fileName, OutOfMemoryError outOfMemoryError);
}
