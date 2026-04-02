package com.stripe.jvmcore.batchdispatcher;

import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BatchDispatcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u001dB1\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0002\u0010\u0013J/\u0010\u0010\u001a\u00020\u00112\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0015¢\u0006\u0002\u0010\u0018J\u000e\u0010\u0019\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0011J\b\u0010\u001c\u001a\u00020\u0011H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\f0\u000fR\b\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "T", "", "collector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "dispatcher", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V", "isInitialized", "", "schedulerCallback", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;", "add", "", "record", "(Ljava/lang/Object;)V", "recordSupplier", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "(Lkotlin/jvm/functions/Function1;)V", "flushScheduled", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "scheduleNext", "SchedulerCallback", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BatchDispatcher<T> {
    private final Collector<T> collector;
    private final Dispatcher<T> dispatcher;
    private boolean isInitialized;
    private final LogWriter logWriter;
    private final Scheduler scheduler;
    private final BatchDispatcher<T>.SchedulerCallback schedulerCallback;

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.BatchDispatcher$flushScheduled$1, reason: invalid class name */
    /* JADX INFO: compiled from: BatchDispatcher.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.BatchDispatcher", f = "BatchDispatcher.kt", i = {0, 1, 1, 1, 2, 2, 3, 3, 4, 5}, l = {55, 57, 60, 67, 72, 75}, m = "flushScheduled", n = {"this", "this", "batch", "$this$flushScheduled_u24lambda_u242_u24lambda_u240", "this", "batch", "this", "batch", "this", "this"}, s = {"L$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ BatchDispatcher<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BatchDispatcher<T> batchDispatcher, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = batchDispatcher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.flushScheduled(this);
        }
    }

    public BatchDispatcher(Collector<T> collector, Dispatcher<T> dispatcher, Scheduler scheduler, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.collector = collector;
        this.dispatcher = dispatcher;
        this.scheduler = scheduler;
        this.logWriter = logWriter;
        this.schedulerCallback = new SchedulerCallback();
    }

    public final synchronized void init() {
        if (this.isInitialized) {
            LogWriter logWriter = this.logWriter;
            String str = BatchDispatcherKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            logWriter.i(str, "Already initialized.");
            return;
        }
        this.isInitialized = true;
        scheduleNext();
    }

    public final void add(T record) {
        this.collector.collect(record);
    }

    public final void add(Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> recordSupplier) {
        Intrinsics.checkNotNullParameter(recordSupplier, "recordSupplier");
        this.collector.collect((Function1) recordSupplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010c, code lost:
    
        if (r11.remove(r5, r0) == r1) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: all -> 0x0050, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:15:0x004b, B:53:0x0111, B:35:0x0096), top: B:68:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b7 A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:20:0x005f, B:39:0x00b1, B:41:0x00b7, B:44:0x00d8, B:46:0x00dc, B:47:0x00eb, B:49:0x00ef), top: B:70:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d8 A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:20:0x005f, B:39:0x00b1, B:41:0x00b7, B:44:0x00d8, B:46:0x00dc, B:47:0x00eb, B:49:0x00ef), top: B:70:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014b A[PHI: r2
      0x014b: PHI (r2v5 com.stripe.jvmcore.batchdispatcher.BatchDispatcher<T>) = 
      (r2v4 com.stripe.jvmcore.batchdispatcher.BatchDispatcher<T>)
      (r2v4 com.stripe.jvmcore.batchdispatcher.BatchDispatcher<T>)
      (r2v29 com.stripe.jvmcore.batchdispatcher.BatchDispatcher<T>)
     binds: [B:57:0x0129, B:59:0x0148, B:13:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.stripe.jvmcore.batchdispatcher.Collector, com.stripe.jvmcore.batchdispatcher.Collector<T>] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.List] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object flushScheduled(kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.batchdispatcher.BatchDispatcher.flushScheduled(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final synchronized void scheduleNext() {
        if (!this.isInitialized) {
            LogWriter logWriter = this.logWriter;
            String str = BatchDispatcherKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            logWriter.w(str, "Not initialized, not scheduling next.");
            return;
        }
        this.scheduler.scheduleNext(this.schedulerCallback);
    }

    /* JADX INFO: compiled from: BatchDispatcher.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u0004H\u0096@¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;", "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;)V", "flush", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class SchedulerCallback implements Scheduler.Callback {
        public SchedulerCallback() {
        }

        @Override // com.stripe.jvmcore.batchdispatcher.Scheduler.Callback
        public Object flush(Continuation<? super Unit> continuation) {
            Object objFlushScheduled = BatchDispatcher.this.flushScheduled(continuation);
            return objFlushScheduled == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlushScheduled : Unit.INSTANCE;
        }
    }
}
