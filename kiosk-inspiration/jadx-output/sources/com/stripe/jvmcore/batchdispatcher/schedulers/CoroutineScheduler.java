package com.stripe.jvmcore.batchdispatcher.schedulers;

import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: CoroutineScheduler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "delayMillis", "", "workScope", "Lkotlinx/coroutines/CoroutineScope;", "main", "Lkotlinx/coroutines/CoroutineDispatcher;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(JLkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)V", Callback.METHOD_NAME, "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;", "job", "Lkotlinx/coroutines/Job;", "launchDelayJob", "scheduleNext", "", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CoroutineScheduler implements Scheduler {
    private Scheduler.Callback callback;
    private final long delayMillis;
    private Job job;
    private final LogWriter logWriter;
    private final CoroutineDispatcher main;
    private final CoroutineScope workScope;

    public CoroutineScheduler(long j, CoroutineScope workScope, CoroutineDispatcher main, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(workScope, "workScope");
        Intrinsics.checkNotNullParameter(main, "main");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.delayMillis = j;
        this.workScope = workScope;
        this.main = main;
        this.logWriter = logWriter;
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Scheduler
    public synchronized void scheduleNext(Scheduler.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.callback != null) {
            LogWriter logWriter = this.logWriter;
            String str = CoroutineSchedulerKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            logWriter.w(str, "Already scheduled, not scheduling again.");
            return;
        }
        this.callback = callback;
        this.job = launchDelayJob();
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler$launchDelayJob$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler$launchDelayJob$1", f = "CoroutineScheduler.kt", i = {}, l = {36, 42}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CoroutineScheduler.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
        
            if (r7.flush(r6) == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.util.concurrent.CancellationException -> L52
                goto L66
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.util.concurrent.CancellationException -> L52
                goto L33
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler r7 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.this     // Catch: java.util.concurrent.CancellationException -> L52
                long r4 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.access$getDelayMillis$p(r7)     // Catch: java.util.concurrent.CancellationException -> L52
                r7 = r6
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7     // Catch: java.util.concurrent.CancellationException -> L52
                r6.label = r3     // Catch: java.util.concurrent.CancellationException -> L52
                java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)     // Catch: java.util.concurrent.CancellationException -> L52
                if (r7 != r0) goto L33
                goto L51
            L33:
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler r7 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.this     // Catch: java.util.concurrent.CancellationException -> L52
                com.stripe.jvmcore.batchdispatcher.Scheduler$Callback r7 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.access$getCallback$p(r7)     // Catch: java.util.concurrent.CancellationException -> L52
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler r1 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.this     // Catch: java.util.concurrent.CancellationException -> L52
                r3 = 0
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.access$setCallback$p(r1, r3)     // Catch: java.util.concurrent.CancellationException -> L52
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler r1 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.this     // Catch: java.util.concurrent.CancellationException -> L52
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.access$setJob$p(r1, r3)     // Catch: java.util.concurrent.CancellationException -> L52
                if (r7 == 0) goto L66
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.util.concurrent.CancellationException -> L52
                r6.label = r2     // Catch: java.util.concurrent.CancellationException -> L52
                java.lang.Object r7 = r7.flush(r1)     // Catch: java.util.concurrent.CancellationException -> L52
                if (r7 != r0) goto L66
            L51:
                return r0
            L52:
                com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler r7 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.this
                com.stripe.logwriter.LogWriter r7 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.access$getLogWriter$p(r7)
                java.lang.String r0 = com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineSchedulerKt.access$getTAG$p()
                java.lang.String r1 = "access$getTAG$p(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                java.lang.String r1 = "Cancelled scheduled dispatch."
                r7.v(r0, r1)
            L66:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Job launchDelayJob() {
        return BuildersKt__Builders_commonKt.launch$default(this.workScope, this.main, null, new AnonymousClass1(null), 2, null);
    }
}
