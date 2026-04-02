package com.stripe.core.transactionlog;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: TransactionLogRepositoryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u0004H\u0096@¢\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0096@¢\u0006\u0002\u0010\u0005J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bH\u0096@¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/transactionlog/TransactionLogRepositoryImpl;", "Lcom/stripe/core/transactionlog/TransactionLogRepository;", "()V", "clearTransactionLogs", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransactionLogs", "", "Lcom/stripe/core/transactionlog/TransactionLog;", "insertTransactionLog", "transactionLog", "(Lcom/stripe/core/transactionlog/TransactionLog;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "transactionlog_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionLogRepositoryImpl implements TransactionLogRepository {
    @Override // com.stripe.core.transactionlog.TransactionLogRepository
    public Object clearTransactionLogs(Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.stripe.core.transactionlog.TransactionLogRepository
    public Object getTransactionLogs(Continuation<? super List<TransactionLog>> continuation) {
        return CollectionsKt.emptyList();
    }

    @Override // com.stripe.core.transactionlog.TransactionLogRepository
    public Object insertTransactionLog(TransactionLog transactionLog, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
