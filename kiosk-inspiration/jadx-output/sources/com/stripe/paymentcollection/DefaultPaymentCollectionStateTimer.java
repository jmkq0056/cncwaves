package com.stripe.paymentcollection;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: DefaultPaymentCollectionStateTimer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J(\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "timeoutSupplier", "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "isActive", "", "()Z", "job", "Lkotlinx/coroutines/Job;", "cancel", "", "start", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "onTimeout", "Lkotlin/Function0;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPaymentCollectionStateTimer implements PaymentCollectionStateTimer {
    private final CoroutineScope coroutineScope;
    private Job job;
    private final PaymentCollectionLogger logger;
    private final PaymentCollectionTimeoutSupplier timeoutSupplier;

    public DefaultPaymentCollectionStateTimer(CoroutineScope coroutineScope, PaymentCollectionTimeoutSupplier timeoutSupplier, PaymentCollectionLogger logger) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(timeoutSupplier, "timeoutSupplier");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.coroutineScope = coroutineScope;
        this.timeoutSupplier = timeoutSupplier;
        this.logger = logger;
    }

    public final boolean isActive() {
        Job job = this.job;
        return job != null && job.isActive();
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateTimer
    public boolean start(PaymentCollectionState state, PaymentCollectionData data, Function0<Unit> onTimeout) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(onTimeout, "onTimeout");
        cancel();
        Duration durationMo494get3UGz1UU = this.timeoutSupplier.mo494get3UGz1UU(state, data);
        if (durationMo494get3UGz1UU == null) {
            return false;
        }
        this.job = BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new AnonymousClass1(durationMo494get3UGz1UU.getRawValue(), this, onTimeout, null), 3, null);
        return true;
    }

    /* JADX INFO: renamed from: com.stripe.paymentcollection.DefaultPaymentCollectionStateTimer$start$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultPaymentCollectionStateTimer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.paymentcollection.DefaultPaymentCollectionStateTimer$start$1", f = "DefaultPaymentCollectionStateTimer.kt", i = {0}, l = {30}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onTimeout;
        final /* synthetic */ long $timeout;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DefaultPaymentCollectionStateTimer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, DefaultPaymentCollectionStateTimer defaultPaymentCollectionStateTimer, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$timeout = j;
            this.this$0 = defaultPaymentCollectionStateTimer;
            this.$onTimeout = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$timeout, this.this$0, this.$onTimeout, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                this.L$0 = coroutineScope2;
                this.label = 1;
                if (DelayKt.m2320delayVtjQ1oo(this.$timeout, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                coroutineScope = coroutineScope2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            if (CoroutineScopeKt.isActive(coroutineScope)) {
                this.this$0.logger.d("Payment collection timed-out after " + ((Object) Duration.m2219toStringimpl(this.$timeout)), new Pair[0]);
                this.$onTimeout.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateTimer
    public void cancel() {
        Job job = this.job;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.job = null;
    }
}
