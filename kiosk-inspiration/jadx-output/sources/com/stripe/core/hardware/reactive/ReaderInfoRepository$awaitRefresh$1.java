package com.stripe.core.hardware.reactive;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ReaderInfoRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoRepository", f = "ReaderInfoRepository.kt", i = {}, l = {50}, m = "awaitRefresh-IoAF18A", n = {}, s = {})
final class ReaderInfoRepository$awaitRefresh$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ReaderInfoRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReaderInfoRepository$awaitRefresh$1(ReaderInfoRepository readerInfoRepository, Continuation<? super ReaderInfoRepository$awaitRefresh$1> continuation) {
        super(continuation);
        this.this$0 = readerInfoRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM465awaitRefreshIoAF18A = this.this$0.m465awaitRefreshIoAF18A(this);
        return objM465awaitRefreshIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM465awaitRefreshIoAF18A : Result.m816boximpl(objM465awaitRefreshIoAF18A);
    }
}
