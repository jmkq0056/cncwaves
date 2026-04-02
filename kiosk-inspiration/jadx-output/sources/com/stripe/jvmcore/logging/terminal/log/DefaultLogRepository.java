package com.stripe.jvmcore.logging.terminal.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.jvmcore.logging.terminal.contracts.LogReferenceIdGenerator;
import com.stripe.jvmcore.logging.terminal.contracts.LogRepository;
import com.stripe.jvmcore.logging.terminal.models.PendingLogPoint;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultLogRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011J,\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0017\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0002\u0010!J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;", "T", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;", "idGenerator", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;", "(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;)V", "logOperations", "", "", "pendingLogPoints", "", "Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;", "add", "", OfflineStorageConstantsKt.ID, "data", "(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V", "addLog", "message", "throwable", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "", "getLongRunningOperations", "", "hasPendingLogs", "", "hasSavedOperations", "operationExists", "remove", "(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "removeAll", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLogRepository<T extends LogOperation<T>> implements LogRepository<T> {
    private final LogReferenceIdGenerator idGenerator;
    private final Map<String, T> logOperations;
    private final List<PendingLogPoint> pendingLogPoints;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultLogRepository() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DefaultLogRepository(LogReferenceIdGenerator idGenerator) {
        Intrinsics.checkNotNullParameter(idGenerator, "idGenerator");
        this.idGenerator = idGenerator;
        this.logOperations = new LinkedHashMap();
        this.pendingLogPoints = new ArrayList();
    }

    public /* synthetic */ DefaultLogRepository(DefaultLogReferenceGenerator defaultLogReferenceGenerator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new DefaultLogReferenceGenerator() : defaultLogReferenceGenerator);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized boolean operationExists(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.logOperations.containsKey(id);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized T remove(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.logOperations.remove(id);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized List<T> removeAll() {
        List<T> listEmptyList;
        if (hasSavedOperations()) {
            listEmptyList = CollectionsKt.toList(this.logOperations.values());
            this.logOperations.clear();
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        return listEmptyList;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized void addLog(String message, Throwable throwable, LogLevel level, long currentTimeMillis) {
        Collection<T> collectionValues;
        Intrinsics.checkNotNullParameter(level, "level");
        Map<String, T> map = this.logOperations;
        if (map.isEmpty()) {
            map = null;
        }
        if (map == null || (collectionValues = map.values()) == null) {
            this.pendingLogPoints.add(new PendingLogPoint(message, throwable, level, currentTimeMillis));
        } else {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                String str = message;
                Throwable th = throwable;
                LogLevel logLevel = level;
                long j = currentTimeMillis;
                ((LogOperation) it.next()).log(str, th, logLevel, j);
                message = str;
                throwable = th;
                level = logLevel;
                currentTimeMillis = j;
            }
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized boolean hasPendingLogs() {
        return !this.pendingLogPoints.isEmpty();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized boolean hasSavedOperations() {
        return !this.logOperations.isEmpty();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized void add(String id, T data) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(data, "data");
        this.logOperations.put(id, data);
        if (hasPendingLogs()) {
            for (PendingLogPoint pendingLogPoint : this.pendingLogPoints) {
                T t = data;
                t.log(pendingLogPoint.getMessage(), pendingLogPoint.getThrowable(), pendingLogPoint.getLogLevel(), pendingLogPoint.getCurrentTimeMillis());
                data = t;
            }
            this.pendingLogPoints.clear();
        }
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogRepository
    public synchronized List<T> getLongRunningOperations(long currentTimeMillis) {
        LinkedHashMap linkedHashMap;
        Map<String, T> map = this.logOperations;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, T> entry : map.entrySet()) {
            long j = currentTimeMillis;
            if (LogOperation.isLongRunning$default(entry.getValue(), j, 0L, 2, null)) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
            currentTimeMillis = j;
        }
        long j2 = currentTimeMillis;
        linkedHashMap = linkedHashMap2;
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            LogOperation logOperation = (LogOperation) entry2.getValue();
            String strUniqueId = this.idGenerator.uniqueId();
            logOperation.log("Continuing in " + strUniqueId, null, LogLevel.NONE, j2);
            Map<String, T> map2 = this.logOperations;
            LogOperation logOperationMo491new = logOperation.mo491new(j2);
            logOperationMo491new.log("Continuing from " + strUniqueId, null, LogLevel.NONE, j2);
            map2.put(str, (T) logOperationMo491new);
        }
        return CollectionsKt.toList(linkedHashMap.values());
    }
}
