package com.stripe.wrappers;

import android.os.Handler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandlerWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/wrappers/HandlerWrapper;", "Lcom/stripe/wrappers/MessageQueueExecutor;", "handler", "Landroid/os/Handler;", "(Landroid/os/Handler;)V", "execute", "", "command", "Ljava/lang/Runnable;", "post", "", "runnable", "postDelayed", "delayMillis", "", "android-wrappers-impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class HandlerWrapper implements MessageQueueExecutor {
    private final Handler handler;

    public HandlerWrapper(Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handler = handler;
    }

    @Override // com.stripe.wrappers.MessageQueueExecutor
    public boolean post(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        return this.handler.post(runnable);
    }

    @Override // com.stripe.wrappers.MessageQueueExecutor
    public void postDelayed(Runnable runnable, long delayMillis) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.handler.postDelayed(runnable, delayMillis);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        post(command);
    }
}
