package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MandateParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/MandateParameters;", "", "customerAcceptance", "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;", "(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;)V", "getCustomerAcceptance", "()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MandateParameters {
    private final CustomerAcceptanceParameters customerAcceptance;

    public static /* synthetic */ MandateParameters copy$default(MandateParameters mandateParameters, CustomerAcceptanceParameters customerAcceptanceParameters, int i, Object obj) {
        if ((i & 1) != 0) {
            customerAcceptanceParameters = mandateParameters.customerAcceptance;
        }
        return mandateParameters.copy(customerAcceptanceParameters);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CustomerAcceptanceParameters getCustomerAcceptance() {
        return this.customerAcceptance;
    }

    public final MandateParameters copy(CustomerAcceptanceParameters customerAcceptance) {
        Intrinsics.checkNotNullParameter(customerAcceptance, "customerAcceptance");
        return new MandateParameters(customerAcceptance);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MandateParameters) && Intrinsics.areEqual(this.customerAcceptance, ((MandateParameters) other).customerAcceptance);
    }

    public int hashCode() {
        return this.customerAcceptance.hashCode();
    }

    public String toString() {
        return "MandateParameters(customerAcceptance=" + this.customerAcceptance + ')';
    }

    public MandateParameters(CustomerAcceptanceParameters customerAcceptance) {
        Intrinsics.checkNotNullParameter(customerAcceptance, "customerAcceptance");
        this.customerAcceptance = customerAcceptance;
    }

    public final CustomerAcceptanceParameters getCustomerAcceptance() {
        return this.customerAcceptance;
    }
}
