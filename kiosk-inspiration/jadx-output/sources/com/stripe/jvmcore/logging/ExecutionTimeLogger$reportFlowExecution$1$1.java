package com.stripe.jvmcore.logging;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.loggingmodels.Outcome;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: compiled from: ExecutionTimeLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\b\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0004\"\u0014\b\u0004\u0010\b*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\t\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecution$1$1", f = "ExecutionTimeLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ExecutionTimeLogger$reportFlowExecution$1$1<R> extends SuspendLambda implements Function2<R, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<R, Pair<Outcome, Map<String, String>>> $getOutcomeAndTags;
    final /* synthetic */ Function1<R, Boolean> $shouldTimerEnd;
    final /* synthetic */ PendingTimer $timer;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ExecutionTimeLogger<D, DB, S, SB> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ExecutionTimeLogger$reportFlowExecution$1$1(Function1<? super R, Boolean> function1, Function1<? super R, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> function12, ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger, PendingTimer pendingTimer, Continuation<? super ExecutionTimeLogger$reportFlowExecution$1$1> continuation) {
        super(2, continuation);
        this.$shouldTimerEnd = function1;
        this.$getOutcomeAndTags = function12;
        this.this$0 = executionTimeLogger;
        this.$timer = pendingTimer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ExecutionTimeLogger$reportFlowExecution$1$1 executionTimeLogger$reportFlowExecution$1$1 = new ExecutionTimeLogger$reportFlowExecution$1$1(this.$shouldTimerEnd, this.$getOutcomeAndTags, this.this$0, this.$timer, continuation);
        executionTimeLogger$reportFlowExecution$1$1.L$0 = obj;
        return executionTimeLogger$reportFlowExecution$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(R r, Continuation<? super Unit> continuation) {
        return ((ExecutionTimeLogger$reportFlowExecution$1$1) create(r, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Object obj2 = this.L$0;
        if (this.$shouldTimerEnd.invoke((R) obj2).booleanValue()) {
            Pair<Outcome, Map<String, String>> pairInvoke = this.$getOutcomeAndTags.invoke((R) obj2);
            HealthLogger.endTimer$default(((ExecutionTimeLogger) this.this$0).logger, this.$timer, pairInvoke.component1(), pairInvoke.component2(), null, 8, null);
        }
        return Unit.INSTANCE;
    }
}
