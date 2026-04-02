package com.stripe.paymentcollection;

import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/SendFinalConfirmEvent;", "Lcom/stripe/paymentcollection/HardwareEvent;", "confirm", "", "(Z)V", "getConfirm", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SendFinalConfirmEvent extends HardwareEvent {
    private final boolean confirm;

    public static /* synthetic */ SendFinalConfirmEvent copy$default(SendFinalConfirmEvent sendFinalConfirmEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = sendFinalConfirmEvent.confirm;
        }
        return sendFinalConfirmEvent.copy(z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getConfirm() {
        return this.confirm;
    }

    public final SendFinalConfirmEvent copy(boolean confirm) {
        return new SendFinalConfirmEvent(confirm);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SendFinalConfirmEvent) && this.confirm == ((SendFinalConfirmEvent) other).confirm;
    }

    public int hashCode() {
        return Boolean.hashCode(this.confirm);
    }

    public String toString() {
        return "SendFinalConfirmEvent(confirm=" + this.confirm + ')';
    }

    public SendFinalConfirmEvent(boolean z) {
        super(null);
        this.confirm = z;
    }

    public final boolean getConfirm() {
        return this.confirm;
    }
}
