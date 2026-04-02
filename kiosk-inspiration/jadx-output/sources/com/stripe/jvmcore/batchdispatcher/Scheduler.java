package com.stripe.jvmcore.batchdispatcher;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: BatchDispatcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "", "scheduleNext", "", com.sun.jna.Callback.METHOD_NAME, "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;", "Callback", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Scheduler {

    /* JADX INFO: compiled from: BatchDispatcher.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;", "", "flush", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Callback {
        Object flush(Continuation<? super Unit> continuation);
    }

    void scheduleNext(Callback callback);
}
