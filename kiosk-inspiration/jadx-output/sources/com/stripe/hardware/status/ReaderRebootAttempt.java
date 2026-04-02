package com.stripe.hardware.status;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderRebootAttempt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/hardware/status/ReaderRebootAttempt;", "", FirebaseAnalytics.Param.SUCCESS, "", "cause", "Lcom/stripe/hardware/status/RebootCause;", "(ZLcom/stripe/hardware/status/RebootCause;)V", "getCause", "()Lcom/stripe/hardware/status/RebootCause;", "getSuccess", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderRebootAttempt {
    private final RebootCause cause;
    private final boolean success;

    public static /* synthetic */ ReaderRebootAttempt copy$default(ReaderRebootAttempt readerRebootAttempt, boolean z, RebootCause rebootCause, int i, Object obj) {
        if ((i & 1) != 0) {
            z = readerRebootAttempt.success;
        }
        if ((i & 2) != 0) {
            rebootCause = readerRebootAttempt.cause;
        }
        return readerRebootAttempt.copy(z, rebootCause);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final RebootCause getCause() {
        return this.cause;
    }

    public final ReaderRebootAttempt copy(boolean success, RebootCause cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        return new ReaderRebootAttempt(success, cause);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderRebootAttempt)) {
            return false;
        }
        ReaderRebootAttempt readerRebootAttempt = (ReaderRebootAttempt) other;
        return this.success == readerRebootAttempt.success && this.cause == readerRebootAttempt.cause;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.success) * 31) + this.cause.hashCode();
    }

    public String toString() {
        return "ReaderRebootAttempt(success=" + this.success + ", cause=" + this.cause + ')';
    }

    public ReaderRebootAttempt(boolean z, RebootCause cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.success = z;
        this.cause = cause;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final RebootCause getCause() {
        return this.cause;
    }
}
