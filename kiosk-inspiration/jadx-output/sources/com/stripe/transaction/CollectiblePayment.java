package com.stripe.transaction;

import com.stripe.hardware.emv.InterfaceType;
import com.stripe.transaction.payment.Payment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectiblePayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/stripe/transaction/CollectiblePayment;", "", "payment", "Lcom/stripe/transaction/payment/Payment;", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "transactionSupportsSca", "", "(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V", "getInterfaceType", "()Lcom/stripe/hardware/emv/InterfaceType;", "getPayment", "()Lcom/stripe/transaction/payment/Payment;", "getTransactionSupportsSca", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CollectiblePayment {
    private final InterfaceType interfaceType;
    private final Payment payment;
    private final boolean transactionSupportsSca;

    public CollectiblePayment() {
        this(null, null, false, 7, null);
    }

    public static /* synthetic */ CollectiblePayment copy$default(CollectiblePayment collectiblePayment, Payment payment, InterfaceType interfaceType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            payment = collectiblePayment.payment;
        }
        if ((i & 2) != 0) {
            interfaceType = collectiblePayment.interfaceType;
        }
        if ((i & 4) != 0) {
            z = collectiblePayment.transactionSupportsSca;
        }
        return collectiblePayment.copy(payment, interfaceType, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Payment getPayment() {
        return this.payment;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getTransactionSupportsSca() {
        return this.transactionSupportsSca;
    }

    public final CollectiblePayment copy(Payment payment, InterfaceType interfaceType, boolean transactionSupportsSca) {
        return new CollectiblePayment(payment, interfaceType, transactionSupportsSca);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectiblePayment)) {
            return false;
        }
        CollectiblePayment collectiblePayment = (CollectiblePayment) other;
        return Intrinsics.areEqual(this.payment, collectiblePayment.payment) && this.interfaceType == collectiblePayment.interfaceType && this.transactionSupportsSca == collectiblePayment.transactionSupportsSca;
    }

    public int hashCode() {
        Payment payment = this.payment;
        int iHashCode = (payment == null ? 0 : payment.hashCode()) * 31;
        InterfaceType interfaceType = this.interfaceType;
        return ((iHashCode + (interfaceType != null ? interfaceType.hashCode() : 0)) * 31) + Boolean.hashCode(this.transactionSupportsSca);
    }

    public String toString() {
        return "CollectiblePayment(payment=" + this.payment + ", interfaceType=" + this.interfaceType + ", transactionSupportsSca=" + this.transactionSupportsSca + ')';
    }

    public CollectiblePayment(Payment payment, InterfaceType interfaceType, boolean z) {
        this.payment = payment;
        this.interfaceType = interfaceType;
        this.transactionSupportsSca = z;
    }

    public /* synthetic */ CollectiblePayment(Payment payment, InterfaceType interfaceType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : payment, (i & 2) != 0 ? null : interfaceType, (i & 4) != 0 ? false : z);
    }

    public final Payment getPayment() {
        return this.payment;
    }

    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    public final boolean getTransactionSupportsSca() {
        return this.transactionSupportsSca;
    }
}
