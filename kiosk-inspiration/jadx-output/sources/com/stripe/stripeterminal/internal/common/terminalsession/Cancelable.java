package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cancelable.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u00030\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u00030\u0003R\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "operation", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V", "isCompleted", "", "()Z", "cancel", "", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Cancelable implements com.stripe.stripeterminal.external.callable.Cancelable {
    private final TerminalSession.CancelableOperation<?> operation;

    public Cancelable(TerminalSession.CancelableOperation<?> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        this.operation = operation;
    }

    @Override // com.stripe.stripeterminal.external.callable.Cancelable
    public boolean isCompleted() {
        return this.operation.isCompleted();
    }

    @Override // com.stripe.stripeterminal.external.callable.Cancelable
    public void cancel(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.operation.startCancel$terminalsession_release(callback);
    }
}
