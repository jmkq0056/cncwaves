package com.stripe.jvmcore.logging.terminal.log;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: TraceManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00152\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\t\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\tR\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "", "()V", "_serialNumber", "", "_traceId", "", "serialNumber", "getSerialNumber", "()Ljava/lang/String;", "sessionId", "getSessionId", "setSessionId", "(Ljava/lang/String;)V", "<set-?>", "terminalActionId", "getTerminalActionId", "traceId", "getTraceId", "setTraceId", "endAction", "", "endSession", "newSessionId", "nextTraceId", "startAction", "startSession", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TraceManager {
    private String _serialNumber;
    private String sessionId;
    private String terminalActionId;
    private long _traceId = newSessionId();
    private String traceId = nextTraceId();

    public final String getSessionId() {
        return this.sessionId;
    }

    public final void setSessionId(String str) {
        this.sessionId = str;
    }

    /* JADX INFO: renamed from: getSerialNumber, reason: from getter */
    public final String get_serialNumber() {
        return this._serialNumber;
    }

    public final String getTraceId() {
        return this.traceId;
    }

    public final void setTraceId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.traceId = str;
    }

    public final String getTerminalActionId() {
        return this.terminalActionId;
    }

    public final String nextTraceId() {
        long j = this._traceId + 1;
        this._traceId = j;
        String strValueOf = String.valueOf(j);
        this.traceId = strValueOf;
        return strValueOf;
    }

    public final void startSession(String serialNumber) {
        this._serialNumber = serialNumber;
        this.sessionId = String.valueOf(newSessionId());
    }

    public final void endSession() {
        this._serialNumber = null;
        this.sessionId = null;
    }

    public final void startAction(String terminalActionId) {
        Intrinsics.checkNotNullParameter(terminalActionId, "terminalActionId");
        this.terminalActionId = terminalActionId;
    }

    public final void endAction() {
        this.terminalActionId = null;
    }

    private final long newSessionId() {
        return (long) Math.floor(Random.INSTANCE.nextDouble() * ((double) 100000000));
    }
}
