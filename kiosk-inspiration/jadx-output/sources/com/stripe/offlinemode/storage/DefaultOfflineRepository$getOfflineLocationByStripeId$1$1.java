package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineLocation;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineLocationByStripeId$1$1", f = "DefaultOfflineRepository.kt", i = {}, l = {523}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineRepository$getOfflineLocationByStripeId$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OfflineLocation>, Object> {
    final /* synthetic */ String $stripeLocationId;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$getOfflineLocationByStripeId$1$1(DefaultOfflineRepository defaultOfflineRepository, String str, Continuation<? super DefaultOfflineRepository$getOfflineLocationByStripeId$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$stripeLocationId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineRepository$getOfflineLocationByStripeId$1$1(this.this$0, this.$stripeLocationId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OfflineLocation> continuation) {
        return ((DefaultOfflineRepository$getOfflineLocationByStripeId$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.this$0.offlineLocationDao.getByStripeLocationId(this.$stripeLocationId, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        OfflineLocationEntity offlineLocationEntity = (OfflineLocationEntity) obj;
        if (offlineLocationEntity != null) {
            if (this.this$0.isExpired(offlineLocationEntity)) {
                offlineLocationEntity = null;
            }
            if (offlineLocationEntity != null) {
                return this.this$0.offlineLocationCipher.decrypt(offlineLocationEntity);
            }
        }
        return null;
    }
}
