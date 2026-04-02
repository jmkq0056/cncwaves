package com.stripe.offlinemode.log;

import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.log.OfflineTrace;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineTraceHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTraceHelper;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "()V", "flushTrace", "Lcom/stripe/offlinemode/log/OfflineTrace$Flush;", "getFlushTrace", "()Lcom/stripe/offlinemode/log/OfflineTrace$Flush;", "flushTraceResult", "getFlushTraceResult", "()Lcom/stripe/loggingmodels/ApplicationTraceResult;", "interruptedTraceResult", "getInterruptedTraceResult", "duplicateTraceResult", OfflineStorageConstantsKt.ID, "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineTraceHelper implements LoggerHelper<OfflineTrace, ApplicationTraceResult> {
    private final ApplicationTraceResult flushTraceResult = ApplicationTraceResult.INSTANCE.success();
    private final OfflineTrace.Flush flushTrace = OfflineTrace.Flush.INSTANCE;
    private final ApplicationTraceResult interruptedTraceResult = ApplicationTraceResult.INSTANCE.interrupted();

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult duplicateTraceResult(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return ApplicationTraceResult.INSTANCE.failure("Started new operation for " + id + " without ending the old one");
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult getFlushTraceResult() {
        return this.flushTraceResult;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public OfflineTrace.Flush getFlushTrace() {
        return this.flushTrace;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult getInterruptedTraceResult() {
        return this.interruptedTraceResult;
    }
}
