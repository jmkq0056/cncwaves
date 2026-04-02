package com.stripe.jvmcore.logging.terminal.contracts;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028\u0000H&¢\u0006\u0002\u0010\tJ,\u0010\n\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0015H&J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0017\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;", "T", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "", "add", "", OfflineStorageConstantsKt.ID, "", "data", "(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V", "addLog", "message", "throwable", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "", "getLongRunningOperations", "", "hasPendingLogs", "", "hasSavedOperations", "operationExists", "remove", "(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "removeAll", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogRepository<T extends LogOperation<T>> {
    void add(String id, T data);

    void addLog(String message, Throwable throwable, LogLevel level, long currentTimeMillis);

    List<T> getLongRunningOperations(long currentTimeMillis);

    boolean hasPendingLogs();

    boolean hasSavedOperations();

    boolean operationExists(String id);

    T remove(String id);

    List<T> removeAll();
}
