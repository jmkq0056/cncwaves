package com.stripe.offlinemode.forwarding;

import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ForwardingApiException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J1\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/offlinemode/forwarding/ForwardingApiException;", "", "terminalException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "isTransient", "", "isCredentialError", "isMalformedRequestError", "(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V", "()Z", "getTerminalException", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ForwardingApiException extends Throwable {
    private final boolean isCredentialError;
    private final boolean isMalformedRequestError;
    private final boolean isTransient;
    private final TerminalException terminalException;

    public static /* synthetic */ ForwardingApiException copy$default(ForwardingApiException forwardingApiException, TerminalException terminalException, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            terminalException = forwardingApiException.terminalException;
        }
        if ((i & 2) != 0) {
            z = forwardingApiException.isTransient;
        }
        if ((i & 4) != 0) {
            z2 = forwardingApiException.isCredentialError;
        }
        if ((i & 8) != 0) {
            z3 = forwardingApiException.isMalformedRequestError;
        }
        return forwardingApiException.copy(terminalException, z, z2, z3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TerminalException getTerminalException() {
        return this.terminalException;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsTransient() {
        return this.isTransient;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsCredentialError() {
        return this.isCredentialError;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsMalformedRequestError() {
        return this.isMalformedRequestError;
    }

    public final ForwardingApiException copy(TerminalException terminalException, boolean isTransient, boolean isCredentialError, boolean isMalformedRequestError) {
        Intrinsics.checkNotNullParameter(terminalException, "terminalException");
        return new ForwardingApiException(terminalException, isTransient, isCredentialError, isMalformedRequestError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ForwardingApiException)) {
            return false;
        }
        ForwardingApiException forwardingApiException = (ForwardingApiException) other;
        return Intrinsics.areEqual(this.terminalException, forwardingApiException.terminalException) && this.isTransient == forwardingApiException.isTransient && this.isCredentialError == forwardingApiException.isCredentialError && this.isMalformedRequestError == forwardingApiException.isMalformedRequestError;
    }

    public int hashCode() {
        return (((((this.terminalException.hashCode() * 31) + Boolean.hashCode(this.isTransient)) * 31) + Boolean.hashCode(this.isCredentialError)) * 31) + Boolean.hashCode(this.isMalformedRequestError);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "ForwardingApiException(terminalException=" + this.terminalException + ", isTransient=" + this.isTransient + ", isCredentialError=" + this.isCredentialError + ", isMalformedRequestError=" + this.isMalformedRequestError + ')';
    }

    public final TerminalException getTerminalException() {
        return this.terminalException;
    }

    public final boolean isTransient() {
        return this.isTransient;
    }

    public final boolean isCredentialError() {
        return this.isCredentialError;
    }

    public final boolean isMalformedRequestError() {
        return this.isMalformedRequestError;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardingApiException(TerminalException terminalException, boolean z, boolean z2, boolean z3) {
        super(terminalException);
        Intrinsics.checkNotNullParameter(terminalException, "terminalException");
        this.terminalException = terminalException;
        this.isTransient = z;
        this.isCredentialError = z2;
        this.isMalformedRequestError = z3;
    }
}
