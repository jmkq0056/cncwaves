package com.stripe.kmpcore.jackrabbitclient;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\u0007\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\b\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, d2 = {"logError", "", FirebaseAnalytics.Param.SOURCE, "Lkotlin/reflect/KClass;", "", "message", "", "logInfo", "logWarn", "jackrabbitclient_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LoggerKt {
    public static final void logInfo(KClass<? extends Object> source, String message) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(message, "message");
        WriteLogMessageKt.log(source, message, LogLevel.INFO);
    }

    public static final void logWarn(KClass<? extends Object> source, String message) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(message, "message");
        WriteLogMessageKt.log(source, message, LogLevel.WARN);
    }

    public static final void logError(KClass<? extends Object> source, String message) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(message, "message");
        WriteLogMessageKt.log(source, message, LogLevel.ERROR);
    }
}
