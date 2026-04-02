package com.stripe.paymentcollection;

import com.stripe.hardware.emv.InterfaceType;
import com.stripe.paymentcollection.TippingState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/NetworkEvent;", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "tlv", "", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "(Lcom/stripe/hardware/emv/InterfaceType;Ljava/lang/String;Lcom/stripe/paymentcollection/TippingState$EndState;)V", "getInterfaceType", "()Lcom/stripe/hardware/emv/InterfaceType;", "getTipResult", "()Lcom/stripe/paymentcollection/TippingState$EndState;", "getTlv$annotations", "()V", "getTlv", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OnlineAuthorizationRequestEvent extends NetworkEvent {
    private final InterfaceType interfaceType;
    private final TippingState.EndState tipResult;
    private final String tlv;

    public static /* synthetic */ OnlineAuthorizationRequestEvent copy$default(OnlineAuthorizationRequestEvent onlineAuthorizationRequestEvent, InterfaceType interfaceType, String str, TippingState.EndState endState, int i, Object obj) {
        if ((i & 1) != 0) {
            interfaceType = onlineAuthorizationRequestEvent.interfaceType;
        }
        if ((i & 2) != 0) {
            str = onlineAuthorizationRequestEvent.tlv;
        }
        if ((i & 4) != 0) {
            endState = onlineAuthorizationRequestEvent.tipResult;
        }
        return onlineAuthorizationRequestEvent.copy(interfaceType, str, endState);
    }

    public static /* synthetic */ void getTlv$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTlv() {
        return this.tlv;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    public final OnlineAuthorizationRequestEvent copy(InterfaceType interfaceType, String tlv, TippingState.EndState tipResult) {
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        return new OnlineAuthorizationRequestEvent(interfaceType, tlv, tipResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnlineAuthorizationRequestEvent)) {
            return false;
        }
        OnlineAuthorizationRequestEvent onlineAuthorizationRequestEvent = (OnlineAuthorizationRequestEvent) other;
        return this.interfaceType == onlineAuthorizationRequestEvent.interfaceType && Intrinsics.areEqual(this.tlv, onlineAuthorizationRequestEvent.tlv) && Intrinsics.areEqual(this.tipResult, onlineAuthorizationRequestEvent.tipResult);
    }

    public int hashCode() {
        return (((this.interfaceType.hashCode() * 31) + this.tlv.hashCode()) * 31) + this.tipResult.hashCode();
    }

    public String toString() {
        return "OnlineAuthorizationRequestEvent(interfaceType=" + this.interfaceType + ", tlv=██, tipResult=" + this.tipResult + ')';
    }

    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    public final String getTlv() {
        return this.tlv;
    }

    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineAuthorizationRequestEvent(InterfaceType interfaceType, String tlv, TippingState.EndState tipResult) {
        super(null);
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        this.interfaceType = interfaceType;
        this.tlv = tlv;
        this.tipResult = tipResult;
    }
}
