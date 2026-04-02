package com.stripe.wrappers;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandlerWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u0003¨\u0006\u0006"}, d2 = {"executor", "Lcom/stripe/wrappers/MessageQueueExecutor;", "looper", "Landroid/os/Looper;", "handler", "Landroid/os/Handler;", "android-wrappers-impl_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class HandlerWrapperKt {
    public static final MessageQueueExecutor executor(Looper looper) {
        Intrinsics.checkNotNullParameter(looper, "looper");
        return new HandlerWrapper(new Handler(looper));
    }

    public static final Handler handler(Looper looper) {
        Intrinsics.checkNotNullParameter(looper, "looper");
        return new Handler(looper);
    }

    public static /* synthetic */ Handler handler$default(Looper looper, int i, Object obj) {
        if ((i & 1) != 0) {
            looper = Looper.getMainLooper();
            Intrinsics.checkNotNullExpressionValue(looper, "getMainLooper(...)");
        }
        return handler(looper);
    }
}
