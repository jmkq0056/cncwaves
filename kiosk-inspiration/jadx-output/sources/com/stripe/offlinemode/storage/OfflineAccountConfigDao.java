package com.stripe.offlinemode.storage;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OfflineAccountConfigDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0011\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\tH'J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J(\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u000e\"\u00020\u0005H§@¢\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;", "", "delete", "", "entity", "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;", "(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getForAccountId", "accountId", "", "insert", "", "insertAll", "", "", "([Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineAccountConfigDao {
    Object delete(OfflineAccountConfigEntity offlineAccountConfigEntity, Continuation<? super Unit> continuation);

    OfflineAccountConfigEntity getForAccountId(String accountId);

    Object insert(OfflineAccountConfigEntity offlineAccountConfigEntity, Continuation<? super Long> continuation);

    Object insertAll(OfflineAccountConfigEntity[] offlineAccountConfigEntityArr, Continuation<? super List<Long>> continuation);

    Object update(OfflineAccountConfigEntity offlineAccountConfigEntity, Continuation<? super Unit> continuation);
}
