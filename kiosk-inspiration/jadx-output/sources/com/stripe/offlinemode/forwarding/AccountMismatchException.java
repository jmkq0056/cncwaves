package com.stripe.offlinemode.forwarding;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccountMismatchException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/stripe/offlinemode/forwarding/AccountMismatchException;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "message", "", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AccountMismatchException extends IllegalStateException {
    private final String message;

    /* JADX WARN: Multi-variable type inference failed */
    public AccountMismatchException() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ AccountMismatchException copy$default(AccountMismatchException accountMismatchException, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = accountMismatchException.message;
        }
        return accountMismatchException.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final AccountMismatchException copy(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new AccountMismatchException(message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AccountMismatchException) && Intrinsics.areEqual(this.message, ((AccountMismatchException) other).message);
    }

    public int hashCode() {
        return this.message.hashCode();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "AccountMismatchException(message=" + this.message + ')';
    }

    public /* synthetic */ AccountMismatchException(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "The redeemed token account and the forwarding account do not match" : str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public AccountMismatchException(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }
}
