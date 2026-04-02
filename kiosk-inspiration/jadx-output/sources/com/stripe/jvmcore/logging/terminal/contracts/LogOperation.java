package com.stripe.jvmcore.logging.terminal.contracts;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LogPoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: LogOperation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\tH\u0016J,\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\tH&J\u0015\u0010\u0018\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\tH&¢\u0006\u0002\u0010\u0019R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001aÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "T", "", "logPoints", "", "Lcom/stripe/loggingmodels/LogPoint;", "getLogPoints", "()Ljava/util/List;", "startTimeMs", "", "getStartTimeMs", "()J", "isLongRunning", "", "currentTimeMillis", "maxRunningTimeMs", "log", "", "message", "", "throwable", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/loggingmodels/LogLevel;", "new", "(J)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogOperation<T extends LogOperation<T>> {
    List<LogPoint> getLogPoints();

    long getStartTimeMs();

    void log(String message, Throwable throwable, LogLevel level, long currentTimeMillis);

    /* JADX INFO: renamed from: new, reason: not valid java name */
    T mo491new(long startTimeMs);

    static /* synthetic */ boolean isLongRunning$default(LogOperation logOperation, long j, long j2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isLongRunning");
        }
        if ((i & 2) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            j2 = Duration.m2190getInWholeMillisecondsimpl(DurationKt.toDuration(2, DurationUnit.MINUTES));
        }
        return logOperation.isLongRunning(j, j2);
    }

    default boolean isLongRunning(long currentTimeMillis, long maxRunningTimeMs) {
        if (currentTimeMillis - getStartTimeMs() <= maxRunningTimeMs) {
            return false;
        }
        List<LogPoint> logPoints = getLogPoints();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(logPoints, 10));
        Iterator<T> it = logPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(((LogPoint) it.next()).getLogLevel());
        }
        ArrayList arrayList2 = arrayList;
        if ((arrayList2 instanceof Collection) && arrayList2.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            if (((LogLevel) it2.next()) != LogLevel.NONE) {
                return true;
            }
        }
        return false;
    }
}
