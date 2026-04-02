package com.stripe.stripeterminal.internal.common.polling;

import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.time.Clock;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: ReaderBatteryInfoPoller.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB!\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0014\u0010\u0017\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\f\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;", "", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "clock", "Lcom/stripe/time/Clock;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "lastPollingJobPausedTimeInMillis", "", "Ljava/lang/Long;", "lastReceivedCommandTimeInMillis", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "pollingJob", "Lkotlinx/coroutines/Job;", "endPolling", "", "pausePolling", "startPolling", "requestReaderBatteryInfo", "Lkotlin/Function0;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderBatteryInfoPoller {
    private static final long POLLING_DELAY = TimeUnit.MINUTES.toMillis(10);
    private final Clock clock;
    private final CoroutineDispatcher io;
    private Long lastPollingJobPausedTimeInMillis;
    private Long lastReceivedCommandTimeInMillis;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private Job pollingJob;

    @Inject
    public ReaderBatteryInfoPoller(@IO CoroutineDispatcher io2, Clock clock, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.io = io2;
        this.clock = clock;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(ReaderBatteryInfoPoller.class));
    }

    public final void startPolling(Function0<Unit> requestReaderBatteryInfo) {
        Intrinsics.checkNotNullParameter(requestReaderBatteryInfo, "requestReaderBatteryInfo");
        this.logger.i("ReaderBatteryInfoPoller startPolling", new Pair[0]);
        Job job = this.pollingJob;
        if (job == null || !job.isActive()) {
            this.pollingJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.io.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), null, null, new AnonymousClass1(requestReaderBatteryInfo, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller$startPolling$1, reason: invalid class name */
    /* JADX INFO: compiled from: ReaderBatteryInfoPoller.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller$startPolling$1", f = "ReaderBatteryInfoPoller.kt", i = {0}, l = {52}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $requestReaderBatteryInfo;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestReaderBatteryInfo = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = ReaderBatteryInfoPoller.this.new AnonymousClass1(this.$requestReaderBatteryInfo, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006f -> B:23:0x0072). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                r14 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r14.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r14.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r15)
                goto L72
            L13:
                java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r15.<init>(r0)
                throw r15
            L1b:
                kotlin.ResultKt.throwOnFailure(r15)
                java.lang.Object r15 = r14.L$0
                kotlinx.coroutines.CoroutineScope r15 = (kotlinx.coroutines.CoroutineScope) r15
                r1 = r15
            L23:
                boolean r15 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
                if (r15 == 0) goto L8f
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.this
                java.lang.Long r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getLastReceivedCommandTimeInMillis$p(r15)
                r3 = 0
                if (r15 == 0) goto L64
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller r5 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.this
                java.lang.Number r15 = (java.lang.Number) r15
                long r6 = r15.longValue()
                java.lang.Long r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getLastPollingJobPausedTimeInMillis$p(r5)
                if (r15 == 0) goto L60
                java.lang.Number r15 = (java.lang.Number) r15
                long r8 = r15.longValue()
                long r10 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getPOLLING_DELAY$cp()
                long r10 = r10 + r6
                com.stripe.time.Clock r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getClock$p(r5)
                long r12 = r15.currentTimeMillis()
                int r15 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
                if (r15 >= 0) goto L59
                goto L64
            L59:
                long r3 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getPOLLING_DELAY$cp()
                long r8 = r8 - r6
                long r3 = r3 - r8
                goto L64
            L60:
                long r3 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getPOLLING_DELAY$cp()
            L64:
                r15 = r14
                kotlin.coroutines.Continuation r15 = (kotlin.coroutines.Continuation) r15
                r14.L$0 = r1
                r14.label = r2
                java.lang.Object r15 = kotlinx.coroutines.DelayKt.delay(r3, r15)
                if (r15 != r0) goto L72
                return r0
            L72:
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.this
                com.stripe.time.Clock r3 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$getClock$p(r15)
                long r3 = r3.currentTimeMillis()
                java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$setLastReceivedCommandTimeInMillis$p(r15, r3)
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller r15 = com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.this
                r3 = 0
                com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.access$setLastPollingJobPausedTimeInMillis$p(r15, r3)
                kotlin.jvm.functions.Function0<kotlin.Unit> r15 = r14.$requestReaderBatteryInfo
                r15.invoke()
                goto L23
            L8f:
                kotlin.Unit r15 = kotlin.Unit.INSTANCE
                return r15
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.polling.ReaderBatteryInfoPoller.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void pausePolling() {
        this.logger.i("ReaderBatteryInfoPoller pausePolling", new Pair[0]);
        this.lastPollingJobPausedTimeInMillis = Long.valueOf(this.clock.currentTimeMillis());
        Job job = this.pollingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    public final void endPolling() {
        this.logger.i("ReaderBatteryInfoPoller endPolling", new Pair[0]);
        this.lastReceivedCommandTimeInMillis = null;
        this.lastPollingJobPausedTimeInMillis = null;
        Job job = this.pollingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }
}
