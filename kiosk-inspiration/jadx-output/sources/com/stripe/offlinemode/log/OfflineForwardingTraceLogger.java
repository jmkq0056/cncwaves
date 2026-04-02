package com.stripe.offlinemode.log;

import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.log.OfflineTrace;
import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineForwardingTraceLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J\b\u0010\n\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "endOperation", "", "error", "", "message", "", "endSession", "startOperation", "forwardingTrace", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;", "startSession", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineForwardingTraceLogger extends Logger<OfflineTrace, ApplicationTraceResult> {
    void endOperation(Throwable error, String message);

    void endSession();

    void startOperation(OfflineTrace.OfflineForwarding forwardingTrace);

    void startSession();

    static /* synthetic */ void endOperation$default(OfflineForwardingTraceLogger offlineForwardingTraceLogger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: endOperation");
        }
        if ((i & 1) != 0) {
            th = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        offlineForwardingTraceLogger.endOperation(th, str);
    }
}
