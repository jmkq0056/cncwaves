package com.stripe.offlinemode;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$onActivateReaderRequest$1$6", f = "DefaultOfflineEventHandler.kt", i = {}, l = {428}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineEventHandler$onActivateReaderRequest$1$6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ DefaultOfflineEventHandler $this_runCatching;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineEventHandler$onActivateReaderRequest$1$6(DefaultOfflineEventHandler defaultOfflineEventHandler, Continuation<? super DefaultOfflineEventHandler$onActivateReaderRequest$1$6> continuation) {
        super(2, continuation);
        this.$this_runCatching = defaultOfflineEventHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineEventHandler$onActivateReaderRequest$1$6 defaultOfflineEventHandler$onActivateReaderRequest$1$6 = new DefaultOfflineEventHandler$onActivateReaderRequest$1$6(this.$this_runCatching, continuation);
        defaultOfflineEventHandler$onActivateReaderRequest$1$6.L$0 = obj;
        return defaultOfflineEventHandler$onActivateReaderRequest$1$6;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
        return ((DefaultOfflineEventHandler$onActivateReaderRequest$1$6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM817constructorimpl;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DefaultOfflineEventHandler defaultOfflineEventHandler = this.$this_runCatching;
                Result.Companion companion = Result.INSTANCE;
                DefaultOfflineEventHandler$onActivateReaderRequest$1$6$1$1 defaultOfflineEventHandler$onActivateReaderRequest$1$6$1$1 = new DefaultOfflineEventHandler$onActivateReaderRequest$1$6$1$1(defaultOfflineEventHandler, null);
                this.label = 1;
                if (TimeoutKt.withTimeout(200L, defaultOfflineEventHandler$onActivateReaderRequest$1$6$1$1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m816boximpl(objM817constructorimpl);
    }
}
