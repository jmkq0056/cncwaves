package com.stripe.stripeterminal;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: TerminalExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.TerminalExtensionsKt$flushPendingLogsLoop$1", f = "TerminalExtensions.kt", i = {0}, l = {56}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
final class TerminalExtensionsKt$flushPendingLogsLoop$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $intervalDelay;
    final /* synthetic */ SimpleLogger<ApplicationTrace, ApplicationTraceResult> $logger;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TerminalExtensionsKt$flushPendingLogsLoop$1(SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger, long j, Continuation<? super TerminalExtensionsKt$flushPendingLogsLoop$1> continuation) {
        super(2, continuation);
        this.$logger = simpleLogger;
        this.$intervalDelay = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TerminalExtensionsKt$flushPendingLogsLoop$1 terminalExtensionsKt$flushPendingLogsLoop$1 = new TerminalExtensionsKt$flushPendingLogsLoop$1(this.$logger, this.$intervalDelay, continuation);
        terminalExtensionsKt$flushPendingLogsLoop$1.L$0 = obj;
        return terminalExtensionsKt$flushPendingLogsLoop$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TerminalExtensionsKt$flushPendingLogsLoop$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            coroutineScope = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (CoroutineScopeKt.isActive(coroutineScope)) {
            this.$logger.flushPending();
            this.L$0 = coroutineScope;
            this.label = 1;
            if (DelayKt.m2320delayVtjQ1oo(this.$intervalDelay, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
