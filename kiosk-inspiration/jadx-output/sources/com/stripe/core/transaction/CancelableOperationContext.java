package com.stripe.core.transaction;

import com.stripe.stripeterminal.external.callable.Cancelable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CancelableOperationContext.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0006\u0010\u0015\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/core/transaction/CancelableOperationContext;", "", "cancelableOperation", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "cancelableOperationType", "Lcom/stripe/core/transaction/CancelableOperationType;", "(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V", "getCancelableOperation", "()Lcom/stripe/stripeterminal/external/callable/Cancelable;", "getCancelableOperationType", "()Lcom/stripe/core/transaction/CancelableOperationType;", "currentlyCancelable", "Ljava/util/concurrent/atomic/AtomicBoolean;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "isCurrentlyCancelable", "setCurrentlyCancelable", "", "cancelable", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CancelableOperationContext {
    private final Cancelable cancelableOperation;
    private final CancelableOperationType cancelableOperationType;
    private final AtomicBoolean currentlyCancelable;

    public static /* synthetic */ CancelableOperationContext copy$default(CancelableOperationContext cancelableOperationContext, Cancelable cancelable, CancelableOperationType cancelableOperationType, int i, Object obj) {
        if ((i & 1) != 0) {
            cancelable = cancelableOperationContext.cancelableOperation;
        }
        if ((i & 2) != 0) {
            cancelableOperationType = cancelableOperationContext.cancelableOperationType;
        }
        return cancelableOperationContext.copy(cancelable, cancelableOperationType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Cancelable getCancelableOperation() {
        return this.cancelableOperation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CancelableOperationType getCancelableOperationType() {
        return this.cancelableOperationType;
    }

    public final CancelableOperationContext copy(Cancelable cancelableOperation, CancelableOperationType cancelableOperationType) {
        Intrinsics.checkNotNullParameter(cancelableOperation, "cancelableOperation");
        Intrinsics.checkNotNullParameter(cancelableOperationType, "cancelableOperationType");
        return new CancelableOperationContext(cancelableOperation, cancelableOperationType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CancelableOperationContext)) {
            return false;
        }
        CancelableOperationContext cancelableOperationContext = (CancelableOperationContext) other;
        return Intrinsics.areEqual(this.cancelableOperation, cancelableOperationContext.cancelableOperation) && Intrinsics.areEqual(this.cancelableOperationType, cancelableOperationContext.cancelableOperationType);
    }

    public int hashCode() {
        return (this.cancelableOperation.hashCode() * 31) + this.cancelableOperationType.hashCode();
    }

    public String toString() {
        return "CancelableOperationContext(cancelableOperation=" + this.cancelableOperation + ", cancelableOperationType=" + this.cancelableOperationType + ')';
    }

    public CancelableOperationContext(Cancelable cancelableOperation, CancelableOperationType cancelableOperationType) {
        Intrinsics.checkNotNullParameter(cancelableOperation, "cancelableOperation");
        Intrinsics.checkNotNullParameter(cancelableOperationType, "cancelableOperationType");
        this.cancelableOperation = cancelableOperation;
        this.cancelableOperationType = cancelableOperationType;
        this.currentlyCancelable = new AtomicBoolean(true);
    }

    public final Cancelable getCancelableOperation() {
        return this.cancelableOperation;
    }

    public final CancelableOperationType getCancelableOperationType() {
        return this.cancelableOperationType;
    }

    public final boolean isCurrentlyCancelable() {
        return this.currentlyCancelable.get();
    }

    public final void setCurrentlyCancelable(boolean cancelable) {
        this.currentlyCancelable.set(cancelable);
    }
}
