package com.stripe.transaction;

import kotlin.Metadata;

/* JADX INFO: compiled from: ChargeAttemptManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/transaction/ChargeAttemptManager;", "", "()V", "attempt", "Lcom/stripe/transaction/ChargeAttempt;", "chargeAttempt", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "setChargeAttempt", "(Lcom/stripe/transaction/ChargeAttempt;)V", "chargeAttemptListener", "Lcom/stripe/transaction/ChargeAttemptChangeListener;", "getChargeAttemptListener", "()Lcom/stripe/transaction/ChargeAttemptChangeListener;", "setChargeAttemptListener", "(Lcom/stripe/transaction/ChargeAttemptChangeListener;)V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ChargeAttemptManager {
    private ChargeAttempt chargeAttempt;
    private ChargeAttemptChangeListener chargeAttemptListener;

    public final ChargeAttemptChangeListener getChargeAttemptListener() {
        return this.chargeAttemptListener;
    }

    public final void setChargeAttemptListener(ChargeAttemptChangeListener chargeAttemptChangeListener) {
        this.chargeAttemptListener = chargeAttemptChangeListener;
    }

    public final ChargeAttempt getChargeAttempt() {
        return this.chargeAttempt;
    }

    public final void setChargeAttempt(ChargeAttempt chargeAttempt) {
        this.chargeAttempt = chargeAttempt;
        ChargeAttemptChangeListener chargeAttemptChangeListener = this.chargeAttemptListener;
        if (chargeAttemptChangeListener != null) {
            chargeAttemptChangeListener.onChargeAttemptChanged(chargeAttempt);
        }
    }
}
