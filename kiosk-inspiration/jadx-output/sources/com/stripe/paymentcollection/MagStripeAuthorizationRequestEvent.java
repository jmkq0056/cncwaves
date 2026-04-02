package com.stripe.paymentcollection;

import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.paymentcollection.TippingState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/NetworkEvent;", "readResult", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "collectionAuthority", "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V", "getCollectionAuthority", "()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "getReadResult", "()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "getTipResult", "()Lcom/stripe/paymentcollection/TippingState$EndState;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MagStripeAuthorizationRequestEvent extends NetworkEvent {
    private final MagStripePaymentCollectionAuthority collectionAuthority;
    private final MagStripeReadSuccess readResult;
    private final TippingState.EndState tipResult;

    public static /* synthetic */ MagStripeAuthorizationRequestEvent copy$default(MagStripeAuthorizationRequestEvent magStripeAuthorizationRequestEvent, MagStripeReadSuccess magStripeReadSuccess, MagStripePaymentCollectionAuthority magStripePaymentCollectionAuthority, TippingState.EndState endState, int i, Object obj) {
        if ((i & 1) != 0) {
            magStripeReadSuccess = magStripeAuthorizationRequestEvent.readResult;
        }
        if ((i & 2) != 0) {
            magStripePaymentCollectionAuthority = magStripeAuthorizationRequestEvent.collectionAuthority;
        }
        if ((i & 4) != 0) {
            endState = magStripeAuthorizationRequestEvent.tipResult;
        }
        return magStripeAuthorizationRequestEvent.copy(magStripeReadSuccess, magStripePaymentCollectionAuthority, endState);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MagStripeReadSuccess getReadResult() {
        return this.readResult;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MagStripePaymentCollectionAuthority getCollectionAuthority() {
        return this.collectionAuthority;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    public final MagStripeAuthorizationRequestEvent copy(MagStripeReadSuccess readResult, MagStripePaymentCollectionAuthority collectionAuthority, TippingState.EndState tipResult) {
        Intrinsics.checkNotNullParameter(readResult, "readResult");
        Intrinsics.checkNotNullParameter(collectionAuthority, "collectionAuthority");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        return new MagStripeAuthorizationRequestEvent(readResult, collectionAuthority, tipResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MagStripeAuthorizationRequestEvent)) {
            return false;
        }
        MagStripeAuthorizationRequestEvent magStripeAuthorizationRequestEvent = (MagStripeAuthorizationRequestEvent) other;
        return Intrinsics.areEqual(this.readResult, magStripeAuthorizationRequestEvent.readResult) && this.collectionAuthority == magStripeAuthorizationRequestEvent.collectionAuthority && Intrinsics.areEqual(this.tipResult, magStripeAuthorizationRequestEvent.tipResult);
    }

    public int hashCode() {
        return (((this.readResult.hashCode() * 31) + this.collectionAuthority.hashCode()) * 31) + this.tipResult.hashCode();
    }

    public String toString() {
        return "MagStripeAuthorizationRequestEvent(readResult=" + this.readResult + ", collectionAuthority=" + this.collectionAuthority + ", tipResult=" + this.tipResult + ')';
    }

    public final MagStripeReadSuccess getReadResult() {
        return this.readResult;
    }

    public final MagStripePaymentCollectionAuthority getCollectionAuthority() {
        return this.collectionAuthority;
    }

    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagStripeAuthorizationRequestEvent(MagStripeReadSuccess readResult, MagStripePaymentCollectionAuthority collectionAuthority, TippingState.EndState tipResult) {
        super(null);
        Intrinsics.checkNotNullParameter(readResult, "readResult");
        Intrinsics.checkNotNullParameter(collectionAuthority, "collectionAuthority");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        this.readResult = readResult;
        this.collectionAuthority = collectionAuthority;
        this.tipResult = tipResult;
    }
}
