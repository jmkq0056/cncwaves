package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.common.ExpiringValue;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$collectPaymentMethodHandler$1$1", f = "CotsAdapter.kt", i = {}, l = {349}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$collectPaymentMethodHandler$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ExpiringValue<CotsAdapter.CachedPayment> $value;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CotsAdapter$collectPaymentMethodHandler$1$1(ExpiringValue<CotsAdapter.CachedPayment> expiringValue, Continuation<? super CotsAdapter$collectPaymentMethodHandler$1$1> continuation) {
        super(2, continuation);
        this.$value = expiringValue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CotsAdapter$collectPaymentMethodHandler$1$1(this.$value, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CotsAdapter$collectPaymentMethodHandler$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ExpiringValue<CotsAdapter.CachedPayment> expiringValue = this.$value;
            Duration.Companion companion = Duration.INSTANCE;
            this.label = 1;
            if (expiringValue.m481expiresInVtjQ1oo(DurationKt.toDuration(5, DurationUnit.MINUTES), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
