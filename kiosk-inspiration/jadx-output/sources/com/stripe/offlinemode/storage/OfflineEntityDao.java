package com.stripe.offlinemode.storage;

import com.stripe.offlinemode.storage.OfflineEntity;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineEntityDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u001c\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineEntityDao;", "T", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "", "getByAccountId", "Lkotlinx/coroutines/flow/Flow;", "", "accountId", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineEntityDao<T extends OfflineEntity> {
    Flow<List<T>> getByAccountId(String accountId);
}
