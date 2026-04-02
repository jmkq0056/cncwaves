package com.stripe.offlinemode.storage;

import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.OfflineStatusDetails;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: DirectOfflineStatusDetailsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "<name for destructuring parameter 0>", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "networkStatus", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1", f = "DirectOfflineStatusDetailsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1 extends SuspendLambda implements Function3<OfflineEntityStats, NetworkStatus, Continuation<? super OfflineStatusDetails>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DirectOfflineStatusDetailsRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1(DirectOfflineStatusDetailsRepository directOfflineStatusDetailsRepository, Continuation<? super DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1> continuation) {
        super(3, continuation);
        this.this$0 = directOfflineStatusDetailsRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(OfflineEntityStats offlineEntityStats, NetworkStatus networkStatus, Continuation<? super OfflineStatusDetails> continuation) {
        DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1 directOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1 = new DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1(this.this$0, continuation);
        directOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1.L$0 = offlineEntityStats;
        directOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1.L$1 = networkStatus;
        return directOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            OfflineEntityStats offlineEntityStats = (OfflineEntityStats) this.L$0;
            NetworkStatus networkStatus = (NetworkStatus) this.L$1;
            int setupIntentCount = offlineEntityStats.getSetupIntentCount();
            int paymentIntentCount = offlineEntityStats.getPaymentIntentCount();
            Map<String, Long> mapComponent3 = offlineEntityStats.component3();
            this.this$0.cachedNetworkStatus = networkStatus;
            return new OfflineStatusDetails(paymentIntentCount, setupIntentCount, mapComponent3, networkStatus);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
