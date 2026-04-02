package com.stripe.jvmcore.batchdispatcher.schedulers;

import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import com.sun.jna.Callback;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ExecutorScheduler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\f\u0010\u0011\u001a\u00020\r*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "delayMillis", "", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "executorService", "Ljava/util/concurrent/ScheduledExecutorService;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(JLcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)V", "future", "Ljava/util/concurrent/ScheduledFuture;", "", "scheduleNext", Callback.METHOD_NAME, "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;", "flushSync", "Companion", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExecutorScheduler implements Scheduler {
    private static final String TAG = "ExecutorScheduler";
    private final long delayMillis;
    private final ScheduledExecutorService executorService;
    private ScheduledFuture<Unit> future;
    private final LogWriter logWriter;
    private final CoroutineScope scope;

    public ExecutorScheduler(long j, LogWriter logWriter, ScheduledExecutorService executorService, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.delayMillis = j;
        this.logWriter = logWriter;
        this.executorService = executorService;
        this.scope = scope;
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Scheduler
    public void scheduleNext(final Scheduler.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ScheduledFuture<Unit> scheduledFuture = this.future;
        if (scheduledFuture != null && !scheduledFuture.isDone() && !scheduledFuture.isCancelled()) {
            LogWriter logWriter = this.logWriter;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            logWriter.w(TAG2, "Already scheduled, not scheduling again.");
            return;
        }
        this.future = this.executorService.schedule(new Callable() { // from class: com.stripe.jvmcore.batchdispatcher.schedulers.ExecutorScheduler$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ExecutorScheduler.scheduleNext$lambda$1(this.f$0, callback);
            }
        }, this.delayMillis, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit scheduleNext$lambda$1(ExecutorScheduler this$0, Scheduler.Callback callback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        this$0.flushSync(callback);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.schedulers.ExecutorScheduler$flushSync$1, reason: invalid class name */
    /* JADX INFO: compiled from: ExecutorScheduler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.schedulers.ExecutorScheduler$flushSync$1", f = "ExecutorScheduler.kt", i = {}, l = {47}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Scheduler.Callback $this_flushSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Scheduler.Callback callback, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_flushSync = callback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ExecutorScheduler.this.new AnonymousClass1(this.$this_flushSync, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ExecutorScheduler.this.future = null;
                this.label = 1;
                if (this.$this_flushSync.flush(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final void flushSync(Scheduler.Callback callback) {
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(callback, null), 3, null);
    }
}
