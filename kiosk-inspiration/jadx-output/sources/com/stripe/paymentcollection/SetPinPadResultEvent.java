package com.stripe.paymentcollection;

import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u000f"}, d2 = {"Lcom/stripe/paymentcollection/SetPinPadResultEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "isSuccess", "", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SetPinPadResultEvent extends HardwareListenerEvent {
    private final boolean isSuccess;

    public static /* synthetic */ SetPinPadResultEvent copy$default(SetPinPadResultEvent setPinPadResultEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = setPinPadResultEvent.isSuccess;
        }
        return setPinPadResultEvent.copy(z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final SetPinPadResultEvent copy(boolean isSuccess) {
        return new SetPinPadResultEvent(isSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SetPinPadResultEvent) && this.isSuccess == ((SetPinPadResultEvent) other).isSuccess;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isSuccess);
    }

    public String toString() {
        return "SetPinPadResultEvent(isSuccess=" + this.isSuccess + ')';
    }

    public SetPinPadResultEvent(boolean z) {
        super(null);
        this.isSuccess = z;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }
}
