package com.stripe.offlinemode.storage;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineLocationDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0003\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH'J\u0018\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u000eH§@¢\u0006\u0002\u0010\u000fJ\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH'J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u000bH§@¢\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0016\"\u00020\u0002H§@¢\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineLocationDao;", "Lcom/stripe/offlinemode/storage/OfflineEntityDao;", "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;", "delete", "", "entity", "(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getByAccountId", "Lkotlinx/coroutines/flow/Flow;", "", "accountId", "", "getById", OfflineStorageConstantsKt.ID, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getByIdFlow", "getByStripeLocationId", "locationId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "insertAll", "", "([Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineLocationDao extends OfflineEntityDao<OfflineLocationEntity> {
    Object delete(OfflineLocationEntity offlineLocationEntity, Continuation<? super Unit> continuation);

    @Override // com.stripe.offlinemode.storage.OfflineEntityDao
    Flow<List<OfflineLocationEntity>> getByAccountId(String accountId);

    Object getById(long j, Continuation<? super OfflineLocationEntity> continuation);

    Flow<OfflineLocationEntity> getByIdFlow(long id);

    Object getByStripeLocationId(String str, Continuation<? super OfflineLocationEntity> continuation);

    Object insert(OfflineLocationEntity offlineLocationEntity, Continuation<? super Long> continuation);

    Object insertAll(OfflineLocationEntity[] offlineLocationEntityArr, Continuation<? super List<Long>> continuation);

    Object update(OfflineLocationEntity offlineLocationEntity, Continuation<? super Unit> continuation);
}
