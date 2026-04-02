package com.stripe.kmpcore.jackrabbitclient.models;

import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpTerminalException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00060\u0001j\u0002`\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "errorMessage", "", "cause", "", "(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "getErrorCode", "()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "getErrorMessage", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class KmpTerminalException extends Exception {
    private final Throwable cause;
    private final TerminalErrorCode errorCode;
    private final String errorMessage;

    public static /* synthetic */ KmpTerminalException copy$default(KmpTerminalException kmpTerminalException, TerminalErrorCode terminalErrorCode, String str, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            terminalErrorCode = kmpTerminalException.errorCode;
        }
        if ((i & 2) != 0) {
            str = kmpTerminalException.errorMessage;
        }
        if ((i & 4) != 0) {
            th = kmpTerminalException.cause;
        }
        return kmpTerminalException.copy(terminalErrorCode, str, th);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TerminalErrorCode getErrorCode() {
        return this.errorCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Throwable getCause() {
        return this.cause;
    }

    public final KmpTerminalException copy(TerminalErrorCode errorCode, String errorMessage, Throwable cause) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        return new KmpTerminalException(errorCode, errorMessage, cause);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KmpTerminalException)) {
            return false;
        }
        KmpTerminalException kmpTerminalException = (KmpTerminalException) other;
        return this.errorCode == kmpTerminalException.errorCode && Intrinsics.areEqual(this.errorMessage, kmpTerminalException.errorMessage) && Intrinsics.areEqual(this.cause, kmpTerminalException.cause);
    }

    public int hashCode() {
        int iHashCode = ((this.errorCode.hashCode() * 31) + this.errorMessage.hashCode()) * 31;
        Throwable th = this.cause;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "KmpTerminalException(errorCode=" + this.errorCode + ", errorMessage=" + this.errorMessage + ", cause=" + this.cause + ')';
    }

    public /* synthetic */ KmpTerminalException(TerminalErrorCode terminalErrorCode, String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(terminalErrorCode, str, (i & 4) != 0 ? null : th);
    }

    public final TerminalErrorCode getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KmpTerminalException(TerminalErrorCode errorCode, String errorMessage, Throwable th) {
        super(errorMessage, th);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.cause = th;
    }
}
