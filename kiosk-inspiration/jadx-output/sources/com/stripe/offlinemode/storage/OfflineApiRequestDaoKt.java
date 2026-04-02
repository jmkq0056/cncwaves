package com.stripe.offlinemode.storage;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: compiled from: OfflineApiRequestDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"update", "", "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;", "entity", "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", "(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OfflineApiRequestDaoKt {
    public static final Object update(OfflineApiRequestDao offlineApiRequestDao, OfflineApiRequestEntity offlineApiRequestEntity, Continuation<? super Unit> continuation) {
        Object objUpdatePaymentIntentId = offlineApiRequestDao.updatePaymentIntentId(offlineApiRequestEntity.getId(), offlineApiRequestEntity.getAccountId(), offlineApiRequestEntity.getOfflineId(), offlineApiRequestEntity.getConnectionId(), offlineApiRequestEntity.getType(), offlineApiRequestEntity.getStripeEntityId(), offlineApiRequestEntity.getEncryptedData(), offlineApiRequestEntity.getEncryptionIv(), continuation);
        return objUpdatePaymentIntentId == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdatePaymentIntentId : Unit.INSTANCE;
    }
}
