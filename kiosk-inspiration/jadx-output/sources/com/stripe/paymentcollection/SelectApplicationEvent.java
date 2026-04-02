package com.stripe.paymentcollection;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/SelectApplicationEvent;", "Lcom/stripe/paymentcollection/HardwareEvent;", FirebaseAnalytics.Param.INDEX, "", "(I)V", "getIndex", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SelectApplicationEvent extends HardwareEvent {
    private final int index;

    public static /* synthetic */ SelectApplicationEvent copy$default(SelectApplicationEvent selectApplicationEvent, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = selectApplicationEvent.index;
        }
        return selectApplicationEvent.copy(i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    public final SelectApplicationEvent copy(int index) {
        return new SelectApplicationEvent(index);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SelectApplicationEvent) && this.index == ((SelectApplicationEvent) other).index;
    }

    public int hashCode() {
        return Integer.hashCode(this.index);
    }

    public String toString() {
        return "SelectApplicationEvent(index=" + this.index + ')';
    }

    public SelectApplicationEvent(int i) {
        super(null);
        this.index = i;
    }

    public final int getIndex() {
        return this.index;
    }
}
