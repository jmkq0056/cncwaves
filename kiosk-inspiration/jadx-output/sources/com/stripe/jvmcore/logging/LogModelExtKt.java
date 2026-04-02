package com.stripe.jvmcore.logging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.proto.model.observability.schema.crash.Crash;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LogModelExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0001H\u0002\u001a\u001a\u0010\b\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"MAX_MESSAGE_LENGTH", "", "MAX_STACK_TRACE_LENGTH", "TRUNCATED_LINE", "", "truncateString", TypedValues.Custom.S_STRING, "maxLength", "toLogModel", "Lcom/stripe/proto/model/observability/schema/crash/Crash;", "", "isForeground", "", "thread", "Ljava/lang/Thread;", "logging"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LogModelExtKt {
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_STACK_TRACE_LENGTH = 65536;
    public static final String TRUNCATED_LINE = "\n<truncated>";

    public static final Crash toLogModel(Throwable th, boolean z, Thread thread) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(thread, "thread");
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        String strTruncateString = truncateString(message, 65536);
        String strTruncateString2 = truncateString(ExceptionsKt.stackTraceToString(th), 65536);
        String name = thread.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return new Crash(strTruncateString, strTruncateString2, name, z, null, 16, null);
    }

    private static final String truncateString(String str, int i) {
        if (str.length() <= i) {
            return str;
        }
        String str2 = StringsKt.take(str, i - 12) + TRUNCATED_LINE;
        Intrinsics.checkNotNullExpressionValue(str2, "toString(...)");
        return str2;
    }
}
