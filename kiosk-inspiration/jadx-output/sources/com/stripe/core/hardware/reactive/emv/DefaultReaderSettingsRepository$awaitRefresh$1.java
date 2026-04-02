package com.stripe.core.hardware.reactive.emv;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DefaultReaderSettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository", f = "DefaultReaderSettingsRepository.kt", i = {}, l = {23}, m = "awaitRefresh-IoAF18A", n = {}, s = {})
final class DefaultReaderSettingsRepository$awaitRefresh$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DefaultReaderSettingsRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultReaderSettingsRepository$awaitRefresh$1(DefaultReaderSettingsRepository defaultReaderSettingsRepository, Continuation<? super DefaultReaderSettingsRepository$awaitRefresh$1> continuation) {
        super(continuation);
        this.this$0 = defaultReaderSettingsRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo468awaitRefreshIoAF18A = this.this$0.mo468awaitRefreshIoAF18A(this);
        return objMo468awaitRefreshIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo468awaitRefreshIoAF18A : Result.m816boximpl(objMo468awaitRefreshIoAF18A);
    }
}
