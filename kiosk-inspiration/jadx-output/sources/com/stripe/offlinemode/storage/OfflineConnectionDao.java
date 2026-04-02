package com.stripe.offlinemode.storage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineConnectionDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0002\u0010\fJ\u001c\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H'J\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\b2\u0006\u0010\u000f\u001a\u00020\u0010H§@¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\b2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u001b\"\u00020\u0002H§@¢\u0006\u0002\u0010\u001cJ$\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00130\u001fH§@¢\u0006\u0002\u0010 J\u0016\u0010!\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\"À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineConnectionDao;", "Lcom/stripe/offlinemode/storage/OfflineEntityDao;", "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;", "delete", "", "entity", "(Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAll", "", "limit", "", TypedValues.CycleType.S_WAVE_OFFSET, "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getByAccountId", "Lkotlinx/coroutines/flow/Flow;", "accountId", "", "getById", OfflineStorageConstantsKt.ID, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMostRecentConnectionForReader", "readerId", "getMostRecentConnectionIdForEachReader", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "insertAll", "", "([Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retainByIds", "idsToRetain", "", "(Ljava/lang/String;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineConnectionDao extends OfflineEntityDao<OfflineConnectionEntity> {
    Object delete(OfflineConnectionEntity offlineConnectionEntity, Continuation<? super Unit> continuation);

    Object getAll(int i, int i2, Continuation<? super List<OfflineConnectionEntity>> continuation);

    @Override // com.stripe.offlinemode.storage.OfflineEntityDao
    Flow<List<OfflineConnectionEntity>> getByAccountId(String accountId);

    Object getById(long j, Continuation<? super OfflineConnectionEntity> continuation);

    Object getMostRecentConnectionForReader(long j, Continuation<? super OfflineConnectionEntity> continuation);

    Object getMostRecentConnectionIdForEachReader(String str, Continuation<? super List<Long>> continuation);

    Object insert(OfflineConnectionEntity offlineConnectionEntity, Continuation<? super Long> continuation);

    Object insertAll(OfflineConnectionEntity[] offlineConnectionEntityArr, Continuation<? super List<Long>> continuation);

    Object retainByIds(String str, Set<Long> set, Continuation<? super Unit> continuation);

    Object update(OfflineConnectionEntity offlineConnectionEntity, Continuation<? super Unit> continuation);

    static /* synthetic */ Object getAll$default(OfflineConnectionDao offlineConnectionDao, int i, int i2, Continuation continuation, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAll");
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return offlineConnectionDao.getAll(i, i2, continuation);
    }
}
