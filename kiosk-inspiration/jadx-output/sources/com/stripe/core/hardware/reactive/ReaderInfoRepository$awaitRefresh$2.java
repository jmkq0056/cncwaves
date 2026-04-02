package com.stripe.core.hardware.reactive;

import com.stripe.hardware.status.ReaderInfo;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: ReaderInfoRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/stripe/hardware/status/ReaderInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoRepository$awaitRefresh$2", f = "ReaderInfoRepository.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
final class ReaderInfoRepository$awaitRefresh$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends ReaderInfo>>, Object> {
    int label;
    final /* synthetic */ ReaderInfoRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReaderInfoRepository$awaitRefresh$2(ReaderInfoRepository readerInfoRepository, Continuation<? super ReaderInfoRepository$awaitRefresh$2> continuation) {
        super(2, continuation);
        this.this$0 = readerInfoRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReaderInfoRepository$awaitRefresh$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends ReaderInfo>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<ReaderInfo>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<ReaderInfo>> continuation) {
        return ((ReaderInfoRepository$awaitRefresh$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM462fetchReaderInfoIoAF18A;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objM462fetchReaderInfoIoAF18A = this.this$0.readerInfoHandler.m462fetchReaderInfoIoAF18A(this);
            if (objM462fetchReaderInfoIoAF18A == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objM462fetchReaderInfoIoAF18A = ((Result) obj).getValue();
        }
        Result resultM816boximpl = Result.m816boximpl(objM462fetchReaderInfoIoAF18A);
        ReaderInfoRepository readerInfoRepository = this.this$0;
        Object value = resultM816boximpl.getValue();
        MutableStateFlow mutableStateFlow = readerInfoRepository._readerInfo;
        if (Result.m823isFailureimpl(value)) {
            value = null;
        }
        mutableStateFlow.setValue(value);
        return resultM816boximpl;
    }
}
