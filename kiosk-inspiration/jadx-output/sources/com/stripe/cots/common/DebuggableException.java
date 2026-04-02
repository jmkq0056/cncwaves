package com.stripe.cots.common;

import kotlin.Metadata;

/* JADX INFO: compiled from: CotsException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/cots/common/DebuggableException;", "Lcom/stripe/cots/common/CotsException;", "()V", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DebuggableException extends CotsException {
    public DebuggableException() {
        super(CotsError.DISCOVERY_DEBUG_NOT_ALLOWED.getMessage(), null, null);
    }
}
