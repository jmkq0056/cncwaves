package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.status.ReaderInfo;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import kotlin.Metadata;
import kotlin.Pair;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1", f = "BbposAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$RequestDeviceInformationOperation$execute$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposAdapter this$0;
    final /* synthetic */ BbposAdapter.RequestDeviceInformationOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$RequestDeviceInformationOperation$execute$1(BbposAdapter bbposAdapter, BbposAdapter.RequestDeviceInformationOperation requestDeviceInformationOperation, Continuation<? super BbposAdapter$RequestDeviceInformationOperation$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = bbposAdapter;
        this.this$1 = requestDeviceInformationOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposAdapter$RequestDeviceInformationOperation$execute$1 bbposAdapter$RequestDeviceInformationOperation$execute$1 = new BbposAdapter$RequestDeviceInformationOperation$execute$1(this.this$0, this.this$1, continuation);
        bbposAdapter$RequestDeviceInformationOperation$execute$1.L$0 = obj;
        return bbposAdapter$RequestDeviceInformationOperation$execute$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$RequestDeviceInformationOperation$execute$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$RequestDeviceInformationOperation$execute$1$1", f = "BbposAdapter.kt", i = {}, l = {1051}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ BbposAdapter this$0;
        final /* synthetic */ BbposAdapter.RequestDeviceInformationOperation this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BbposAdapter bbposAdapter, BbposAdapter.RequestDeviceInformationOperation requestDeviceInformationOperation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = bbposAdapter;
            this.this$1 = requestDeviceInformationOperation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.this$1, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            ReaderInfo readerInfo = null;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Duration.Companion companion = Duration.INSTANCE;
                    this.label = 1;
                    obj = TimeoutKt.m2329withTimeoutKLykuaI(DurationKt.toDuration(5, DurationUnit.SECONDS), new BbposAdapter$RequestDeviceInformationOperation$execute$1$1$result$1(this.this$0, null), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                readerInfo = (ReaderInfo) obj;
            } catch (TimeoutCancellationException unused) {
                this.this$0.getLogger().w("RequestDeviceInformationOperation timed out", new Pair[0]);
            }
            this.this$1.set(readerInfo);
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) this.L$0, null, null, new AnonymousClass1(this.this$0, this.this$1, null), 3, null);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
