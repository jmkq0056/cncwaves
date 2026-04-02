package com.stripe.jvmcore.logging.terminal.helpers;

import com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultApplicationTraceHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0005\u001a\u00020\u0002X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "()V", "flushTrace", "getFlushTrace", "()Lcom/stripe/loggingmodels/ApplicationTrace;", "flushTraceResult", "getFlushTraceResult", "()Lcom/stripe/loggingmodels/ApplicationTraceResult;", "interruptedTraceResult", "getInterruptedTraceResult", "duplicateTraceResult", OfflineStorageConstantsKt.ID, "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultApplicationTraceHelper implements LoggerHelper<ApplicationTrace, ApplicationTraceResult> {
    private final ApplicationTraceResult flushTraceResult = ApplicationTraceResult.INSTANCE.success();
    private final ApplicationTrace flushTrace = ApplicationTrace.INSTANCE.flush();
    private final ApplicationTraceResult interruptedTraceResult = ApplicationTraceResult.INSTANCE.interrupted();

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult duplicateTraceResult(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return ApplicationTraceResult.INSTANCE.failure("Started new " + id + " operation without ending old one");
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult getFlushTraceResult() {
        return this.flushTraceResult;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTrace getFlushTrace() {
        return this.flushTrace;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LoggerHelper
    public ApplicationTraceResult getInterruptedTraceResult() {
        return this.interruptedTraceResult;
    }
}
