package com.stripe.spos.sentry.http;

import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SentryHttpClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.spos.sentry.http.SentryHttpClient", f = "SentryHttpClient.kt", i = {}, l = {WinError.ERROR_NOT_LOCKED, WinError.ERROR_BAD_THREADID_ADDR, WinError.ERROR_INVALID_CATEGORY}, m = "submitReport-gIAlu-s", n = {}, s = {})
final class SentryHttpClient$submitReport$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SentryHttpClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SentryHttpClient$submitReport$1(SentryHttpClient sentryHttpClient, Continuation<? super SentryHttpClient$submitReport$1> continuation) {
        super(continuation);
        this.this$0 = sentryHttpClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM500submitReportgIAlus = this.this$0.m500submitReportgIAlus(null, this);
        return objM500submitReportgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM500submitReportgIAlus : Result.m816boximpl(objM500submitReportgIAlus);
    }
}
