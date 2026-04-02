package com.stripe.jvmcore.logging;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: compiled from: ExecutionTimeLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0014\b\u0002\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0003\"\u0014\b\u0004\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005*\u00020\bH\u008a@"}, d2 = {"<anonymous>", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecution$2$1$result$1", f = "ExecutionTimeLogger.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
final class ExecutionTimeLogger$reportExecution$2$1$result$1<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function1<Continuation<? super R>, Object> $runnable;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ExecutionTimeLogger$reportExecution$2$1$result$1(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super ExecutionTimeLogger$reportExecution$2$1$result$1> continuation) {
        super(2, continuation);
        this.$runnable = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ExecutionTimeLogger$reportExecution$2$1$result$1(this.$runnable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
        return ((ExecutionTimeLogger$reportExecution$2$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        Function1<Continuation<? super R>, Object> function1 = this.$runnable;
        this.label = 1;
        Object objInvoke = function1.invoke(this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
