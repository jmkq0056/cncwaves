package com.stripe.spos.sentry.http;

import com.stripe.spos.sentry.http.models.ErrorReportIdentifier;
import com.stripe.spos.sentry.http.models.Report;
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

/* JADX INFO: compiled from: SentryHttpClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.spos.sentry.http.SentryHttpClient$blockingReportError$1", f = "SentryHttpClient.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
final class SentryHttpClient$blockingReportError$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends ErrorReportIdentifier>>, Object> {
    final /* synthetic */ Report $report;
    int label;
    final /* synthetic */ SentryHttpClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SentryHttpClient$blockingReportError$1(SentryHttpClient sentryHttpClient, Report report, Continuation<? super SentryHttpClient$blockingReportError$1> continuation) {
        super(2, continuation);
        this.this$0 = sentryHttpClient;
        this.$report = report;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SentryHttpClient$blockingReportError$1(this.this$0, this.$report, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends ErrorReportIdentifier>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<ErrorReportIdentifier>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<ErrorReportIdentifier>> continuation) {
        return ((SentryHttpClient$blockingReportError$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM500submitReportgIAlus;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objM500submitReportgIAlus = this.this$0.m500submitReportgIAlus(this.$report, this);
            if (objM500submitReportgIAlus == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            objM500submitReportgIAlus = ((Result) obj).getValue();
        }
        return Result.m816boximpl(objM500submitReportgIAlus);
    }
}
