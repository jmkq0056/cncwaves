package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/stripe/paymentcollection/EmvSecondGenACResponse;", "Lcom/stripe/paymentcollection/SecondGenACResponse;", "isApproved", "", "tlv", "", "(ZLjava/lang/String;)V", "()Z", "getTlv$annotations", "()V", "getTlv", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EmvSecondGenACResponse extends SecondGenACResponse {
    private final boolean isApproved;
    private final String tlv;

    public static /* synthetic */ EmvSecondGenACResponse copy$default(EmvSecondGenACResponse emvSecondGenACResponse, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = emvSecondGenACResponse.isApproved;
        }
        if ((i & 2) != 0) {
            str = emvSecondGenACResponse.tlv;
        }
        return emvSecondGenACResponse.copy(z, str);
    }

    public static /* synthetic */ void getTlv$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsApproved() {
        return this.isApproved;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTlv() {
        return this.tlv;
    }

    public final EmvSecondGenACResponse copy(boolean isApproved, String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        return new EmvSecondGenACResponse(isApproved, tlv);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EmvSecondGenACResponse)) {
            return false;
        }
        EmvSecondGenACResponse emvSecondGenACResponse = (EmvSecondGenACResponse) other;
        return this.isApproved == emvSecondGenACResponse.isApproved && Intrinsics.areEqual(this.tlv, emvSecondGenACResponse.tlv);
    }

    public int hashCode() {
        return (Boolean.hashCode(this.isApproved) * 31) + this.tlv.hashCode();
    }

    public String toString() {
        return "EmvSecondGenACResponse(isApproved=" + this.isApproved + ", tlv=██)";
    }

    public final boolean isApproved() {
        return this.isApproved;
    }

    public final String getTlv() {
        return this.tlv;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmvSecondGenACResponse(boolean z, String tlv) {
        super(null);
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.isApproved = z;
        this.tlv = tlv;
    }
}
