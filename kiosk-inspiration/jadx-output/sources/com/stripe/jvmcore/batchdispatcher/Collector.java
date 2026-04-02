package com.stripe.jvmcore.batchdispatcher;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: BatchDispatcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0006J1\u0010\u0003\u001a\u00020\u00042\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00020\bH&¢\u0006\u0002\u0010\u000bJ$\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H¦@¢\u0006\u0002\u0010\u0011J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H¦@¢\u0006\u0002\u0010\u0013J\u000e\u0010\u0014\u001a\u00020\u0004H¦@¢\u0006\u0002\u0010\u0013J\u001c\u0010\u0015\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H¦@¢\u0006\u0002\u0010\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/Collector;", "T", "", "collect", "", "record", "(Ljava/lang/Object;)V", "recordSupplier", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "(Lkotlin/jvm/functions/Function1;)V", "handleExceptionOnBatch", "throwable", "", "batch", "", "(Ljava/lang/Throwable;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "peek", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pruneIfNeeded", "remove", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Collector<T> {
    void collect(T record);

    void collect(Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> recordSupplier);

    Object handleExceptionOnBatch(Throwable th, List<? extends T> list, Continuation<? super Unit> continuation);

    Object peek(Continuation<? super List<? extends T>> continuation);

    Object pruneIfNeeded(Continuation<? super Unit> continuation);

    Object remove(List<? extends T> list, Continuation<? super Unit> continuation);
}
