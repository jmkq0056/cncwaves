package com.stripe.core.stripeterminal.storage;

import com.stripe.loggingmodels.LogLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogLevelConverters.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;", "", "()V", "fromLogLevel", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "toLogLevel", "logLevelInt", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LogLevelConverters {
    public final int fromLogLevel(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return logLevel.ordinal();
    }

    public final LogLevel toLogLevel(int logLevelInt) {
        if (logLevelInt == 0) {
            return LogLevel.NONE;
        }
        if (logLevelInt == 1) {
            return LogLevel.ERROR;
        }
        if (logLevelInt == 2) {
            return LogLevel.WARNING;
        }
        if (logLevelInt == 3) {
            return LogLevel.INFO;
        }
        return LogLevel.VERBOSE;
    }
}
