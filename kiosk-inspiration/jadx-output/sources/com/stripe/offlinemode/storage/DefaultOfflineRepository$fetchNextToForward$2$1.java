package com.stripe.offlinemode.storage;

import com.stripe.offlinemode.models.OfflineForwardingRequest;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class DefaultOfflineRepository$fetchNextToForward$2$1 extends FunctionReferenceImpl implements Function3<OfflineApiRequestEntity, Long, Continuation<? super OfflineForwardingRequest>, Object>, SuspendFunction {
    DefaultOfflineRepository$fetchNextToForward$2$1(Object obj) {
        super(3, obj, DefaultOfflineRepository.class, "getOfflineConnectionAndReaderForPaymentRequest", "getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    public final Object invoke(OfflineApiRequestEntity offlineApiRequestEntity, long j, Continuation<? super OfflineForwardingRequest> continuation) {
        return ((DefaultOfflineRepository) this.receiver).getOfflineConnectionAndReaderForPaymentRequest(offlineApiRequestEntity, j, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(OfflineApiRequestEntity offlineApiRequestEntity, Long l, Continuation<? super OfflineForwardingRequest> continuation) {
        return invoke(offlineApiRequestEntity, l.longValue(), continuation);
    }
}
