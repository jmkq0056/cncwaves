package com.stripe.paymentcollection;

import com.stripe.hardware.emv.InterfaceType;
import com.stripe.paymentcollection.TippingState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/stripe/paymentcollection/EmvResult;", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", "emvBlob", "", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)V", "getEmvBlob$annotations", "()V", "getEmvBlob", "()Ljava/lang/String;", "getInterfaceType", "()Lcom/stripe/hardware/emv/InterfaceType;", "getTipResult", "()Lcom/stripe/paymentcollection/TippingState$EndState;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EmvResult extends PaymentCollectionResult {
    private final String emvBlob;
    private final InterfaceType interfaceType;
    private final TippingState.EndState tipResult;

    public static /* synthetic */ EmvResult copy$default(EmvResult emvResult, String str, InterfaceType interfaceType, TippingState.EndState endState, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emvResult.emvBlob;
        }
        if ((i & 2) != 0) {
            interfaceType = emvResult.interfaceType;
        }
        if ((i & 4) != 0) {
            endState = emvResult.tipResult;
        }
        return emvResult.copy(str, interfaceType, endState);
    }

    public static /* synthetic */ void getEmvBlob$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEmvBlob() {
        return this.emvBlob;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    public final EmvResult copy(String emvBlob, InterfaceType interfaceType, TippingState.EndState tipResult) {
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        return new EmvResult(emvBlob, interfaceType, tipResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EmvResult)) {
            return false;
        }
        EmvResult emvResult = (EmvResult) other;
        return Intrinsics.areEqual(this.emvBlob, emvResult.emvBlob) && this.interfaceType == emvResult.interfaceType && Intrinsics.areEqual(this.tipResult, emvResult.tipResult);
    }

    public int hashCode() {
        return (((this.emvBlob.hashCode() * 31) + this.interfaceType.hashCode()) * 31) + this.tipResult.hashCode();
    }

    public String toString() {
        return "EmvResult(emvBlob=██, interfaceType=" + this.interfaceType + ", tipResult=" + this.tipResult + ')';
    }

    public final String getEmvBlob() {
        return this.emvBlob;
    }

    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmvResult(String emvBlob, InterfaceType interfaceType, TippingState.EndState tipResult) {
        super(null);
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        this.emvBlob = emvBlob;
        this.interfaceType = interfaceType;
        this.tipResult = tipResult;
    }
}
