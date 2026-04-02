package com.stripe.core.aidlrpc;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AidlRpcException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlRpcException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;", "message", "", "cause", "", "(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V", "getErrorCode", "()Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AidlRpcException extends Exception {
    private final AidlRpcErrorCode errorCode;

    public /* synthetic */ AidlRpcException(AidlRpcErrorCode aidlRpcErrorCode, String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aidlRpcErrorCode, str, (i & 4) != 0 ? null : th);
    }

    public final AidlRpcErrorCode getErrorCode() {
        return this.errorCode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AidlRpcException(AidlRpcErrorCode errorCode, String message, Throwable th) {
        super(message, th);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(message, "message");
        this.errorCode = errorCode;
    }
}
