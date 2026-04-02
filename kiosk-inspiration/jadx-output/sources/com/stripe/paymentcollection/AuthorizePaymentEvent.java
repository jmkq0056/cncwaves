package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/AuthorizePaymentEvent;", "Lcom/stripe/paymentcollection/HardwareEvent;", "tlv", "", "(Ljava/lang/String;)V", "getTlv$annotations", "()V", "getTlv", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AuthorizePaymentEvent extends HardwareEvent {
    private final String tlv;

    public static /* synthetic */ AuthorizePaymentEvent copy$default(AuthorizePaymentEvent authorizePaymentEvent, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authorizePaymentEvent.tlv;
        }
        return authorizePaymentEvent.copy(str);
    }

    public static /* synthetic */ void getTlv$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTlv() {
        return this.tlv;
    }

    public final AuthorizePaymentEvent copy(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        return new AuthorizePaymentEvent(tlv);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AuthorizePaymentEvent) && Intrinsics.areEqual(this.tlv, ((AuthorizePaymentEvent) other).tlv);
    }

    public int hashCode() {
        return this.tlv.hashCode();
    }

    public String toString() {
        return "AuthorizePaymentEvent(tlv=██)";
    }

    public final String getTlv() {
        return this.tlv;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthorizePaymentEvent(String tlv) {
        super(null);
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.tlv = tlv;
    }
}
