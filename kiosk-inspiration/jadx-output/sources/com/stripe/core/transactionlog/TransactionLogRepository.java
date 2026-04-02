package com.stripe.core.transactionlog;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: TransactionLogRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H¦@¢\u0006\u0002\u0010\u0004J\u0016\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/transactionlog/TransactionLogRepository;", "", "clearTransactionLogs", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransactionLogs", "", "Lcom/stripe/core/transactionlog/TransactionLog;", "insertTransactionLog", "transactionLog", "(Lcom/stripe/core/transactionlog/TransactionLog;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "transactionlog_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TransactionLogRepository {
    Object clearTransactionLogs(Continuation<? super Unit> continuation);

    Object getTransactionLogs(Continuation<? super List<TransactionLog>> continuation);

    Object insertTransactionLog(TransactionLog transactionLog, Continuation<? super Unit> continuation);
}
