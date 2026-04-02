package com.stripe.core.hardware.reactive;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ReaderInfoHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.ReaderInfoHandler", f = "ReaderInfoHandler.kt", i = {0, 0}, l = {65}, m = "fetchReaderInfo-IoAF18A", n = {"this", "fetchTimer"}, s = {"L$0", "L$1"})
final class ReaderInfoHandler$fetchReaderInfo$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ReaderInfoHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReaderInfoHandler$fetchReaderInfo$1(ReaderInfoHandler readerInfoHandler, Continuation<? super ReaderInfoHandler$fetchReaderInfo$1> continuation) {
        super(continuation);
        this.this$0 = readerInfoHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM462fetchReaderInfoIoAF18A = this.this$0.m462fetchReaderInfoIoAF18A(this);
        return objM462fetchReaderInfoIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM462fetchReaderInfoIoAF18A : Result.m816boximpl(objM462fetchReaderInfoIoAF18A);
    }
}
