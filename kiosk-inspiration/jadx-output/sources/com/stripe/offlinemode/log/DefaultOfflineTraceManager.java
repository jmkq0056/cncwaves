package com.stripe.offlinemode.log;

import com.stripe.loggingmodels.Trace;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: DefaultOfflineTraceManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0011\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "random", "Lkotlin/random/Random;", "(Lkotlin/random/Random;)V", "sessionId", "", "Ljava/lang/Long;", "traceId", "endSession", "", "getTraceContext", "Lcom/stripe/loggingmodels/Trace$Context;", "serial", "", "newSessionId", "nextTraceId", "startSession", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineTraceManager implements OfflineForwardingTraceManager {
    private static final long SEED = 100000000;
    private final Random random;
    private volatile Long sessionId;
    private volatile long traceId;

    public DefaultOfflineTraceManager(Random random) {
        Intrinsics.checkNotNullParameter(random, "random");
        this.random = random;
        this.traceId = newSessionId();
    }

    @Override // com.stripe.offlinemode.log.OfflineForwardingTraceManager
    public void startSession() {
        if (this.sessionId == null) {
            this.sessionId = Long.valueOf(newSessionId());
        }
    }

    @Override // com.stripe.offlinemode.log.OfflineForwardingTraceManager
    public void endSession() {
        this.sessionId = null;
    }

    @Override // com.stripe.offlinemode.log.OfflineForwardingTraceManager
    public String sessionId() {
        Long l = this.sessionId;
        if (l != null) {
            return l.toString();
        }
        return null;
    }

    @Override // com.stripe.offlinemode.log.OfflineForwardingTraceManager
    public String nextTraceId() {
        this.traceId++;
        return String.valueOf(this.traceId);
    }

    @Override // com.stripe.offlinemode.log.OfflineForwardingTraceManager
    public Trace.Context getTraceContext(String serial) {
        return new Trace.Context(serial, sessionId(), nextTraceId());
    }

    private final long newSessionId() {
        return this.random.nextLong(SEED);
    }
}
