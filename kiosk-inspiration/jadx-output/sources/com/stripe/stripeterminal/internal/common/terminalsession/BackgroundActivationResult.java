package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BackgroundReaderActivator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", "", "ActivationCanceled", "ActivationCompleted", "ActivationFailed", "CannotBeAttempted", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCanceled;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface BackgroundActivationResult {

    /* JADX INFO: compiled from: BackgroundReaderActivator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCanceled;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", "()V", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ActivationCanceled implements BackgroundActivationResult {
        public static final ActivationCanceled INSTANCE = new ActivationCanceled();

        private ActivationCanceled() {
        }
    }

    /* JADX INFO: compiled from: BackgroundReaderActivator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", "()V", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CannotBeAttempted implements BackgroundActivationResult {
        public static final CannotBeAttempted INSTANCE = new CannotBeAttempted();

        private CannotBeAttempted() {
        }
    }

    /* JADX INFO: compiled from: BackgroundReaderActivator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", "()V", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ActivationCompleted implements BackgroundActivationResult {
        public static final ActivationCompleted INSTANCE = new ActivationCompleted();

        private ActivationCompleted() {
        }
    }

    /* JADX INFO: compiled from: BackgroundReaderActivator.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;", "exception", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ActivationFailed implements BackgroundActivationResult {
        private final TerminalException exception;

        public static /* synthetic */ ActivationFailed copy$default(ActivationFailed activationFailed, TerminalException terminalException, int i, Object obj) {
            if ((i & 1) != 0) {
                terminalException = activationFailed.exception;
            }
            return activationFailed.copy(terminalException);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TerminalException getException() {
            return this.exception;
        }

        public final ActivationFailed copy(TerminalException exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            return new ActivationFailed(exception);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ActivationFailed) && Intrinsics.areEqual(this.exception, ((ActivationFailed) other).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "ActivationFailed(exception=" + this.exception + ')';
        }

        public ActivationFailed(TerminalException exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        public final TerminalException getException() {
            return this.exception;
        }
    }
}
