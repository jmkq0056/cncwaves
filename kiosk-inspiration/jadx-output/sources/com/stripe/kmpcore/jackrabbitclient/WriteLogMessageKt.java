package com.stripe.kmpcore.jackrabbitclient;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.log.Log;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: WriteLogMessage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\r"}, d2 = {"logger", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "getLogger", "()Lcom/stripe/jvmcore/logging/terminal/log/Log;", "log", "", FirebaseAnalytics.Param.SOURCE, "Lkotlin/reflect/KClass;", "", "message", "", "logLevel", "Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;", "jackrabbitclient_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class WriteLogMessageKt {
    private static final Log logger = Log.INSTANCE.getLogger(JackrabbitClient.class);

    /* JADX INFO: compiled from: WriteLogMessage.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.WARN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Log getLogger() {
        return logger;
    }

    public static final void log(KClass<? extends Object> source, String message, LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        int i = WhenMappings.$EnumSwitchMapping$0[logLevel.ordinal()];
        if (i == 1) {
            logger.i(message, new Pair[0]);
        } else if (i == 2) {
            logger.w(message, new Pair[0]);
        } else {
            if (i != 3) {
                return;
            }
            logger.e(message, new Pair[0]);
        }
    }
}
