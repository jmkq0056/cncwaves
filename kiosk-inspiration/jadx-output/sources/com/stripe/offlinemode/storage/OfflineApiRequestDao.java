package com.stripe.offlinemode.storage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineApiRequestDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\fH§@¢\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H§@¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00142\u0006\u0010\u000f\u001a\u00020\tH'J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00160\u00142\u0006\u0010\u000f\u001a\u00020\tH'J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u000f\u001a\u00020\tH'J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u000f\u001a\u00020\tH'J.\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\tH§@¢\u0006\u0002\u0010\u001dJ\u001c\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00160\u00142\u0006\u0010\u000f\u001a\u00020\tH'J \u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H§@¢\u0006\u0002\u0010#J\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\f0\u00162\u0006\u0010\u000f\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u0018\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00142\u0006\u0010\u000f\u001a\u00020\tH'J\u0018\u0010&\u001a\u0004\u0018\u00010\t2\u0006\u0010 \u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ&\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\tH§@¢\u0006\u0002\u0010+J\u0016\u0010,\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J(\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0\u00162\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050.\"\u00020\u0005H§@¢\u0006\u0002\u0010/J\u0016\u00100\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\"\u00101\u001a\u00020\u001b2\u0012\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0.\"\u00020\tH§@¢\u0006\u0002\u00103JR\u00104\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\t2\b\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u00105\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"2\b\u00106\u001a\u0004\u0018\u00010\t2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000208H§@¢\u0006\u0002\u0010:ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006;À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;", "", "delete", "", "entity", "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", "(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteByOfflineOrPaymentIntentId", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteByRowId", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOrphanedPayments", "accountId", "createdBefore", "Ljava/util/Date;", "(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchNextPaymentToForward", "Lkotlinx/coroutines/flow/Flow;", "fetchUnconfirmedOfflineIntents", "", "fetchUnconfirmedOfflineIntentsWithoutFlow", "fetchUnconfirmedSetupIntents", "getAll", "limit", "", TypedValues.CycleType.S_WAVE_OFFSET, "(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getByAccountId", "getByOfflineIdAndType", "offlineId", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getConnectionIds", "getMostRecentRowId", "getPaymentIntentIdForOfflineId", "hasMoreRequestsAfter", "", "entityId", "rowId", "(Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "insertAll", "", "([Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restoreSoftDeletedPayments", "softDeleteByIntentId", "paymentIds", "([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updatePaymentIntentId", "connectionId", "intentId", "data", "", "iv", "(JLjava/lang/String;Ljava/lang/String;JLcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;[B[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineApiRequestDao {
    Object delete(OfflineApiRequestEntity offlineApiRequestEntity, Continuation<? super Unit> continuation);

    Object deleteByOfflineOrPaymentIntentId(String str, Continuation<? super Unit> continuation);

    Object deleteByRowId(long j, Continuation<? super Unit> continuation);

    Object deleteOrphanedPayments(String str, Date date, Continuation<? super Unit> continuation);

    Flow<OfflineApiRequestEntity> fetchNextPaymentToForward(String accountId);

    Flow<List<OfflineApiRequestEntity>> fetchUnconfirmedOfflineIntents(String accountId);

    List<OfflineApiRequestEntity> fetchUnconfirmedOfflineIntentsWithoutFlow(String accountId);

    List<OfflineApiRequestEntity> fetchUnconfirmedSetupIntents(String accountId);

    Object getAll(int i, int i2, String str, Continuation<? super List<OfflineApiRequestEntity>> continuation);

    Flow<List<OfflineApiRequestEntity>> getByAccountId(String accountId);

    Object getByOfflineIdAndType(String str, OfflineApiRequest.ApiRequestType apiRequestType, Continuation<? super OfflineApiRequestEntity> continuation);

    Object getConnectionIds(String str, Continuation<? super List<Long>> continuation);

    Flow<Long> getMostRecentRowId(String accountId);

    Object getPaymentIntentIdForOfflineId(String str, Continuation<? super String> continuation);

    Object hasMoreRequestsAfter(String str, long j, String str2, Continuation<? super Boolean> continuation);

    Object insert(OfflineApiRequestEntity offlineApiRequestEntity, Continuation<? super Long> continuation);

    Object insertAll(OfflineApiRequestEntity[] offlineApiRequestEntityArr, Continuation<? super List<Long>> continuation);

    Object restoreSoftDeletedPayments(String str, Continuation<? super Unit> continuation);

    Object softDeleteByIntentId(String[] strArr, Continuation<? super Integer> continuation);

    Object updatePaymentIntentId(long j, String str, String str2, long j2, OfflineApiRequest.ApiRequestType apiRequestType, String str3, byte[] bArr, byte[] bArr2, Continuation<? super Unit> continuation);

    static /* synthetic */ Object getAll$default(OfflineApiRequestDao offlineApiRequestDao, int i, int i2, String str, Continuation continuation, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAll");
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return offlineApiRequestDao.getAll(i, i2, str, continuation);
    }
}
