package com.stripe.offlinemode.storage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineReaderDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0003\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0002\u0010\fJ\u001c\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H'J\u0018\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H'J\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0015J \u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H§@¢\u0006\u0002\u0010\u0018J*\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\bH§@¢\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006J(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00130\b2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u001e\"\u00020\u0002H§@¢\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006!À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineReaderDao;", "Lcom/stripe/offlinemode/storage/OfflineEntityDao;", "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;", "delete", "", OfflineStorageConstantsKt.READER, "(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAll", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "limit", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getByAccountId", "Lkotlinx/coroutines/flow/Flow;", "accountId", "", "getByIdFlow", OfflineStorageConstantsKt.ID, "", "getByReaderId", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBySerialAndAccount", "serialNumber", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBySerialsForAccount", "serialNumbers", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "insertAll", "", "([Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineReaderDao extends OfflineEntityDao<OfflineReaderEntity> {
    Object delete(OfflineReaderEntity offlineReaderEntity, Continuation<? super Unit> continuation);

    Object getAll(int i, int i2, Continuation<? super List<OfflineReaderEntity>> continuation);

    @Override // com.stripe.offlinemode.storage.OfflineEntityDao
    Flow<List<OfflineReaderEntity>> getByAccountId(String accountId);

    Flow<OfflineReaderEntity> getByIdFlow(long id);

    Object getByReaderId(long j, Continuation<? super OfflineReaderEntity> continuation);

    Object getBySerialAndAccount(String str, String str2, Continuation<? super OfflineReaderEntity> continuation);

    Object getBySerialsForAccount(String str, List<String> list, Continuation<? super List<OfflineReaderEntity>> continuation);

    Object insert(OfflineReaderEntity offlineReaderEntity, Continuation<? super Long> continuation);

    Object insertAll(OfflineReaderEntity[] offlineReaderEntityArr, Continuation<? super List<Long>> continuation);

    Object update(OfflineReaderEntity offlineReaderEntity, Continuation<? super Unit> continuation);

    static /* synthetic */ Object getAll$default(OfflineReaderDao offlineReaderDao, int i, int i2, Continuation continuation, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAll");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        return offlineReaderDao.getAll(i, i2, continuation);
    }
}
