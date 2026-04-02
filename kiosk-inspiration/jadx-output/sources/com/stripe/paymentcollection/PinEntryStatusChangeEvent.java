package com.stripe.paymentcollection;

import androidx.core.app.NotificationCompat;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "epb", "", "epbKsn", "(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V", "getEpb$annotations", "()V", "getEpb", "()Ljava/lang/String;", "getEpbKsn$annotations", "getEpbKsn", "getStatus", "()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PinEntryStatusChangeEvent extends HardwareListenerEvent {
    private final String epb;
    private final String epbKsn;
    private final PinEntryStatus status;

    public static /* synthetic */ PinEntryStatusChangeEvent copy$default(PinEntryStatusChangeEvent pinEntryStatusChangeEvent, PinEntryStatus pinEntryStatus, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            pinEntryStatus = pinEntryStatusChangeEvent.status;
        }
        if ((i & 2) != 0) {
            str = pinEntryStatusChangeEvent.epb;
        }
        if ((i & 4) != 0) {
            str2 = pinEntryStatusChangeEvent.epbKsn;
        }
        return pinEntryStatusChangeEvent.copy(pinEntryStatus, str, str2);
    }

    public static /* synthetic */ void getEpb$annotations() {
    }

    public static /* synthetic */ void getEpbKsn$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PinEntryStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEpb() {
        return this.epb;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEpbKsn() {
        return this.epbKsn;
    }

    public final PinEntryStatusChangeEvent copy(PinEntryStatus status, String epb, String epbKsn) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new PinEntryStatusChangeEvent(status, epb, epbKsn);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PinEntryStatusChangeEvent)) {
            return false;
        }
        PinEntryStatusChangeEvent pinEntryStatusChangeEvent = (PinEntryStatusChangeEvent) other;
        return this.status == pinEntryStatusChangeEvent.status && Intrinsics.areEqual(this.epb, pinEntryStatusChangeEvent.epb) && Intrinsics.areEqual(this.epbKsn, pinEntryStatusChangeEvent.epbKsn);
    }

    public int hashCode() {
        int iHashCode = this.status.hashCode() * 31;
        String str = this.epb;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.epbKsn;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "PinEntryStatusChangeEvent(status=" + this.status + ", epb=██, epbKsn=██)";
    }

    public final PinEntryStatus getStatus() {
        return this.status;
    }

    public final String getEpb() {
        return this.epb;
    }

    public final String getEpbKsn() {
        return this.epbKsn;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinEntryStatusChangeEvent(PinEntryStatus status, String str, String str2) {
        super(null);
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.epb = str;
        this.epbKsn = str2;
    }
}
