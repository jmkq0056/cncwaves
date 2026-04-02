package com.stripe.stripeterminal.internal.common.callbacks;

import kotlin.Metadata;

/* JADX INFO: compiled from: CallbackResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0003\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackSuccess;", "T", "Lcom/stripe/stripeterminal/internal/common/callbacks/CallbackResult;", "result", "(Ljava/lang/Object;)V", "getResult", "()Ljava/lang/Object;", "Ljava/lang/Object;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CallbackSuccess<T> extends CallbackResult<T> {
    private final T result;

    public final T getResult() {
        return this.result;
    }

    public CallbackSuccess(T t) {
        super(null);
        this.result = t;
    }
}
