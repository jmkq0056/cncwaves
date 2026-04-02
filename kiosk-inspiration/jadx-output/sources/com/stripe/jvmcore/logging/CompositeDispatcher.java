package com.stripe.jvmcore.logging;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CompositeDispatcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B)\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0096@¢\u0006\u0002\u0010\fR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/logging/CompositeDispatcher;", "T", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "clientLogger", "gator", "observabilityFeatureFlags", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "(Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;)V", "dispatch", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "batch", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompositeDispatcher<T> implements Dispatcher<T> {
    private final Dispatcher<T> clientLogger;
    private final Dispatcher<T> gator;
    private final ObservabilityFeatureFlags observabilityFeatureFlags;

    public CompositeDispatcher(Dispatcher<T> clientLogger, Dispatcher<T> gator, ObservabilityFeatureFlags observabilityFeatureFlags) {
        Intrinsics.checkNotNullParameter(clientLogger, "clientLogger");
        Intrinsics.checkNotNullParameter(gator, "gator");
        Intrinsics.checkNotNullParameter(observabilityFeatureFlags, "observabilityFeatureFlags");
        this.clientLogger = clientLogger;
        this.gator = gator;
        this.observabilityFeatureFlags = observabilityFeatureFlags;
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Dispatcher
    public Object dispatch(List<? extends T> list, Continuation<? super Dispatcher.Result> continuation) {
        if (this.observabilityFeatureFlags.getEnableClientLoggerDispatcher()) {
            return this.clientLogger.dispatch(list, continuation);
        }
        return this.gator.dispatch(list, continuation);
    }
}
